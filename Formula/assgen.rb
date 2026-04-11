class Assgen < Formula
  desc "AI-driven game asset generation CLI"
  homepage "https://github.com/aallbrig/assgen"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/assgen/releases/download/v0.3.0/assgen-v0.3.0-macos-x64"
      sha256 "adb9861c0e24df681dd78f3b045e954ce074f15e782579f841d51b982175de84"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/assgen/releases/download/v0.3.0/assgen-v0.3.0-linux-x64"
      sha256 "46e357a363e848b50f862d7b3aa6c3b26b99636c758428400e5e3cb3cddcba00"
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
