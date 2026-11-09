class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://aallbrig.github.io/treemand"
  version "0.3.7"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.3.7/treemand_darwin_amd64.tar.gz"
      sha256 "303f1894339fa8c672696bf9d0a66ae9ce225a3b2dfd68a06ec317ba0124d048"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.3.7/treemand_darwin_arm64.tar.gz"
      sha256 "bbd5a8fd6e544a0615ea2185a255780377776a66df9588a3aec7e55069dfa655"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.3.7/treemand_linux_amd64.tar.gz"
      sha256 "4f104d6cda04ae956e716ea87e03d132ed3580b778fe117b4141dc2efa3a81e9"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.3.7/treemand_linux_arm64.tar.gz"
      sha256 "4bb8f1546369b1cb8359391c0b1fe194afb20b9569014043c1083d5ef54b234a"

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
