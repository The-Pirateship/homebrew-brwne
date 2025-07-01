class Brwne < Formula
  desc "Brwne CLI for internal developer tools"
  homepage "https://brwne.net"
  version "0.0.3.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/The-Pirateship/homebrew-brwne/releases/download/v0.0.3.1/br-darwin-arm64.tar.gz"
      sha256 "c8d937c2727110af986c9b3ded5d6524bb82f82d0fb9ae6fea1ae07f91fa234f"
    else
      url "https://github.com/The-Pirateship/homebrew-brwne/releases/download/v0.0.3.1/br-darwin-amd64.tar.gz"
      sha256 "df38303afd5942083dcea27e7cd15e605a17eb2abf9a26aba902108ddeb48485"
    end
  end

  on_linux do
    url "https://github.com/The-Pirateship/homebrew-brwne/releases/download/v0.0.3.1/br-linux-amd64.tar.gz"
    sha256 "__SHA_LINUX__"
  end

  def install
    bin.install "br"
  end

  test do
    system "#{bin}/br", "--version"
  end
end
