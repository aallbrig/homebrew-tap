class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://treemand.dev"
  version "0.19.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.19.2/treemand_darwin_amd64.tar.gz"
      sha256 "f506f860f1ce5ef9fa3efcffb371a72ec043f5c5201073110c1c1c1d11f8ec7a"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.19.2/treemand_darwin_arm64.tar.gz"
      sha256 "9b36c29bda7feea0c2ed3fd2369a29b2c6447a05f510589af72c3e2bbca55d4d"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.19.2/treemand_linux_amd64.tar.gz"
      sha256 "406fc285a9cf83f241e30f83b3009543733a97eca145eabedd406e8fbabe20a9"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.19.2/treemand_linux_arm64.tar.gz"
      sha256 "2813942fd9b79ad7227f801babafda45d779696a668b0352ffdadf95005a6c99"

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
