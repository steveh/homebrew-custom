# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../lib/private"
class LilregieCli < Formula
  desc "Lil Regie CLI"
  homepage "https://github.com/lilregie/cli"
  version "0.10.2"

  on_macos do
    on_intel do
      url "https://github.com/lilregie/cli/releases/download/0.10.2/lilregie-cli_0.10.2_darwin_x86_64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "5a8534dad3b3ed7a6ac938ed5ddbfbda8e6d071d9faa3c4906960d89746975d5"

      def install
        bin.install "lilregie"
      end
    end
    on_arm do
      url "https://github.com/lilregie/cli/releases/download/0.10.2/lilregie-cli_0.10.2_darwin_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "cdcd404282adedbd13b2f9a3d1f69642ae2a75739a3d05e4d1c06ee1d95b517d"

      def install
        bin.install "lilregie"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/lilregie/cli/releases/download/0.10.2/lilregie-cli_0.10.2_linux_x86_64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
        sha256 "5fe2ac9a3c2d50aa91c0a88c703140bbaf53d05b99d5219304d5f6874930e278"

        def install
          bin.install "lilregie"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/lilregie/cli/releases/download/0.10.2/lilregie-cli_0.10.2_linux_aarch64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
        sha256 "52c4920c5535e672cba1d7c23573525dcff858cd5cff22840a2eb27432f116fa"

        def install
          bin.install "lilregie"
        end
      end
    end
  end
end
