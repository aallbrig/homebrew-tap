class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://treemand.dev"
  version "0.19.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.19.1/treemand_darwin_amd64.tar.gz"
      sha256 "d8289f53b4799663f4c38df717f4cbcb6997f1c19d1dd891edc111c9d27ef69b"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.19.1/treemand_darwin_arm64.tar.gz"
      sha256 "3821ffe04199ad8b9ec80a3007bf5fab2dcbd1c06bf785d99c4928acd906c126"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.19.1/treemand_linux_amd64.tar.gz"
      sha256 "808afe1796b331706ffccfb1040219503697303f3d5771fa3adbbbe577a58124"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.19.1/treemand_linux_arm64.tar.gz"
      sha256 "fbc8b519afb42bcfe0c03fdedf147776cd6cb92b78e4fc067d91a41fa367e608"

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
