class Testsetup < Formula
  include Language::Python::Virtualenv
  desc "First formulea for tests"
  homepage "https://froggytesto.jfrog.io/"
  url "https://frogets.jfrog.io/artifactory/generic-local/testsetup-1.2.1.tar.gz"
  sha256 "7a50ede8ab17f15af84c9ea41684b01a3bb6fd0e31b722677ccf7cd92e156c3e"

  depends_on "python@3.11"

  resource "httptools" do
    url "https://files.pythonhosted.org/packages/d9/6f/aad92c3f090e2f74dd728d58d3bba4c832d35199814af99673ee7300b582/httptools-0.1.1.tar.gz"
    sha256 "41b573cf33f64a8f8f3400d0a7faf48e1888582b6f6e02b82b9bd4f0bf7497ce"
  end

  def install
    virtualenv_install_with_resources
  end

end