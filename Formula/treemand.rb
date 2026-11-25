class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://treemand.dev"
  version "0.21.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.21.0/treemand_darwin_amd64.tar.gz"
      sha256 "3c78c7aa3ab778fdb46d34403119ef83f3d08c43a72f935957449c7598e75b69"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.21.0/treemand_darwin_arm64.tar.gz"
      sha256 "458af63ff8a004ca1c193652df61a77b65d6f8cc9931fcc67bcc8fa977f51875"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.21.0/treemand_linux_amd64.tar.gz"
      sha256 "c09a412b0b60e97ce8dce4e06f501662b01bb3a7889143b414f24b736a99d219"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.21.0/treemand_linux_arm64.tar.gz"
      sha256 "1511c39ac5d65d7415fbe94f04828fa5fd2bb9e84d87f6edeae5e5186aa86778"

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
