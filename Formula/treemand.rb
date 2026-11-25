class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://treemand.dev"
  version "0.19.5"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.19.5/treemand_darwin_amd64.tar.gz"
      sha256 "2936b6488f38b19c3991ada91906b66a18c8de70c42f817c94c1027d6157f6e1"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.19.5/treemand_darwin_arm64.tar.gz"
      sha256 "9d5533a6166f000fc4d5b43899dabb4623f4db6593a42a10628944f648c925f0"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.19.5/treemand_linux_amd64.tar.gz"
      sha256 "e0050b5b727dbf9b2b5e0106d179518ca4f3661e41e9d689171794c5103b02a1"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.19.5/treemand_linux_arm64.tar.gz"
      sha256 "aa530095c6e6943e5a207d393da8bcdf76075e895cbd5ed5d4aa92c32805e176"

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
