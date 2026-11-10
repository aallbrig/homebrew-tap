class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://aallbrig.github.io/treemand"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.4.0/treemand_darwin_amd64.tar.gz"
      sha256 "32bd8b689afdcc6f5c46a91a4b4b681bd28d8489b992d3b9d1f13bb27866e44f"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.4.0/treemand_darwin_arm64.tar.gz"
      sha256 "ba8cec467205222a5e392711ff02408adaa8895c828ca42a36cd06295f870f18"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.4.0/treemand_linux_amd64.tar.gz"
      sha256 "d599922d3daf0aa63639b336a805e3f56ba6929a9bfad86c76564f9995f421ca"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.4.0/treemand_linux_arm64.tar.gz"
      sha256 "96562d4e620d2b3f270ac269a3542a03757bde8863eeb3149667ba69d4accdaf"

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
