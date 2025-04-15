# frozen_string_literal: true

require "spec_helper"
require_relative "../lib/private"

RSpec.describe GitHubPrivateRepositoryReleaseDownloadStrategy do
  let(:url) { "https://github.com/owner/repo/releases/download/v1.0.0/file.tar.gz" }
  let(:name) { "test" }
  let(:version) { "1.0.0" }
  let(:strategy) { described_class.new(url, name, version) }

  let(:netrc_content) do
    <<~NETRC
      machine github.com
        login steveh
        password github-token-from-netrc
    NETRC
  end

  before do
    # Mock .netrc file
    allow(File).to receive(:exist?).with(File.expand_path("~/.netrc")).and_return(true)
    allow(File).to receive(:readlines).with(File.expand_path("~/.netrc")).and_return(netrc_content.lines)

    # Mock GitHub API response
    allow(GitHub).to receive(:url_to).with("repos", "owner", "repo", "releases", "tags", "v1.0.0")
      .and_return("https://api.github.com/repos/owner/repo/releases/tags/v1.0.0")
    allow(GitHub::API).to receive(:open_rest).and_return({
      "assets" => [
        { "name" => "file.tar.gz", "url" => "https://api.github.com/assets/123" }
      ]
    })
  end

  it "uses the token from .netrc" do
    expect(strategy.send(:get_github_token)).to eq("github-token-from-netrc")
  end

  it "sets the correct Authorization header" do
    expect(strategy.instance_variable_get(:@meta)[:headers]).to include(
      "Authorization: Basic #{Base64.encode64("github-token-from-netrc:")}"
    )
  end

  it "returns the correct asset URL" do
    expect(strategy.send(:get_release_download_url, "owner", "repo", "v1.0.0", "file.tar.gz"))
      .to eq("https://api.github.com/assets/123")
  end
end
