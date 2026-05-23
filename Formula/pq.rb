class Pq < Formula
  desc "jq for Parquet — query parquet files with concise expression syntax"
  homepage "https://github.com/thehwang/parq"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thehwang/parq/releases/download/v0.7.0/pq-aarch64-apple-darwin.tar.gz"
      sha256 "e2a9dce5c732bc41287e15e8b29851ea6944a58503ce63c82ec707530a8560bd"
    end
    on_intel do
      url "https://github.com/thehwang/parq/releases/download/v0.7.0/pq-x86_64-apple-darwin.tar.gz"
      sha256 "fc360feb904d1fd3391634769b69f53ada2ea70b0713635254158b9c5916a9cb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/thehwang/parq/releases/download/v0.7.0/pq-x86_64-unknown-linux-musl.tar.gz"
      sha256 "00571708fc432ffed09c640c71e6153ed2853e1bcf184a3c478a29f6d3db9f14"
    end
  end

  def install
    bin.install "pq"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pq --version")
  end
end
