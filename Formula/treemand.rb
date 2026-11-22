class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://treemand.dev"
  version "0.9.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.9.2/treemand_darwin_amd64.tar.gz"
      sha256 "05ddcfb803a07772c9417007366613f2ea87306b16eed3576774fe57ee43d27b"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.9.2/treemand_darwin_arm64.tar.gz"
      sha256 "d861e4a500f0f77c48aa3549e1dc4aad905c5df09eda485df44c515877cac8c6"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.9.2/treemand_linux_amd64.tar.gz"
      sha256 "d9880ccf3551f20f51a3d1f4208cc264c6f61ac8a72058251569e97e5eab198a"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.9.2/treemand_linux_arm64.tar.gz"
      sha256 "6f3e5bdc7cb427ccb7bb375208d6755a63044f4a2ba8fb341e71df5501ff7e1a"

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
