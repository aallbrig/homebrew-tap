class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://treemand.dev"
  version "0.9.7"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.9.7/treemand_darwin_amd64.tar.gz"
      sha256 "6aba5f5d6ff48fe9b935f78b05729030497bfeeda2cf992bd724a208d2eb02cf"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.9.7/treemand_darwin_arm64.tar.gz"
      sha256 "45ccc82b602861bc6f904a1ce07dd69b51326bfe1da9b7930bc081e092863ec5"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.9.7/treemand_linux_amd64.tar.gz"
      sha256 "b0a1dfcf36cef3d80f9c92cdb054f5e8deedfa00cfb0d704bf5e75113f0ffe4a"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.9.7/treemand_linux_arm64.tar.gz"
      sha256 "f08265d48f6716e26af96232e6ae3f3673c34817c41fa2bca91ce6db92b40b31"

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
