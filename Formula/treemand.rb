class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://aallbrig.github.io/treemand"
  version "0.6.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.6.2/treemand_darwin_amd64.tar.gz"
      sha256 "b1150bc675e542ff6fe447f9d4cd83d6b3db7ee2c84ecfbde158e6b8ce9a096a"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.6.2/treemand_darwin_arm64.tar.gz"
      sha256 "1f749a847d0392bce8f9f8123ee65de11b688f6adecb4afdf9b54ad19b50b002"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.6.2/treemand_linux_amd64.tar.gz"
      sha256 "fb0bb65d4b71f662f53572bb8f6f763fd327f1f443231fccb5e4d5598a18f244"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.6.2/treemand_linux_arm64.tar.gz"
      sha256 "97aab1b35e9137c6fe03a253950bf2d6836419a2d2fde2021957a0ee3364767c"

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
