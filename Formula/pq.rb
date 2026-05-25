class Pq < Formula
  desc "jq for Parquet — query parquet files with concise expression syntax"
  homepage "https://github.com/thehwang/parq"
  version "0.14.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thehwang/parq/releases/download/v0.14.0/pq-aarch64-apple-darwin.tar.gz"
      sha256 "adb478b2ede970bc79068c2198e7a203ac7a81ab8e7997b908853d828364811f"
    end
    on_intel do
      url "https://github.com/thehwang/parq/releases/download/v0.14.0/pq-x86_64-apple-darwin.tar.gz"
      sha256 "9e2f6f6f312d2ad9582f12e0c9ad71e12c8d40f9ef2838126b28b206a5c086a8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/thehwang/parq/releases/download/v0.14.0/pq-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2d85ef55b4fdf5851d33fae89e71f985942edded6c683855b383437e650a9401"
    end
  end

  def install
    bin.install "pq"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pq --version")
  end
end
