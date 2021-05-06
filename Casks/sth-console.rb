cask "sth-console" do
  version "1.10"
  sha256 "9a58f5a3078bcfb6d61644c91b6ebd5be0e6249acc0977d5bc8b9dec39aa2cf2"

  url "https://sth-console.phreak.nz/#{version}/osx/console"
  name "sth-console"
  homepage "https://sth-console.phreak.nz/"

  binary "console", target: "sc"
end
