class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://treemand.dev"
  version "0.17.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.17.0/treemand_darwin_amd64.tar.gz"
      sha256 "aefb5942cb668194327779e7474c9ab880d9510d32d9f8b3eb6dc66d8a7dda26"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.17.0/treemand_darwin_arm64.tar.gz"
      sha256 "3173a9383f8daa5431034bb70875457d3559f1816ecbd129964cab232167c5f0"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.17.0/treemand_linux_amd64.tar.gz"
      sha256 "12480fe08f811a8fae999c44ca3a38f81e44d090cb9e71c959dd57a01b84880f"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.17.0/treemand_linux_arm64.tar.gz"
      sha256 "0724a69582cad6f4172108d490cea4e77a14a9888692798c646aee921cff0acf"

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
