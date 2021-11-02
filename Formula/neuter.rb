# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../lib/private"
class Neuter < Formula
  desc "Social neuterer"
  homepage "https://github.com/steveh/neuter"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/steveh/neuter/releases/download/0.1.0/neuter_0.1.0_Darwin_arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "411be20917962ea287cffd7c2a0bc496adb35b9bbd2eb68782afea909b30a634"

      def install
        bin.install "neuter"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/steveh/neuter/releases/download/0.1.0/neuter_0.1.0_Darwin_x86_64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "c7ee92f7f6a971a061edcf1bf0ba8d5977c7f612a1b6d64bc7d5412d55d0d8e9"

      def install
        bin.install "neuter"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/steveh/neuter/releases/download/0.1.0/neuter_0.1.0_Linux_x86_64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "a6f06708076b8376dffc5b0ebe28c53e0f6b7ac144a60f397ae8bf2386bfb35e"

      def install
        bin.install "neuter"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/steveh/neuter/releases/download/0.1.0/neuter_0.1.0_Linux_arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "bc6099fb73721bbac0305d8a8bf59c3ae579c8852c9a616c9d232ef8e440e8f2"

      def install
        bin.install "neuter"
      end
    end
  end
end
