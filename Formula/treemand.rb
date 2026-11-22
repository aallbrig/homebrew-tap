class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://treemand.dev"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.11.0/treemand_darwin_amd64.tar.gz"
      sha256 "1fc17b13fd5d62f4479f800502556718eba4a3c7b343ac9026837f403d2da8f7"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.11.0/treemand_darwin_arm64.tar.gz"
      sha256 "48f444e01f064c506c22730397e00fe69d506629e97a76a2622ec041605433b9"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.11.0/treemand_linux_amd64.tar.gz"
      sha256 "210caed39f0e6eb48de9cf1c25482b74798b36229765f53b5ca5b9e87715254a"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.11.0/treemand_linux_arm64.tar.gz"
      sha256 "569aa6cb3c4a92fdb6bff1ccbaf95a43d1f7dc82cf5fad1aab5555edb6a298c6"

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
