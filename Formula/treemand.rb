class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://aallbrig.github.io/treemand"
  version "0.3.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.3.3/treemand_darwin_amd64.tar.gz"
      sha256 "b5d4b615d599d346bacbd1a995f67eb9c65b445764201681a37d95e52457e2b3"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.3.3/treemand_darwin_arm64.tar.gz"
      sha256 "38a94733ee82544eb8c61dee7e5423e4bb7c06f12cd580dc1a7e6aad430e66db"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.3.3/treemand_linux_amd64.tar.gz"
      sha256 "f6c3760618c4f5ca66405560f1951336fc263f5fb0de74ad39d5ce6b770c2e40"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.3.3/treemand_linux_arm64.tar.gz"
      sha256 "81b083c98d90df02e869ebd8d05412c8503530a76bcf83ca32f6fb85f0a8e5dd"

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
