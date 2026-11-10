class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://aallbrig.github.io/treemand"
  version "0.4.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.4.3/treemand_darwin_amd64.tar.gz"
      sha256 "eac2197332b4e5092122cc20eb9b71d98bd4961e23463fa06766062e510fe09b"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.4.3/treemand_darwin_arm64.tar.gz"
      sha256 "ee691b9187bffaa2a83294ae0b687cf36e1bfcee94e127b4d63dc7083e57dddd"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.4.3/treemand_linux_amd64.tar.gz"
      sha256 "fb7d07d20b3f33abad0728fea21eb091541a6211a6e305a677d1ef964b7e2f55"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.4.3/treemand_linux_arm64.tar.gz"
      sha256 "c4efa038ef0d6599fa168a21ad0b70645cff857f8a657b5fdc79447ca4205ac7"

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
