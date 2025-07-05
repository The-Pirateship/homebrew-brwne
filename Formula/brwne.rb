class Brwne < Formula
  desc "Brwne CLI for internal developer tools"
  homepage "https://brwne.net"
  version "0.0.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/The-Pirateship/homebrew-brwne/releases/download/v0.0.5/br-darwin-arm64.tar.gz"
      sha256 "5de0b7a17f93e71ad2879f558bbac81294647afa171f3c65e3bd1aa3cafd8e8b"
    else
      url "https://github.com/The-Pirateship/homebrew-brwne/releases/download/v0.0.5/br-darwin-amd64.tar.gz"
      sha256 "857a94f120fb6115b554351e01213ed6e5382c70a5ac2c00f61900b265044fe2"
    end
  end

  on_linux do
    url "https://github.com/The-Pirateship/homebrew-brwne/releases/download/v0.0.5/br-linux-amd64.tar.gz"
    sha256 "__SHA_LINUX__"
  end

  def install
    bin.install "br"
  end

  test do
    system "#{bin}/br", "--version"
  end
end
