class Allbctl < Formula
  desc "CLI tool for managing and inspecting your development environment"
  homepage "https://aallbrig.github.io/allbctl"
  version "0.0.37"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/allbctl/releases/download/v0.0.37/allbctl-darwin-amd64.tar.gz"
      sha256 "32be5ccffe4348f84f43784fa6ce4006c7cd5491feaa0e8ec66959c2793dacab"

      def install
        bin.install "allbctl_darwin_amd64" => "allbctl"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/allbctl/releases/download/v0.0.37/allbctl-darwin-arm64.tar.gz"
      sha256 "66f7671af39f58edc8c1f127a0b37e45f7b1db6aa4c4de9880a338e038ea10ce"

      def install
        bin.install "allbctl_darwin_arm64" => "allbctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/allbctl/releases/download/v0.0.37/allbctl-linux-amd64.tar.gz"
      sha256 "05fcd8d8efc544563451388fa755a877262e9ab25ea8a33d4f582e0b30aafc62"

      def install
        bin.install "allbctl_linux_amd64" => "allbctl"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/allbctl/releases/download/v0.0.37/allbctl-linux-arm64.tar.gz"
      sha256 "ddc9a3f422472a4505398755c3a31039958d469b1291579a75aa0189af548e56"

      def install
        bin.install "allbctl_linux_arm64" => "allbctl"
      end
    end
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/allbctl version")
  end
end
