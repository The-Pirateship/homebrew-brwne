class Brwne < Formula
  desc "Brwne CLI for internal developer tools"
  homepage "https://brwne.net"
  version "0.0.3.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/The-Pirateship/homebrew-brwne/releases/download/v0.0.3.2/br-darwin-arm64.tar.gz"
      sha256 "ad98d0f70b46ac1cdbed1effe4aca18829c19a1b6b98dde450546a9df541e422"
    else
      url "https://github.com/The-Pirateship/homebrew-brwne/releases/download/v0.0.3.2/br-darwin-amd64.tar.gz"
      sha256 "7e4c2d0d1dd10298cf3013a1e1214afcbce7f4f267e8b4af77513d72ec991f66"
    end
  end

  on_linux do
    url "https://github.com/The-Pirateship/homebrew-brwne/releases/download/v0.0.3.2/br-linux-amd64.tar.gz"
    sha256 "__SHA_LINUX__"
  end

  def install
    bin.install "br"
  end

  test do
    system "#{bin}/br", "--version"
  end
end
