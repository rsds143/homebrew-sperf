class Sperf < Formula
  include Language::Python::Virtualenv

  desc "Datastax Enterprise and Apache Cassandra diagnostic tooling from DataStax"
  homepage "https://github.com/DataStax-Toolkit/sperf"
  url "https://github.com/DataStax-Toolkit/sperf/archive/v0.6.12.tar.gz"
  sha256 "a74af4fbc1de348b9986ac70ffee724781fee91d5b1a149eaf5a8b01abff75bd"
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
