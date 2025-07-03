class Brwne < Formula
  desc "Brwne CLI for internal developer tools"
  homepage "https://brwne.net"
  version "0.0.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/The-Pirateship/homebrew-brwne/releases/download/v0.0.4/br-darwin-arm64.tar.gz"
      sha256 "9dca267c91888ce910d62bc06bc4e484e1ebd4cacb817d5eb659ac4198ce4bd1"
    else
      url "https://github.com/The-Pirateship/homebrew-brwne/releases/download/v0.0.4/br-darwin-amd64.tar.gz"
      sha256 "5fa5c9c06846f8e2ecbb65f16f392db5ba790812a79ec8b85a12ee2aef9364fb"
    end
  end

  on_linux do
    url "https://github.com/The-Pirateship/homebrew-brwne/releases/download/v0.0.4/br-linux-amd64.tar.gz"
    sha256 "__SHA_LINUX__"
  end

  def install
    bin.install "br"
  end

  test do
    system "#{bin}/br", "--version"
  end
end
