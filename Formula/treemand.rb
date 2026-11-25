class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://treemand.dev"
  version "0.19.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.19.3/treemand_darwin_amd64.tar.gz"
      sha256 "4576debd7b3c8b6a2ca42b6482d800b859d98a6ada6c49fead55c684e5185df0"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.19.3/treemand_darwin_arm64.tar.gz"
      sha256 "1ac2ef28c37e157cdb81198360c449434fed2bebec1792f8f352c451f8b6725c"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.19.3/treemand_linux_amd64.tar.gz"
      sha256 "6371efd2bdd6f75ca4451250d58fc8da36920679a650ef5ae50f847df6c55c35"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.19.3/treemand_linux_arm64.tar.gz"
      sha256 "d46888d93c1407d611ceb5aefed6ef571456fdc2f52522df4f255c662007e4a0"

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
