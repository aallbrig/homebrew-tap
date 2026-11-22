class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://treemand.dev"
  version "0.11.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.11.1/treemand_darwin_amd64.tar.gz"
      sha256 "87fd320c60127f0ceaa1a0401be0e68fc37e35b31f91c2e8b3dd7c2acb72dd91"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.11.1/treemand_darwin_arm64.tar.gz"
      sha256 "de33b1f80ddcd34a782345eeec27f91bad933b8fabaadec883d9f5ea2a478880"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.11.1/treemand_linux_amd64.tar.gz"
      sha256 "30988b4f7535d16739778a884a3ffc49c878fedc2a1ff6d0de04e7f75f3a4e46"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.11.1/treemand_linux_arm64.tar.gz"
      sha256 "7f0ced09c4320ae6287319552ca16b116aab8113f65e376f8e2b3444abbf20f7"

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
