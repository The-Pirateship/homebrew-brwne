class Brwne < Formula
    include Language::Python::Virtualenv
  
    desc "brwne description"
    homepage "https://github.com/The-Pirateship/brwne"
    url "https://github.com/The-Pirateship/brwne_CLI/archive/refs/tags/v0.1.0.tar.gz"
    sha256 "ea9b4e33cbf31646222f9ca42088811be072dbd5a4d60d88e3916b77eb7b9f36"
    license :cannot_represent
  
    depends_on "python@3.13"
  
    def install
      virtualenv_install_with_resources
    end
  end
  