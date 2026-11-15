class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://treemand.dev"
  version "0.7.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.7.1/treemand_darwin_amd64.tar.gz"
      sha256 "0f3c4d1673b61a46c2d7837d68ab922e944e2625b63512d399fd73b1e1985d96"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.7.1/treemand_darwin_arm64.tar.gz"
      sha256 "7605b298f9561c577c63b6011cdb9b004fcd2ec5a3d0572dd5c145f9cbf1aeef"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.7.1/treemand_linux_amd64.tar.gz"
      sha256 "4c51ce44d21752eb549f3154c07505a231704ad599e28dc835e68267e1e49c41"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.7.1/treemand_linux_arm64.tar.gz"
      sha256 "4411faf593dcd158c5b93be46698f41dfe80586dfd40ae6d7d0ef6a184e18852"

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
