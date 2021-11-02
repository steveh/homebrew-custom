# typed: false
# frozen_string_literal: true

class SthConsole < Formula
  desc "SiteHost Console"
  homepage "https://sth-console.phreak.nz/"
  version "1.10"

  if OS.mac?
    url "https://sth-console.phreak.nz/1.10/osx/console"
    sha256 "9a58f5a3078bcfb6d61644c91b6ebd5be0e6249acc0977d5bc8b9dec39aa2cf2"
  end
  
  if OS.linux?
    url "https://sth-console.phreak.nz/1.10/linux/console"
    sha256 "0cb4ba386a7e2689e407092c9c43986560eaa725fae94d28a13d9b05d55de7fd"
  end

  def install
    bin.install "console" => "sc"
  end
end
