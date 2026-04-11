class Assgen < Formula
  desc "AI-driven game asset generation CLI"
  homepage "https://github.com/aallbrig/assgen"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/assgen/releases/download/v0.3.0/assgen-v0.3.0-macos-x64"
      sha256 "24cc8762cf870c0f750012728d196617677641061818b96fe4437254dec903f4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/assgen/releases/download/v0.3.0/assgen-v0.3.0-linux-x64"
      sha256 "7f73b430aaa9de592c1b614100f8b33e0daf8b908fb78c024dd7aff869706208"
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
