class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://treemand.dev"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.9.0/treemand_darwin_amd64.tar.gz"
      sha256 "f9d6c9dfeb5d55c5ac4f3edac69becd83e10da4647d5d2486ea7a09723eaac32"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.9.0/treemand_darwin_arm64.tar.gz"
      sha256 "dee87a61cc50cfd780580510ee36433a7b04339fc07a53579af4e9e9dc87690d"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.9.0/treemand_linux_amd64.tar.gz"
      sha256 "eaa014eed8ad685806d8e2cabfdce7bdf7bb7f9aa7ae3eddebafd572c612d59d"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.9.0/treemand_linux_arm64.tar.gz"
      sha256 "1dbd57932699f6eb1c5948ee879b6f8289879e71772ddfcea88e4de0705d0da8"

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
