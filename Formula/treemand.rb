class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://aallbrig.github.io/treemand"
  version "0.3.9"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.3.9/treemand_darwin_amd64.tar.gz"
      sha256 "e60290c539b57109295ec0a0f033a2d7ea41c2175bf92f0aaeab5e32fabae57a"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.3.9/treemand_darwin_arm64.tar.gz"
      sha256 "e143d97d5a1f7c3612b4d8bbfd770f04d91ecd4455dcdcc9bc5f3a10a1fbb81b"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.3.9/treemand_linux_amd64.tar.gz"
      sha256 "ce97f5fc107b9e887a92fbaa8d056679f2d2725f233b9a22abf6eb373722b118"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.3.9/treemand_linux_arm64.tar.gz"
      sha256 "0c9d35c2faab42b22ebe6ca9dddf072203bc62238946ff9568f2099398eb7531"

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
