class Sperf < Formula
  include Language::Python::Virtualenv

  desc "Datastax Enterprise and Apache Cassandra diagnostic tooling from DataStax"
  homepage "https://github.com/DataStax-Toolkit/sperf"
  url "https://github.com/DataStax-Toolkit/sperf/archive/v0.6.7.tar.gz"
  sha256 "332c75f42cc7a858660c4e9d3b590e53d6446833a4c2e3bab6f750400de47d6e"
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
