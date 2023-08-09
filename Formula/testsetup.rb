class Testsetup < Formula
  include Language::Python::Virtualenv
  desc "First formulea for tests"
  homepage "https://froggytesto.jfrog.io/"
  url "https://frogets.jfrog.io/artifactory/generic-local/testsetup-1.1.5.zip"
  sha256 "270298b1ae40d6905fdee0e5e783213a919f34f9a0f444ac9e2935ca3cd56f11"
  depends_on "python-typing-extensions"
  depends_on "python@3.11"
  depends_on "pyyaml"
  depends_on "six"
​
  resource "anyio" do
    url "https://files.pythonhosted.org/packages/28/99/2dfd53fd55ce9838e6ff2d4dac20ce58263798bd1a0dbe18b3a9af3fcfce/anyio-3.7.1.tar.gz"
    sha256 "44a3c9aba0f5defa43261a8b3efb97891f2bd7d804e0e1f56419befa1adfc780"
  end
​
​
  def install
    virtualenv_install_with_resources
  end
​
end