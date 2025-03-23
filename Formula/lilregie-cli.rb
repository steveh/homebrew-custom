# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../lib/private"
class LilregieCli < Formula
  desc "Lil Regie CLI"
  homepage "https://github.com/lilregie/cli"
  version "0.11.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lilregie/cli/releases/download/0.11.0/lilregie-cli_0.11.0_darwin_x86_64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "32112fe5cd5604977f75bdb0ecfc04354732bd846a519d155c20678c0f3d5b51"

      def install
        bin.install "lilregie"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lilregie/cli/releases/download/0.11.0/lilregie-cli_0.11.0_darwin_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "df6e99a3daa368ebe4dbc32fa0f0b0cc264a2f6e8afcc3e54c5638fc465bb34f"

      def install
        bin.install "lilregie"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/lilregie/cli/releases/download/0.11.0/lilregie-cli_0.11.0_linux_x86_64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
        sha256 "37429ed84fbc5aa5d797ef8af3622f272396c0aa32c92146c153cc7e9592a1d1"

        def install
          bin.install "lilregie"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/lilregie/cli/releases/download/0.11.0/lilregie-cli_0.11.0_linux_aarch64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
        sha256 "f52c141644a328d1ea9786a29d2905f9770d714f3a032159903cfd1a8061800b"

        def install
          bin.install "lilregie"
        end
      end
    end
  end
end
