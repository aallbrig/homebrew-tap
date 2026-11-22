class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://treemand.dev"
  version "0.9.9"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.9.9/treemand_darwin_amd64.tar.gz"
      sha256 "ab7f0f7a6033fc9da795c9e7ea7aac5636e106868ca25f3709d549b669fc1086"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.9.9/treemand_darwin_arm64.tar.gz"
      sha256 "e61b776e2f2f58a1445a7f40865a32a46a20cbba52598a8157e2a456773d950c"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.9.9/treemand_linux_amd64.tar.gz"
      sha256 "89da4443fac2cb29252db7466fe0ac0053f90785a7ee25b6c3083223caae8542"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.9.9/treemand_linux_arm64.tar.gz"
      sha256 "bf0d6d110112491992674d9b646137e95de999a907198708f6eb5f20a2fc9bec"

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
