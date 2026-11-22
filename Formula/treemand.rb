class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://treemand.dev"
  version "0.8.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.8.4/treemand_darwin_amd64.tar.gz"
      sha256 "6e1ff72fba2cbf1d76a4ae9e0be6889904a3a3da5b384abb28a9ce49aaf9e23b"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.8.4/treemand_darwin_arm64.tar.gz"
      sha256 "be6f2bdf30c7d0e368cc7702072d3d8494becdd0a921074d09f6834941a97eb4"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.8.4/treemand_linux_amd64.tar.gz"
      sha256 "352eb3796344ea5e8c9d675d837aa06085cae01f4c820fd30ce75c4e3eaab005"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.8.4/treemand_linux_arm64.tar.gz"
      sha256 "e88183236ded57021dfc0fa109bd874175ad810c0b14b920bb2bd549520bd19c"

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
