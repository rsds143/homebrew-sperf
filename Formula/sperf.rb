class Sperf < Formula
  include Language::Python::Virtualenv

  desc "Datastax Enterprise and Apache Cassandra diagnostic tooling from DataStax"
  homepage "https://github.com/DataStax-Toolkit/sperf"
  url "https://github.com/DataStax-Toolkit/sperf/archive/v0.6.14.tar.gz"
  sha256 "f82d57bdc7be141d5f8232bf6d58d0b3f6728be5a6abd3f6e97d6ede2b57e3f2"
  license "Apache-2.0"
  depends_on "python@3.9"

  def install
    virtualenv_install_with_resources 
  end

  test do
    status_output = shell_output("#{bin}/sperf -h", 1)
    assert_match "usage: sperf", status_output[0..11]
  end
end
