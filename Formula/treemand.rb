class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://treemand.dev"
  version "0.16.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.16.0/treemand_darwin_amd64.tar.gz"
      sha256 "06852087865644c4926855576728a152744e6aeb86526cdc96d7c2b506eda658"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.16.0/treemand_darwin_arm64.tar.gz"
      sha256 "5fc00fa823934c6d3ad679f911b76bd49c59754c06c5b177d89e568a00591911"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.16.0/treemand_linux_amd64.tar.gz"
      sha256 "8ef4cb8e306c31af2bc00d3e9ad8f699fe3ca71053f0616a363250faddbc99ba"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.16.0/treemand_linux_arm64.tar.gz"
      sha256 "326a30c23aae6d8bc2bea881b1babcf6b9ada6ee4f3abf96c0310735fe0df60b"

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
