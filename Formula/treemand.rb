class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://aallbrig.github.io/treemand"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.6.1/treemand_darwin_amd64.tar.gz"
      sha256 "9b5a1730c51f3f11ac68b3f6d593277609617f9a0e5ce5bc85be039a68312f4a"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.6.1/treemand_darwin_arm64.tar.gz"
      sha256 "5fb8e3b20f883ba9ac17d92bc94603f689da6de1c98a22e2973f863b64e46e82"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.6.1/treemand_linux_amd64.tar.gz"
      sha256 "abb35102625b3aebcf1345c99d5dcf71863ff2cbc167d4f4c75ff1157a644554"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.6.1/treemand_linux_arm64.tar.gz"
      sha256 "848b5d1d4f79a71110564fff219a6bcdfa83c69d8b54b07585541833aaf3f274"

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
