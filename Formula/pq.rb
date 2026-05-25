class Pq < Formula
  desc "jq for Parquet — query parquet files with concise expression syntax"
  homepage "https://github.com/thehwang/parq"
  version "0.12.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thehwang/parq/releases/download/v0.12.1/pq-aarch64-apple-darwin.tar.gz"
      sha256 "fa31c1f295ee4fdb795c6e5345bd25c9a72cf947e2de7571358dd74ee5c8d446"
    end
    on_intel do
      url "https://github.com/thehwang/parq/releases/download/v0.12.1/pq-x86_64-apple-darwin.tar.gz"
      sha256 "9a2dfe7e533d7efe9de453c677be78351fac4c60b764ddf8e4c45b20ee2e5335"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/thehwang/parq/releases/download/v0.12.1/pq-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c999439ff2b4f5aa1a17ef0fda19319540dfbe8105fd6fa8e79602a40e239dcf"
    end
  end

  def install
    bin.install "pq"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pq --version")
  end
end
