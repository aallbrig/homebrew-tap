class Assgen < Formula
  desc "AI-driven game asset generation CLI"
  homepage "https://github.com/aallbrig/assgen"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/assgen/releases/download/v0.3.2/assgen-v0.3.2-macos-x64"
      sha256 "1ef863b5b297e675569fad3546a32ed4eb2f9c4377073264dda34343e5a5f644"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/assgen/releases/download/v0.3.2/assgen-v0.3.2-linux-x64"
      sha256 "7490a67d5b8e598302636bb8a58ae61b58dc81253ae55f16774a249900f89cee"
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
