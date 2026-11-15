class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://treemand.dev"
  version "0.7.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.7.2/treemand_darwin_amd64.tar.gz"
      sha256 "0d7bbc59dfb5e0b4fdf8b0df839cc211fc9e09f2cddd3cd23906850301be0124"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.7.2/treemand_darwin_arm64.tar.gz"
      sha256 "9adc7a6663356d3dbf0a8db738180799becc08697d1776eba417ac9750973a65"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.7.2/treemand_linux_amd64.tar.gz"
      sha256 "b3e90f125aa49274e4ffd0beacd86547e9f5dc619f5f4e2334c31558ad103d95"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.7.2/treemand_linux_arm64.tar.gz"
      sha256 "52a5018574e8fa116148199dcb219fb3ded36d31a948c8db2f35f9cf333e534c"

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
