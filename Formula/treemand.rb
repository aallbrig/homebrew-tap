class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://treemand.dev"
  version "0.23.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.23.1/treemand_darwin_amd64.tar.gz"
      sha256 "636591670d859d5668f7736cfec762ef746a368417db5c652dd0abbcab263c8b"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.23.1/treemand_darwin_arm64.tar.gz"
      sha256 "0f9e248d01ae9fd74aaa95c0c974f5f9d1d80ec775bd9c7d9c473736948e2e54"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.23.1/treemand_linux_amd64.tar.gz"
      sha256 "c6c9ae963824423ebf5b2bbd90a9a54dce315f77a4b9b8af7840df517b135a39"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.23.1/treemand_linux_arm64.tar.gz"
      sha256 "a5e583ad3250a72b69b1ffe8efe90ac87312bd941c435348d3d85be504729b64"

      def install
        bin.install "treemand_linux_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/treemand version")
  end
end
