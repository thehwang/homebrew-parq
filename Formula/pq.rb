class Pq < Formula
  desc "jq for Parquet — query parquet files with concise expression syntax"
  homepage "https://github.com/thehwang/parq"
  version "0.14.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thehwang/parq/releases/download/v0.14.1/pq-aarch64-apple-darwin.tar.gz"
      sha256 "0bc507b5c39278ebf44b511ff41974ad175030b81e445a0db5b575d2107d96f3"
    end
    on_intel do
      url "https://github.com/thehwang/parq/releases/download/v0.14.1/pq-x86_64-apple-darwin.tar.gz"
      sha256 "2a0ddd5a4f5a886e456ca2ed41a66b2c1f727f1c65a335e8628ad24632703a44"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/thehwang/parq/releases/download/v0.14.1/pq-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c9392013dca4e27af672555c8b0f0a6332688023ae75f3d62fb212d6d520911d"
    end
  end

  def install
    bin.install "pq"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pq --version")
  end
end
