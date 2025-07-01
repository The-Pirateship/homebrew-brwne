class Brwne < Formula
  desc "Brwne CLI for internal developer tools"
  homepage "https://brwne.net"
  version "0.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/The-Pirateship/brwne/releases/download/v0.0.2/br-darwin-arm64.tar.gz"
      sha256 "9eebb678192b7a36e188221c0dc23e2e47f6122ead8aba0db751f625ba72b808"
    else
      url "https://github.com/The-Pirateship/brwne/releases/download/v0.0.2/br-darwin-amd64.tar.gz"
      sha256 "8290fb1d7be2a8cae167ef27647b2449a4bc6fefdc0139851535743e078c90f9"
    end
  end

  on_linux do
    url "https://github.com/The-Pirateship/brwne/releases/download/v0.0.2/br-linux-amd64.tar.gz"
    sha256 "__SHA_LINUX__"
  end

  def install
    bin.install "br"
  end

  test do
    system "#{bin}/br", "--version"
  end
end
