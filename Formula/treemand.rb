class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://treemand.dev"
  version "0.9.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.9.4/treemand_darwin_amd64.tar.gz"
      sha256 "d28547392600cf98e22bab119247209afef63ad4400d42e946adac06f0494836"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.9.4/treemand_darwin_arm64.tar.gz"
      sha256 "1d90b476b04d9f905d7fc8515efa2743832384e52d32698c2b581a2b5c292ee7"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.9.4/treemand_linux_amd64.tar.gz"
      sha256 "20d3cff112a813c1788a7d72e5762514baf4ae70a9e61ec524222c2f1974e4b4"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.9.4/treemand_linux_arm64.tar.gz"
      sha256 "8362ed2143b5b49a630066a778afe0eba839cd64dcdba082127c2ac2dc061f08"

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
