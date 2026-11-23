class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://treemand.dev"
  version "0.14.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.14.0/treemand_darwin_amd64.tar.gz"
      sha256 "03525394a1664d4aebf8f588a51f9179852dfcc522adc9c12a945bc8ca3b56ce"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.14.0/treemand_darwin_arm64.tar.gz"
      sha256 "4928ce50ce087a67fe61924dd260414a48f143f4995f80160209f304aa1e5ed0"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.14.0/treemand_linux_amd64.tar.gz"
      sha256 "ad8b6857d7ecfe84b0a9d5600294eb137a22d3b62556de45d5da210268361bbb"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.14.0/treemand_linux_arm64.tar.gz"
      sha256 "13e081e7ba729c6e2e7848c7eec44a18616de8ab2e0820d024586319a139bafe"

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
