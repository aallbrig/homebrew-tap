class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://treemand.dev"
  version "0.10.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.10.2/treemand_darwin_amd64.tar.gz"
      sha256 "66fea2ff91dd17fe19b8d8f3f5f6c645195321e7a25018544718defb25abb4ce"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.10.2/treemand_darwin_arm64.tar.gz"
      sha256 "4abc7c2be359896d5c6ccfa3c28502669502e67f05b2c14973d06829020fa44b"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.10.2/treemand_linux_amd64.tar.gz"
      sha256 "e2c25d760827d548a324b04105f7c36cfd8a8d66729f3000d9691b8dca4b3ae4"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.10.2/treemand_linux_arm64.tar.gz"
      sha256 "f2ec7d8c8b4713df60cd8fd20c60016773cf5596708ead387ad23ec03fad793c"

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
