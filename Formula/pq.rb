class Pq < Formula
  desc "jq for Parquet — query parquet files with concise expression syntax"
  homepage "https://github.com/thehwang/parq"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thehwang/parq/releases/download/v0.6.0/pq-aarch64-apple-darwin.tar.gz"
      sha256 "fd1eaa20e89e4b3c8029524ad76fc9726ba5979d5d4218d5813655dc4cef5b1f"
    end
    on_intel do
      url "https://github.com/thehwang/parq/releases/download/v0.6.0/pq-x86_64-apple-darwin.tar.gz"
      sha256 "f21938439f813e9c10228d49549ef25248702b7908eaf44f6ddbdd18f482828a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/thehwang/parq/releases/download/v0.6.0/pq-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bfdcbb8251eb2fd74f325cfe01f2f9e0eb62c71c60bb260aaff7fe49dcfca1fb"
    end
  end

  def install
    bin.install "pq"
  end

  test do
    # Smoke test: --version exits cleanly and prints the formula's version.
    assert_match version.to_s, shell_output("#{bin}/pq --version")
  end
end
