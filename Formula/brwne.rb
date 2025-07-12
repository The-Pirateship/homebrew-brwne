class Brwne < Formula
  desc "Brwne CLI for internal developer tools"
  homepage "https://brwne.net"
  version "0.0.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/The-Pirateship/homebrew-brwne/releases/download/v0.0.6/br-darwin-arm64.tar.gz"
      sha256 "1940ec92b829082433f1f83194cd059cf555a0f15ddb2d92d339969446fd7b82"
    else
      url "https://github.com/The-Pirateship/homebrew-brwne/releases/download/v0.0.6/br-darwin-amd64.tar.gz"
      sha256 "4daa8de324522accc780744c19cac0959e50b548824c983e97738831556bdfe4"
    end
  end

  on_linux do
    url "https://github.com/The-Pirateship/homebrew-brwne/releases/download/v0.0.6/br-linux-amd64.tar.gz"
    sha256 "__SHA_LINUX__"
  end

  def install
    bin.install "br"
  end

  test do
    system "#{bin}/br", "--version"
  end
end
