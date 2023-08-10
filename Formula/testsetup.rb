class Testsetup < Formula
  include Language::Python::Virtualenv
  desc "First formulea for tests"
  homepage "https://froggytesto.jfrog.io/"
  url "https://frogets.jfrog.io/artifactory/generic-local/testsetup-1.2.1.tar.gz"
  sha256 "270298b1ae40d6905fdee0e5e783213a919f34f9a0f444ac9e2935ca3cd56f11"
  depends_on "python-typing-extensions"
  depends_on "python@3.11"
  depends_on "pyyaml"
  depends_on "six"
​
  resource "httptools" do
    url "https://files.pythonhosted.org/packages/d9/6f/aad92c3f090e2f74dd728d58d3bba4c832d35199814af99673ee7300b582/httptools-0.1.1.tar.gz"
    sha256 "41b573cf33f64a8f8f3400d0a7faf48e1888582b6f6e02b82b9bd4f0bf7497ce"
  end
​
​
  def install
    virtualenv_install_with_resources
  end
​
end