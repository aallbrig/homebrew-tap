class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://treemand.dev"
  version "0.20.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.20.0/treemand_darwin_amd64.tar.gz"
      sha256 "d6ecf970be764760b20ef9185b25538c4878b6a8653fdf79aef680c083123ce5"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.20.0/treemand_darwin_arm64.tar.gz"
      sha256 "96cc11f96964ee7c6447ed7bec035370d82288429b8e5afc93ce93cfe6af5e7e"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.20.0/treemand_linux_amd64.tar.gz"
      sha256 "75e3dca03c85fed5929fa24d47b5b06956f1d16e13fd2c222030a81eb4a60dbe"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.20.0/treemand_linux_arm64.tar.gz"
      sha256 "5cd76f8c79b156eeeb3dc70acd02cf44ab2cfc36cca27e61c5a08545b4f71feb"

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
