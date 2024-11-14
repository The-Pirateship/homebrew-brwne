class Brwne < Formula
    include Language::Python::Virtualenv
  
    desc "brwne description"
    homepage "https://github.com/The-Pirateship/brwne"
    url "https://github.com/The-Pirateship/brwne_CLI/archive/refs/tags/v0.1.0.tar.gz"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    license :cannot_represent
  
    depends_on "python@3.13"
  
    def install
      virtualenv_install_with_resources
    end
  end
  