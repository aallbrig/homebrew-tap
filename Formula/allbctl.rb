class Allbctl < Formula
  desc "CLI tool for managing and inspecting your development environment"
  homepage "https://aallbrig.github.io/allbctl"
  version "0.0.35"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/allbctl/releases/download/v0.0.35/allbctl-darwin-amd64.tar.gz"
      sha256 "fc0637c362762d2651b2768cb54a770974f4dca441fa8188daeb61c0f3eb6623"

      def install
        bin.install "allbctl_darwin_amd64" => "allbctl"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/allbctl/releases/download/v0.0.35/allbctl-darwin-arm64.tar.gz"
      sha256 "30be40c007aa25cd55a77ad393b802131e3f8230d9b620d556cf12a772816e5b"

      def install
        bin.install "allbctl_darwin_arm64" => "allbctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/allbctl/releases/download/v0.0.35/allbctl-linux-amd64.tar.gz"
      sha256 "328c4176f8e20af6890c30e2db123f7bcb86346223e374b4c0ef1d765dd85a78"

      def install
        bin.install "allbctl_linux_amd64" => "allbctl"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/allbctl/releases/download/v0.0.35/allbctl-linux-arm64.tar.gz"
      sha256 "a5febbb56f164d9d9fdbcce8878a45373beaf3d6b41a1fd2d95a24d40ca9430c"

      def install
        bin.install "allbctl_linux_arm64" => "allbctl"
      end
    end
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/allbctl version")
  end
end
