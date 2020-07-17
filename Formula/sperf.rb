class Sperf < Formula
  include Language::Python::Virtualenv

  desc "Datastax Enterprise and Apache Cassandra diagnostic tooling from DataStax"
  homepage "https://github.com/DataStax-Toolkit/sperf"
  url "https://github.com/DataStax-Toolkit/sperf/archive/v0.6.3.tar.gz"
  sha256 "393e7ad462b0857d5bfb1d65d06944f5971a6d4dcfed9e1ee04a6196b6bf0b85"
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
