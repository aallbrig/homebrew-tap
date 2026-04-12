class Assgen < Formula
  desc "AI-driven game asset generation CLI"
  homepage "https://github.com/aallbrig/assgen"
  version "0.3.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/assgen/releases/download/v0.3.3/assgen-v0.3.3-macos-x64"
      sha256 "d8cb635b8a0c2f3d8baf669401dfa8710c9c72d35bed059ae92e427ad069945d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/assgen/releases/download/v0.3.3/assgen-v0.3.3-linux-x64"
      sha256 "cccfa212461c3b1ba13322b534684d9a898cb01e83ee1c72a7096dd3fdc72139"
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
