class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://aallbrig.github.io/treemand"
  version "0.3.5"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.3.5/treemand_darwin_amd64.tar.gz"
      sha256 "7295d8364ab5e659e3e6de35bbc41f6a34059b0b498636f510c0509f856b7f3d"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.3.5/treemand_darwin_arm64.tar.gz"
      sha256 "cc204b89badd08c0bcae2a73408d656d7e791660c342583663bfaf4b2539a5a1"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.3.5/treemand_linux_amd64.tar.gz"
      sha256 "1e6e9f5d2ccc9b987cc42320611ea52a1aca681855003b372838b6d514cf290b"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.3.5/treemand_linux_arm64.tar.gz"
      sha256 "f9e74348a66b6f84f256948d96a275ec7b1ff13fb9e06a12b2eb0950411ee765"

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
