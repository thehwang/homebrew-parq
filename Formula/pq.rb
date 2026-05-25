class Pq < Formula
  desc "jq for Parquet — query parquet files with concise expression syntax"
  homepage "https://github.com/thehwang/parq"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thehwang/parq/releases/download/v0.13.0/pq-aarch64-apple-darwin.tar.gz"
      sha256 "f16790401321aae43421d820ab1c7417d3801f63d8daf1d4e10cd5087a7f25b3"
    end
    on_intel do
      url "https://github.com/thehwang/parq/releases/download/v0.13.0/pq-x86_64-apple-darwin.tar.gz"
      sha256 "968c02cdb887464229854a2f81049d118b02292127d5ffe20b807148bf37ac12"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/thehwang/parq/releases/download/v0.13.0/pq-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b40ca05f0ebf48d32f6deee0e199fb78c88f1e8ed96acfba5f228ca24a7eec21"
    end
  end

  def install
    bin.install "pq"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pq --version")
  end
end
