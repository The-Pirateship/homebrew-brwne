class Brwne < Formula
  desc "Brwne CLI for internal developer tools"
  homepage "https://brwne.net"
  version "0.0.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/The-Pirateship/brwne/releases/download/v0.0.3/br-darwin-arm64.tar.gz"
      sha256 "417c26da6e911a83435eeccb317dc9a0393ee62f532d0a7a1f88eea120414cef"
    else
      url "https://github.com/The-Pirateship/brwne/releases/download/v0.0.3/br-darwin-amd64.tar.gz"
      sha256 "05d2c161a2e2d31a3bbefb234ad5caf188133b2d86837ae3b922af04e67e09ed"
    end
  end

  on_linux do
    url "https://github.com/The-Pirateship/brwne/releases/download/v0.0.3/br-linux-amd64.tar.gz"
    sha256 "__SHA_LINUX__"
  end

  def install
    bin.install "br"
  end

  test do
    system "#{bin}/br", "--version"
  end
end
