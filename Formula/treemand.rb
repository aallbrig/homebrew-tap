class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://treemand.dev"
  version "0.20.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.20.1/treemand_darwin_amd64.tar.gz"
      sha256 "64a682c9c1cbc5cfd997a8613f97b506d2632d87e32345f6e58ea35824816091"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.20.1/treemand_darwin_arm64.tar.gz"
      sha256 "c3c71dad016cf655aba371a969ffa78d200104151d99a0c157518197a677cf22"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.20.1/treemand_linux_amd64.tar.gz"
      sha256 "94cfc6e1ce81ad2bfa2f72393d0bd1c31efbea306085c885cfd8bdde42151c9d"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.20.1/treemand_linux_arm64.tar.gz"
      sha256 "7b4d59d31cc21d30714ea7407709c1091bb42bf7b6dff7836d71823e850858bf"

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
