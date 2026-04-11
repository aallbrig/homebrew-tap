class Assgen < Formula
  desc "AI-driven game asset generation CLI"
  homepage "https://github.com/aallbrig/assgen"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/assgen/releases/download/v0.3.1/assgen-v0.3.1-macos-x64"
      sha256 "d00974833fd47fe759a54a455c5facb24ac1a6e2fe0895c9de29bfd99522eae2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/assgen/releases/download/v0.3.1/assgen-v0.3.1-linux-x64"
      sha256 "b1d5358164120883e062bd21fa440fa8c9172556080e555a17effe57a63562bd"
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
