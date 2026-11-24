class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://treemand.dev"
  version "0.19.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.19.0/treemand_darwin_amd64.tar.gz"
      sha256 "40b75d47278b0cbda6bf78dd1d65c96d3d401f63a35e9d50e88e6e821e956a85"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.19.0/treemand_darwin_arm64.tar.gz"
      sha256 "3b68090669e6ce4bfe2efbae13a9db0f0315f58fdee694c19f0445b5b58a6339"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.19.0/treemand_linux_amd64.tar.gz"
      sha256 "ab95fdef5ff404a85da7834b8bdc381f086e2550c4c7dcd4dae8eb30b2a356ec"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.19.0/treemand_linux_arm64.tar.gz"
      sha256 "017a06f8419999c5562033e19777306fe4f31c1146f9704810daa7246465e6c8"

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
