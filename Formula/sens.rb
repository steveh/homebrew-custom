# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../lib/private"
class Sens < Formula
  desc "Sensor to MQTT"
  homepage "https://github.com/steveh/sens"
  version "0.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/steveh/sens/releases/download/0.0.1/sens_0.0.1_darwin_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "f0734573541a7b735f53e9ff46202af11175fa627871306f32c6b0390a639682"

      def install
        bin.install "sens"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/steveh/sens/releases/download/0.0.1/sens_0.0.1_linux_aarch64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "86142eae455f7b4e7ba827cef418dc0740d2eb2347125d9aa35bbe02994e1c39"

      def install
        bin.install "sens"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/steveh/sens/releases/download/0.0.1/sens_0.0.1_linux_x86_64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "515b9fa5ef8a53d99d93d536f2f9009e7dfff4477479c4896496e879144db501"

      def install
        bin.install "sens"
      end
    end
  end
end
