# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../lib/private"
class Neuter < Formula
  desc "Social neuterer"
  homepage "https://github.com/steveh/neuter"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/steveh/neuter/releases/download/0.1.1/neuter_0.1.1_Darwin_arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "0a08bf120e3ea76ca36342a937b980b8325f5738a8295d528db8d1d9faab8d83"

      def install
        bin.install "neuter"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/steveh/neuter/releases/download/0.1.1/neuter_0.1.1_Darwin_x86_64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "61add50c97ba8d2115ea04f47f21ae76e4c701ce800b9a54cff157e1c034d3a9"

      def install
        bin.install "neuter"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/steveh/neuter/releases/download/0.1.1/neuter_0.1.1_Linux_arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "a22d9853b9a9dde3e86ecfa1be9870d4668cb1e9ec5a72a655f3d67e543fd797"

      def install
        bin.install "neuter"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/steveh/neuter/releases/download/0.1.1/neuter_0.1.1_Linux_x86_64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "e8ab7d92994d3437979341fb67d6ecd4995710b2510f08053b129e776fd9785e"

      def install
        bin.install "neuter"
      end
    end
  end
end
