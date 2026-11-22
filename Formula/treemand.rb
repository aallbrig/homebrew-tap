class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://treemand.dev"
  version "0.11.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.11.2/treemand_darwin_amd64.tar.gz"
      sha256 "17385ce232ecb58d9847d152d79c8d21ba9144087896b32d4abbe4b118a0a15d"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.11.2/treemand_darwin_arm64.tar.gz"
      sha256 "9e156b4955ae6927b961aa2791941bae2fd97d1ea02f447561e41dbbc1497997"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.11.2/treemand_linux_amd64.tar.gz"
      sha256 "06d8adaff3b67a438ae12419a6b365b0a6ed5f85bbfe83b52eb03f15785ffaae"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.11.2/treemand_linux_arm64.tar.gz"
      sha256 "4df90caa58b7f37150e1fc658878bb65aefe93a960f987e5f0f6b3cf949170b6"

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
