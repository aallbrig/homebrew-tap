class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://treemand.dev"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.7.0/treemand_darwin_amd64.tar.gz"
      sha256 "cf228900f885fadfb3547f55af52b9f6b8308f56033889886b1801e27f0ed168"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.7.0/treemand_darwin_arm64.tar.gz"
      sha256 "8bf5464a38506422fe9ad7042db6bdaa8fcaa2b2502d3f01f6016c0694078de2"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.7.0/treemand_linux_amd64.tar.gz"
      sha256 "46c06a713291880a565298552d04c513558c0d221851e77ebceb7f908f62f69e"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.7.0/treemand_linux_arm64.tar.gz"
      sha256 "838f310abc9dd103edbae0d2f8a6871cc3ac0e5238bb95250acdd56eaf3442d7"

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
