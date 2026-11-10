class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://aallbrig.github.io/treemand"
  version "0.4.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.4.2/treemand_darwin_amd64.tar.gz"
      sha256 "28e75d93d5140500544f41154316c7a3a032fcfc4e0b878d57053c51f8162c7e"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.4.2/treemand_darwin_arm64.tar.gz"
      sha256 "848be4e1ddd1a61410663de820524e5646a4a164eab9294ec1aacb065654e8c8"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.4.2/treemand_linux_amd64.tar.gz"
      sha256 "24db2466e118f7f8a368d613a8a1aef71ffd71894740524d61c480646dda3016"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.4.2/treemand_linux_arm64.tar.gz"
      sha256 "b141f73ad31d6d9a3c680e4d5e7a529431d13416a282de62f6211249d60782d8"

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
