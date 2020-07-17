class Sperf < Formula
  include Language::Python::Virtualenv

  desc "Datastax Enterprise and Apache Cassandra diagnostic tooling from DataStax"
  homepage "https://github.com/DataStax-Toolkit/sperf"
  url "https://github.com/DataStax-Toolkit/sperf/archive/v0.6.3.tar.gz"
  sha256 "2009c9c3df3a70308f6e2c26c87787c582b7e6f72028d6bb024acf7473e269a1"
  license "Apache-2.0"
  depends_on "python@3.8"

  def install
    virtualenv_install_with_resources 
  end

  test do
    status_output = shell_output("#{bin}/sperf -h", 1)
    assert_match "usage: sperf", status_output[0..11]
  end
end
