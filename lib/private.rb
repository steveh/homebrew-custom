require "base64"

class GitHubPrivateRepositoryReleaseDownloadStrategy < CurlDownloadStrategy
  GITHUB_RELEASE_PATTERN = %r{https://github.com/(?<owner>[^/]+)/(?<repo>[^/]+)/releases/download/(?<tag>[^/]+)/(?<filename>\S+)}

  def initialize(url, name, version, **meta)
    match = url.match(GITHUB_RELEASE_PATTERN)
    raise CurlDownloadStrategyError, "Invalid URL pattern for GitHub Release." unless match

    download_url = get_release_download_url(match[:owner], match[:repo], match[:tag], match[:filename])

    userinfo = Base64.encode64("#{Homebrew::EnvConfig.github_api_token}:")

    meta[:headers] ||= []
    meta[:headers] << "Accept: application/octet-stream"
    meta[:headers] << "Authorization: Basic #{userinfo}"

    super(download_url, name, version, **meta)
  end

  private

  def get_release_download_url(owner, repo, tag, filename)
    release_metadata = GitHub::API.open_rest(GitHub.url_to("repos", owner, repo, "releases", "tags", tag))

    asset = release_metadata["assets"].detect { |a| a["name"] == filename }
    raise CurlDownloadStrategyError, "Asset file not found." unless asset

    asset["url"]
  end
end
