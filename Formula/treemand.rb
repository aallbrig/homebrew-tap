class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://aallbrig.github.io/treemand"
  version "0.4.5"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.4.5/treemand_darwin_amd64.tar.gz"
      sha256 "648001debcbe338d86da88242749a5eeca2a8731da3350567391c91980b1f005"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.4.5/treemand_darwin_arm64.tar.gz"
      sha256 "717da7d5cabeac3778d535d957c1512142dd5a900212639532541e84c002c94e"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.4.5/treemand_linux_amd64.tar.gz"
      sha256 "2ad45b7b63edeac053eb246614cb9277d7bbcd8647aa1998898037e6619d7507"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.4.5/treemand_linux_arm64.tar.gz"
      sha256 "4af1dd4454e92d03d86917c8cb189a2c367175adf5d926d2d10a9e79cdddccf7"

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
