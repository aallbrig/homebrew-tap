class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://treemand.dev"
  version "0.23.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.23.0/treemand_darwin_amd64.tar.gz"
      sha256 "a3205fffb66c389ec8ee85454b76016b85c7db440046da8c42c3be6d1757bd19"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.23.0/treemand_darwin_arm64.tar.gz"
      sha256 "5be3f0d07c641285cbd808927296ad845574ade34bf53f37f8f26e790cb6fa5f"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.23.0/treemand_linux_amd64.tar.gz"
      sha256 "7f90aa8e4c96ba8896b99497470028d1a05de7399df6bf0b421c53a5fa76e2f7"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.23.0/treemand_linux_arm64.tar.gz"
      sha256 "0efcfab1ac5f030d786685d3e16c0eb9382e9f4d1881f2d0294f012d1697d2e9"

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
