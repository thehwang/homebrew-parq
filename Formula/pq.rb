class Pq < Formula
  desc "jq for Parquet — query parquet files with concise expression syntax"
  homepage "https://github.com/thehwang/parq"
  version "0.9.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thehwang/parq/releases/download/v0.9.1/pq-aarch64-apple-darwin.tar.gz"
      sha256 "c8ceacce2dde1f5759b905d0e1e5e6653fa72a40c4cabe84736abbcd2b176619"
    end
    on_intel do
      url "https://github.com/thehwang/parq/releases/download/v0.9.1/pq-x86_64-apple-darwin.tar.gz"
      sha256 "d560d2a558b59f423d2d71f5b3164679b37852b194d7203975f04e110b42c203"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/thehwang/parq/releases/download/v0.9.1/pq-x86_64-unknown-linux-musl.tar.gz"
      sha256 "41dd886f8e4c1271b157cd683b2559568e39998a3e660ec01fdbc7e3fbe31520"
    end
  end

  def install
    bin.install "pq"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pq --version")
  end
end
