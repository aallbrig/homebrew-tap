class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://treemand.dev"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.12.0/treemand_darwin_amd64.tar.gz"
      sha256 "235dc6139b38a53bf3556ba46c9aaa612bfad9c674b4568d914630211d907943"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.12.0/treemand_darwin_arm64.tar.gz"
      sha256 "4f0d2384544cf34a30841e5d8e0c3267cd62a836e55c0b8ab2fd551a9aa33dac"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.12.0/treemand_linux_amd64.tar.gz"
      sha256 "7eeb69b930f62b2af41663c2badf5e58e3e5fde6de0d738b23f161320121d5ea"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.12.0/treemand_linux_arm64.tar.gz"
      sha256 "302ad3379112e9916dc63da62feb543894dd7a5b5d4390c0df4d4bbb0c0f8168"

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
