class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://aallbrig.github.io/treemand"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.4.1/treemand_darwin_amd64.tar.gz"
      sha256 "d699816d66311717837fb27248a99e0d1951997342e4e762eaab9eded0b3fb20"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.4.1/treemand_darwin_arm64.tar.gz"
      sha256 "eccfd203e004d4830354e88e4547d70d3e449357e6d5b3482826764c86d4f9e4"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.4.1/treemand_linux_amd64.tar.gz"
      sha256 "0183d923e7c396cd7c877c14a955ea5b784e1f968cb74a67a121584f02dbbc04"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.4.1/treemand_linux_arm64.tar.gz"
      sha256 "98bf67bd0f0fb9dfc989b0a6f84c81a772a66bd3e1f8967fcfe967274835a748"

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
