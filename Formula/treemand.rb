class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://aallbrig.github.io/treemand"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.3.0/treemand_darwin_amd64.tar.gz"
      sha256 "7a9344d04d6e0b589e7476160facd12b02263ccc552544cd3051c4ea68985693"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.3.0/treemand_darwin_arm64.tar.gz"
      sha256 "2b2734472f5fb84359532f2de986b911c1a73e77875406453160edc1cf7cc38c"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.3.0/treemand_linux_amd64.tar.gz"
      sha256 "b8056653364345fdda678fb6c1747feab448e3e8ac26d858e082d3f38e65f6a3"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.3.0/treemand_linux_arm64.tar.gz"
      sha256 "25bbb3f30952adc44925e2981866579da193aab77731b3e88da875956a03d941"

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
