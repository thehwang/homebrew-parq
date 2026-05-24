class Pq < Formula
  desc "jq for Parquet — query parquet files with concise expression syntax"
  homepage "https://github.com/thehwang/parq"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thehwang/parq/releases/download/v0.12.0/pq-aarch64-apple-darwin.tar.gz"
      sha256 "03cba57c60f53c01777af4f971a6502d435ca0e1d13b54173906c429b72bb427"
    end
    on_intel do
      url "https://github.com/thehwang/parq/releases/download/v0.12.0/pq-x86_64-apple-darwin.tar.gz"
      sha256 "81d645eb8ea061116c71ffa6be0ef1f19a8842959788a6e277b09a6fe4499083"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/thehwang/parq/releases/download/v0.12.0/pq-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8e9312dc442b232cc78f9da63f203a5ee89c80f37c8d298f4284cbd08ebef3e0"
    end
  end

  def install
    bin.install "pq"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pq --version")
  end
end
