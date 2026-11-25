class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://treemand.dev"
  version "0.22.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.22.0/treemand_darwin_amd64.tar.gz"
      sha256 "a1c89f6d9f04d70cbecb15f4f02db3f6d54d75257ee758e86c3c8f9d3d9a6d4d"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.22.0/treemand_darwin_arm64.tar.gz"
      sha256 "80f21d8914baae0566045a06edd14711110100ba22c687a85d287cf2f39268a8"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.22.0/treemand_linux_amd64.tar.gz"
      sha256 "5b563017adb005916a61260bc56bac3b513b7f1e5afa58b2a057516d4f1a4749"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.22.0/treemand_linux_arm64.tar.gz"
      sha256 "001476f96b50e3fb7790468b8e0ac3ebd3b185116d3d739ea7798d0ab5a002f4"

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
