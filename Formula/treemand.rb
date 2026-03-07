class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://aallbrig.github.io/treemand"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.2.0/treemand_darwin_amd64.tar.gz"
      sha256 "f85af248de389ab6e2f60f1970decf66b11c843e9a82428e8846408d1b318d0d"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.2.0/treemand_darwin_arm64.tar.gz"
      sha256 "62fc31cdefd0891c0c6cb2b1277478ef550d6600516a32dd51d877867802e82f"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.2.0/treemand_linux_amd64.tar.gz"
      sha256 "f422808c58044445972c726c4cc9efebaa08e30ccfee5086aa9f4d1bf36534c5"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.2.0/treemand_linux_arm64.tar.gz"
      sha256 "442296d2044c11cd64409a096407651f1835f26a4e178bcd0fdbbfb5431d9653"

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
