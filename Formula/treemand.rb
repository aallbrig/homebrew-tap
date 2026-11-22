class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://treemand.dev"
  version "0.9.8"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.9.8/treemand_darwin_amd64.tar.gz"
      sha256 "d5b1f2ef4b204662d8c169fc2fab624b7c71cefda7a3653c0c65f7e287ab476b"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.9.8/treemand_darwin_arm64.tar.gz"
      sha256 "63016c6bd7ca1f710008a7de8801e6444e93748eb0a1a4264d61a20f9059f107"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.9.8/treemand_linux_amd64.tar.gz"
      sha256 "61455db9fac4548d09aad54c9dfb65eedb9254829084c227f50427634a36d469"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.9.8/treemand_linux_arm64.tar.gz"
      sha256 "2554501e1028f7c05b059ee0c88b8c2f374a8e09407c1eb58575c250a6fb9edf"

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
