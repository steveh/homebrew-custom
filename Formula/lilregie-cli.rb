# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../lib/private"
class LilregieCli < Formula
  desc "Lil Regie CLI"
  homepage "https://github.com/lilregie/cli"
  version "0.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lilregie/cli/releases/download/0.7.0/lilregie-cli_0.7.0_Darwin_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "53dd0ed213aeb4bdcb679635275880ab4dc158bbac28020368c06ff90fd127bc"

      def install
        bin.install "lilregie"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/lilregie/cli/releases/download/0.7.0/lilregie-cli_0.7.0_Darwin_x86_64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "98c3906b9cbba34a8f9554e9d0ef58cfaced1e9b1b9dece305c330b54924b5ee"

      def install
        bin.install "lilregie"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lilregie/cli/releases/download/0.7.0/lilregie-cli_0.7.0_Linux_x86_64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "6cef6b798a776351a4bc94c0d6737de694dd86f11c5d14fd4d70557e0d41cf51"

      def install
        bin.install "lilregie"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lilregie/cli/releases/download/0.7.0/lilregie-cli_0.7.0_Linux_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "c75235adb12f49807141ac75cb25ec328ee6779ef229246cdbdf93a2e0704eb9"

      def install
        bin.install "lilregie"
      end
    end
  end
end
