# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../lib/private"
class LilregieCli < Formula
  desc "Lil Regie CLI"
  homepage "https://github.com/lilregie/cli"
  version "0.11.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lilregie/cli/releases/download/0.11.1/lilregie-cli_0.11.1_darwin_x86_64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "13a30dffdc75ff79028f5ea4143b9829cb78359485b984828674a9040fadf26e"

      def install
        bin.install "lilregie"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lilregie/cli/releases/download/0.11.1/lilregie-cli_0.11.1_darwin_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "dbda7b763b7bfbc4f78ac854f84ae05af197e9f5e5858c625dc5697bac407d29"

      def install
        bin.install "lilregie"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/lilregie/cli/releases/download/0.11.1/lilregie-cli_0.11.1_linux_x86_64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
        sha256 "2bed0a1910cff91c4a59a4d08de91b8642a5b00cedf9ac80e38dee1677a11b65"

        def install
          bin.install "lilregie"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/lilregie/cli/releases/download/0.11.1/lilregie-cli_0.11.1_linux_aarch64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
        sha256 "7bd55dd071aced77fb20b933239a63d599892583756f19c07cd133e41c161e95"

        def install
          bin.install "lilregie"
        end
      end
    end
  end
end
