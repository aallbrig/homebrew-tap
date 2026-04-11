class Assgen < Formula
  desc "AI-driven game asset generation CLI"
  homepage "https://github.com/aallbrig/assgen"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/assgen/releases/download/v0.3.0/assgen-v0.3.0-macos-x64"
      sha256 "e5070e9a3e7a944080348b3bd35e4a952f89ff51d2d13b7b011911c403fe0fc2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/assgen/releases/download/v0.3.0/assgen-v0.3.0-linux-x64"
      sha256 "50d9ebbf4b648669d5e7c1c71b7901460b3405985bc0a11070db6c3bda25ce3a"
    end
  end

  def install
    binary = Dir["assgen-*"].first || "assgen"
    bin.install binary => "assgen"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/assgen --version")
  end
end
