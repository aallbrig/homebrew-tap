class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://aallbrig.github.io/treemand"
  version "0.3.11"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.3.11/treemand_darwin_amd64.tar.gz"
      sha256 "d81127a6a3da107aaa0d132a60cd5b8a3b90e8ece4027e5f291aaff58c8bd693"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.3.11/treemand_darwin_arm64.tar.gz"
      sha256 "6797aff4c251f3fdcf76528e55b13e8616e099cbb2643a686786722592e7b8d4"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.3.11/treemand_linux_amd64.tar.gz"
      sha256 "fae3f72d15b2ce6040ed07fc404cb52ae44f6884b65bea5c825b56df613ed3ee"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.3.11/treemand_linux_arm64.tar.gz"
      sha256 "eb43e98610fa3a01cc12f420d05232d0cb84db7912a8cb08effb23e5d4c2ffad"

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
