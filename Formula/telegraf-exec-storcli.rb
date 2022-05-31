# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TelegrafExecStorcli < Formula
  desc "Extract Broadcom StorCLI and output Influx line protocol"
  homepage "https://github.com/steveh/telegraf-exec-storcli"
  version "1.0.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/steveh/telegraf-exec-storcli/releases/download/1.0.2/telegraf-exec-storcli_1.0.2_Darwin_x86_64.tar.gz"
      sha256 "d414a73c3beab11e8f8bf3ac7e5ef120d4a63d98ddcd9c3bdae2fa87fc1a1272"

      def install
        bin.install "telegraf-exec-storcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/steveh/telegraf-exec-storcli/releases/download/1.0.2/telegraf-exec-storcli_1.0.2_Darwin_arm64.tar.gz"
      sha256 "3801b488ee1a1a8dee581f7a147893c073d53ac8c1d62290743849690d7bcdca"

      def install
        bin.install "telegraf-exec-storcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/steveh/telegraf-exec-storcli/releases/download/1.0.2/telegraf-exec-storcli_1.0.2_Linux_x86_64.tar.gz"
      sha256 "d5c3e010e538c49b37e9baf9544021191995e6f68b7064be9b17df7d49022c8d"

      def install
        bin.install "telegraf-exec-storcli"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/steveh/telegraf-exec-storcli/releases/download/1.0.2/telegraf-exec-storcli_1.0.2_Linux_arm64.tar.gz"
      sha256 "f4b866766b0419299b696efa961bb5d14f6acce24ba24dbc7bee61c8b96da4b1"

      def install
        bin.install "telegraf-exec-storcli"
      end
    end
  end
end
