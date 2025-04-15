require "base64"

class GitHubPrivateRepositoryReleaseDownloadStrategy < CurlDownloadStrategy
  GITHUB_RELEASE_PATTERN = %r{https://github.com/(?<owner>[^/]+)/(?<repo>[^/]+)/releases/download/(?<tag>[^/]+)/(?<filename>\S+)}

  def initialize(url, name, version, **meta)
    match = url.match(GITHUB_RELEASE_PATTERN)
    raise CurlDownloadStrategyError, "Invalid URL pattern for GitHub Release." unless match

    download_url = get_release_download_url(match[:owner], match[:repo], match[:tag], match[:filename])

    token = get_github_token
    userinfo = Base64.encode64("#{token}:")

    meta[:headers] ||= []
    meta[:headers] << "Accept: application/octet-stream"
    meta[:headers] << "Authorization: Basic #{userinfo}"

    super(download_url, name, version, **meta)
  end

  private

  def get_github_token
    # Try to read from ~/.netrc first
    netrc_path = File.expand_path("~/.netrc")
    if File.exist?(netrc_path)
      begin
        current_machine = nil
        File.readlines(netrc_path).each do |line|
          line.strip!
          next if line.empty? || line.start_with?("#")

          if line.start_with?("machine ")
            current_machine = line.split(" ")[1]
          elsif current_machine == "github.com" && line.start_with?("password ")
            return line.split(" ")[1]
          end
        end
      rescue
        # If netrc parsing fails, fall back to environment variable
      end
    end

    # Fall back to environment variable
    Homebrew::EnvConfig.github_api_token
  end

  def get_release_download_url(owner, repo, tag, filename)
    release_metadata = GitHub::API.open_rest(GitHub.url_to("repos", owner, repo, "releases", "tags", tag))

    asset = release_metadata["assets"].detect { |a| a["name"] == filename }
    raise CurlDownloadStrategyError, "Asset file not found." unless asset

    asset["url"]
  end
end
