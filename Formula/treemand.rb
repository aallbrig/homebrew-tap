class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://aallbrig.github.io/treemand"
  version "0.4.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.4.4/treemand_darwin_amd64.tar.gz"
      sha256 "571d137425d71269be88c18815675c967ebb2585733208810781156215f00acf"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.4.4/treemand_darwin_arm64.tar.gz"
      sha256 "813ccdfb95f03ba984f5a04ead9f6015cba5f86e07689b792b053f1cae0dbb20"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.4.4/treemand_linux_amd64.tar.gz"
      sha256 "26355d9bb1666611f2606a4455685a7ec5f75e416c5ce63f6e02ee0a62c98668"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.4.4/treemand_linux_arm64.tar.gz"
      sha256 "e38009f8417a52cd9c320dd507e48b92f0f50ca5d4dbdd8da592e1dc2c3a9ce1"

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
