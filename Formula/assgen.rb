class Assgen < Formula
  desc "AI-driven game asset generation CLI"
  homepage "https://github.com/aallbrig/assgen"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/assgen/releases/download/v0.3.0/assgen-v0.3.0-macos-x64"
      sha256 "791047cf41d3c985bdcdfca2fa7f3e1f857d401b9c73a7e2ab322f301f04bcb9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/assgen/releases/download/v0.3.0/assgen-v0.3.0-linux-x64"
      sha256 "9a7bc8ad702d3bfafa7ed5e843c3481150abfe5defc262e8dabd4c106b5bf336"
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
