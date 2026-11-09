class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://aallbrig.github.io/treemand"
  version "0.3.6"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.3.6/treemand_darwin_amd64.tar.gz"
      sha256 "6755a8f349c86e370bf9ec1180b7079d805563c5a1e80b8a23bef70a274fdfe5"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.3.6/treemand_darwin_arm64.tar.gz"
      sha256 "c48a47af73c39bbfbcfa351332180e754b043f3911775bb3e7e2fade521c58d8"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.3.6/treemand_linux_amd64.tar.gz"
      sha256 "2f57182a9638dc78316218d08c7a2aeba1f12d5885008e6522797db01981c573"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.3.6/treemand_linux_arm64.tar.gz"
      sha256 "f34b11164119a1c232707a87d27323950e790dad171899bebbacbc66ae6dfbd0"

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
