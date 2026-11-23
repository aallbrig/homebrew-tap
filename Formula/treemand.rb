class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://treemand.dev"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.13.0/treemand_darwin_amd64.tar.gz"
      sha256 "4a33ec11dd72aa848c1387017874ecebbc7effd4d1403b2fee32e9abb82231f3"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.13.0/treemand_darwin_arm64.tar.gz"
      sha256 "cf245d32897e7f5ed29ee2d9bf8a166dec5b65ff3867b6e77173ea196ca39db2"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.13.0/treemand_linux_amd64.tar.gz"
      sha256 "638acde45e1c330f610c0e4ba96e9c9e1feba0d282a00ec6ddf18bb4a31787f2"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.13.0/treemand_linux_arm64.tar.gz"
      sha256 "dd5ff3036736af81aaab64897d88474c97de8b5ef522a36848101351012db1b9"

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
