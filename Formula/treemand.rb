class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://treemand.dev"
  version "0.8.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.8.3/treemand_darwin_amd64.tar.gz"
      sha256 "657ee546ae041e0769a89214cb8035914328d852652ef658a42ac3a7fe63fa65"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.8.3/treemand_darwin_arm64.tar.gz"
      sha256 "c406247ae501a3d121c6e88e05ded7479305bd7b33acac6362be13eb3f95bf46"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.8.3/treemand_linux_amd64.tar.gz"
      sha256 "118cb4c9a26ad0dc61752828ffd42c92d5acae26aef2c666c752dbc19e8e14d5"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.8.3/treemand_linux_arm64.tar.gz"
      sha256 "a0dce3367705022672315d812357595edf9cf8432eb79fcfd045512ff4ccc25e"

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
