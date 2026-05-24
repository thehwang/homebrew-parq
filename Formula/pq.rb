class Pq < Formula
  desc "jq for Parquet — query parquet files with concise expression syntax"
  homepage "https://github.com/thehwang/parq"
  version "0.11.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thehwang/parq/releases/download/v0.11.1/pq-aarch64-apple-darwin.tar.gz"
      sha256 "71eb2c0b2a7e0f9b7b0a8ea4627a010d5dbc881f8216909d1a2eff0231a879c3"
    end
    on_intel do
      url "https://github.com/thehwang/parq/releases/download/v0.11.1/pq-x86_64-apple-darwin.tar.gz"
      sha256 "4d3ab0138678ccf6c33623c75519bddd8b8e59cf1bff2b18a16bf240555a2f9b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/thehwang/parq/releases/download/v0.11.1/pq-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3d1707f2c43c9872d2982a74899bfe0cd4d1072bb42fec91dbab26a3ddaba5bd"
    end
  end

  def install
    bin.install "pq"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pq --version")
  end
end
