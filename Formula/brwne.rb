class Brwne < Formula
  desc "Brwne CLI for internal developer tools"
  homepage "https://brwne.net"
  url "https://github.com/The-Pirateship/homebrew-brwne/releases/download/v0.0.1/br-darwin-amd64.tar.gz"
  sha256 "ad4bf57f8c08a4c289d78dfce8cf5ffe9703a85579e2e630ba3e3064065f6bd6"
  version "0.0.1"

  def install
    bin.install "br"
  end

  test do
    system "#{bin}/br"
  end
end
