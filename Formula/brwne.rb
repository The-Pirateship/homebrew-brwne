class Brwne < Formula
  desc "Brwne CLI for internal developer tools"
  homepage "https://brwne.net"
  version "..." # TODO: set by CI

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/The-Pirateship/brwne/releases/download/v.../br-darwin-arm64.tar.gz"
      sha256 "..." # TODO: from br-darwin-arm64.tar.gz.sha256
    else
      url "https://github.com/The-Pirateship/brwne/releases/download/v.../br-darwin-amd64.tar.gz"
      sha256 "..." # TODO: from br-darwin-amd64.tar.gz.sha256
    end
  end

  on_linux do
    url "https://github.com/The-Pirateship/brwne/releases/download/v.../br-linux-amd64.tar.gz"
    sha256 "..." # TODO: from br-linux-amd64.tar.gz.sha256
  end

  def install
    bin.install "br"
  end

  test do
    system "#{bin}/br", "--version"
  end
end
