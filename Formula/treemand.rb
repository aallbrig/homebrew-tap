class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://treemand.dev"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.8.0/treemand_darwin_amd64.tar.gz"
      sha256 "03ad6c4c6ecd0cbc0ff4652e2ccf8319e5a28cdab2dbb17f84b7ca540683feac"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.8.0/treemand_darwin_arm64.tar.gz"
      sha256 "b2ee339a207af6916ec4f2c1fb2d5f4103a476ee7deac589435f645d4e14a34c"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.8.0/treemand_linux_amd64.tar.gz"
      sha256 "6f4aa975a00d978ed12aefbe02906f3d3336ca11c8e240adcc44f40a47b42fec"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.8.0/treemand_linux_arm64.tar.gz"
      sha256 "90e89a123d1396df55f108d0bca590342b48332e7827dad0240a678669711aa8"

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
