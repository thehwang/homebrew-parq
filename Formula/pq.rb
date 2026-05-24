class Pq < Formula
  desc "jq for Parquet — query parquet files with concise expression syntax"
  homepage "https://github.com/thehwang/parq"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thehwang/parq/releases/download/v0.9.0/pq-aarch64-apple-darwin.tar.gz"
      sha256 "a1d6188a1fa69a703628212b0295cd2bb4c4cde28dbf19e4e0b9b2272516c3be"
    end
    on_intel do
      url "https://github.com/thehwang/parq/releases/download/v0.9.0/pq-x86_64-apple-darwin.tar.gz"
      sha256 "543ea4b4cc239a4fc7cb40889928cf310e0bfae74a2c337881b957cb3c830d44"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/thehwang/parq/releases/download/v0.9.0/pq-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e353a67504f5f09a09fd1502800fe8b4bb6db389f7bf5d358633b324cc987151"
    end
  end

  def install
    bin.install "pq"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pq --version")
  end
end
