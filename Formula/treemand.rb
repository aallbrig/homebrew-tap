class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://treemand.dev"
  version "0.11.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.11.4/treemand_darwin_amd64.tar.gz"
      sha256 "da99ce378d5755249224f3a6b6570c904bd33b2aa6f6c72ccd49e350d401219d"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.11.4/treemand_darwin_arm64.tar.gz"
      sha256 "57cfdb8dea75a331ce4e3dd8c762f5fb993b7950a143e58e2ff56349452e856a"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.11.4/treemand_linux_amd64.tar.gz"
      sha256 "5c780d7a42b1908119ac4a5da96c69e4b57ddb1afd6331bad8934dfce2ac7901"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.11.4/treemand_linux_arm64.tar.gz"
      sha256 "e474c1bab5273d0fe06a6b12754911203b4d5c2ec3c83094b715c8a0d4de7fd2"

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
