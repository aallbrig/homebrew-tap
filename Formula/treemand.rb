class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://treemand.dev"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.10.0/treemand_darwin_amd64.tar.gz"
      sha256 "d866f5cb00eedee7b1faad130227d1e5dc69064ee1fef4b649579f20f4045bab"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.10.0/treemand_darwin_arm64.tar.gz"
      sha256 "046fe2c5ff98f640710e8367492e6c3053378714a169def4cc01684fda30d189"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.10.0/treemand_linux_amd64.tar.gz"
      sha256 "4b1ca3e12bdd54bc3462957034a5f5935a604b52a4629dbb1d39552889a609e4"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.10.0/treemand_linux_arm64.tar.gz"
      sha256 "ddc966e562a9568c548db4ac19c5cd7c25240101ab149678714fb423693579ab"

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
