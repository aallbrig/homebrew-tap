class Allbctl < Formula
  desc "CLI tool for managing and inspecting your development environment"
  homepage "https://aallbrig.github.io/allbctl"
  version "0.0.38"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/allbctl/releases/download/v0.0.38/allbctl-darwin-amd64.tar.gz"
      sha256 "7cb4b71741ba6c8baafface18677f16d893112cf1b2986dd6097cc59814bc750"

      def install
        bin.install "allbctl_darwin_amd64" => "allbctl"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/allbctl/releases/download/v0.0.38/allbctl-darwin-arm64.tar.gz"
      sha256 "687e5331996da0b901c89a2285847a38e5e5a962528b18e856e80a9dfae34797"

      def install
        bin.install "allbctl_darwin_arm64" => "allbctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/allbctl/releases/download/v0.0.38/allbctl-linux-amd64.tar.gz"
      sha256 "8d6783e7318bab66b64617edce7ec4a075be417c2831ff40de0c793ed2dcfcee"

      def install
        bin.install "allbctl_linux_amd64" => "allbctl"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/allbctl/releases/download/v0.0.38/allbctl-linux-arm64.tar.gz"
      sha256 "a31340a671541527cf66c183f05c8f8ffc703073a9ab2851a4a88ea498507821"

      def install
        bin.install "allbctl_linux_arm64" => "allbctl"
      end
    end
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/allbctl version")
  end
end
