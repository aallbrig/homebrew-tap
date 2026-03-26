class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://aallbrig.github.io/treemand"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.3.1/treemand_darwin_amd64.tar.gz"
      sha256 "d6655ebf9e0382c88e1cfee085c168c2108156f8b8c8fbf2de7257189d326a63"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.3.1/treemand_darwin_arm64.tar.gz"
      sha256 "646d51f8e3cf3b585a1d9dfe8d382057293c239cd3c39b61a9a821ef53dc44f2"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.3.1/treemand_linux_amd64.tar.gz"
      sha256 "4eaa1b52e52e3945d95005e44a6fab1cfa52a5259d90f229986ad9d6f4db76aa"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.3.1/treemand_linux_arm64.tar.gz"
      sha256 "76d73c125f781f9ed56f1d07ffdfc05cf9fb48caf0b502897dc88ae478d77a0b"

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
