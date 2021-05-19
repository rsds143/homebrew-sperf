class Sperf < Formula
  include Language::Python::Virtualenv

  desc "Datastax Enterprise and Apache Cassandra diagnostic tooling from DataStax"
  homepage "https://github.com/DataStax-Toolkit/sperf"
  url "https://github.com/DataStax-Toolkit/sperf/archive/v0.6.9.tar.gz"
  sha256 "953160c2295232fc2a03cc3c8bc1897d3bb5f39fd39fa69a4522a7823c413a56"
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
