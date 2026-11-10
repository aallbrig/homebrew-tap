class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://aallbrig.github.io/treemand"
  version "0.4.6"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.4.6/treemand_darwin_amd64.tar.gz"
      sha256 "2f63da98c37e305c8a44159c62631e34cab90dc261a11229e9e4dfaa1c790772"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.4.6/treemand_darwin_arm64.tar.gz"
      sha256 "4a0f60eb913eef43067e8a5ff3537e5763d1a5161d03b2a916d953c1e80d439c"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.4.6/treemand_linux_amd64.tar.gz"
      sha256 "c507e27936c95a391ac62b9250583bce45e38327588b99d4dde08dcc65530c56"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.4.6/treemand_linux_arm64.tar.gz"
      sha256 "8f8d767da65ec219dd916204f1bea5418a47fd582f988efb6561fc3e6f3359bb"

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
