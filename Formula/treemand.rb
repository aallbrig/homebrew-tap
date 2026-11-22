class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://treemand.dev"
  version "0.9.6"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.9.6/treemand_darwin_amd64.tar.gz"
      sha256 "be194dcf5e5db73936554121faa32ef66dd883d0f68171762f955d571ba67ac6"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.9.6/treemand_darwin_arm64.tar.gz"
      sha256 "1c53a97f5208954d7ccbda16dd30e00da9800cbf0863c9175407657372bd81c7"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.9.6/treemand_linux_amd64.tar.gz"
      sha256 "f814c5ad03d00d53c15f8402e0c2ff8ae7038e77ab76d7d4dca63b46f76d77b3"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.9.6/treemand_linux_arm64.tar.gz"
      sha256 "7adaec5648a339bee7b0c70ec6d89c5252f61af9e71d16bf4654418e9c736062"

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
