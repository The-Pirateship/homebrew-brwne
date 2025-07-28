class Brwne < Formula
  desc "Brwne CLI for internal developer tools"
  homepage "https://brwne.net"
  version "0.0.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/The-Pirateship/homebrew-brwne/releases/download/v0.0.7/br-darwin-arm64.tar.gz"
      sha256 "9ddb873408d737281eb02c219d52c66d4aad1e0f3b91ae5f3e5099d9da51bcbc"
    else
      url "https://github.com/The-Pirateship/homebrew-brwne/releases/download/v0.0.7/br-darwin-amd64.tar.gz"
      sha256 "ca9a480b4ecdf36bc05801400d66d2228cc648884cefeb5b6e637f0c4e4b72de"
    end
  end

  on_linux do
    url "https://github.com/The-Pirateship/homebrew-brwne/releases/download/v0.0.7/br-linux-amd64.tar.gz"
    sha256 "__SHA_LINUX__"
  end

  def install
    bin.install "br"
  end

  test do
    system "#{bin}/br", "--version"
  end
end
