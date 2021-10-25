class Sperf < Formula
  include Language::Python::Virtualenv

  desc "Datastax Enterprise and Apache Cassandra diagnostic tooling from DataStax"
  homepage "https://github.com/DataStax-Toolkit/sperf"
  url "https://github.com/DataStax-Toolkit/sperf/archive/v0.6.15.tar.gz"
  sha256 "fad5262b93c6050360205292c81e909cba7519b69a69789932a76ae9ffb822a2"
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
