class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://aallbrig.github.io/treemand"
  version "0.3.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.3.4/treemand_darwin_amd64.tar.gz"
      sha256 "2ac5b210c7d74f1e1b5728dbde4a442faca26d936629aacea7625c2f8ff21e68"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.3.4/treemand_darwin_arm64.tar.gz"
      sha256 "579f08c5f83f25dfe2f5a9f20a5f8f27d8b2aa0ee4e9137d145c2e163806ec52"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.3.4/treemand_linux_amd64.tar.gz"
      sha256 "884c2f35d82761a64a9a5bd41111b64d32954a58a268b3a77f628d9c1368c641"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.3.4/treemand_linux_arm64.tar.gz"
      sha256 "4f6644d536992ac46f72478a6ac45417e1342a53f0b567cd957758efe02dae01"

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
