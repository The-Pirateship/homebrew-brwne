class Brwne < Formula
  desc "Brwne CLI for internal developer tools"
  homepage "https://brwne.net"
  url "https://github.com/The-Pirateship/homebrew-brwne/releases/download/v0.0.1/brd-darwin-amd64.tar.gz"
  sha256 "a52919406e21a94dfe37f96931e37bc5f0e361872f60798c21391c1ac36c307a"
  version "0.0.1"

  def install
    bin.install "brd"
  end

  test do
    system "#{bin}/brd"
  end
end
