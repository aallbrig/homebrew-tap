class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://treemand.dev"
  version "0.18.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.18.0/treemand_darwin_amd64.tar.gz"
      sha256 "20f5f5a6b08f47095a923c9e61557abc811e6dcef8201b836880d3877e9f86ee"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.18.0/treemand_darwin_arm64.tar.gz"
      sha256 "0517d00544358b06c5d17e92ff3cb55caa32e043c1a01c260e9b6a8e4f3fc0a6"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.18.0/treemand_linux_amd64.tar.gz"
      sha256 "2c83e62dd2b8269015ed62470102effea9e395791d32fcda05d915dd585827d3"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.18.0/treemand_linux_arm64.tar.gz"
      sha256 "166a2c02e272be40291fb1fc2b374d0467ac2b7be6845a33cb0edb69eaa7211d"

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
