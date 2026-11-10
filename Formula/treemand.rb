class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://aallbrig.github.io/treemand"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.5.0/treemand_darwin_amd64.tar.gz"
      sha256 "00c92b8215a1ad6efa4f81fd585a5e0727ca35d36a6ffa67c86187c2381f190e"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.5.0/treemand_darwin_arm64.tar.gz"
      sha256 "6c3658f88a93a528dd8752ae82c2220ad00d061a0245834e894906db10b536e2"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.5.0/treemand_linux_amd64.tar.gz"
      sha256 "2b2619ebe61a226f1bec1aa60e345740a67fce1e63860473d97ce101a0873c38"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.5.0/treemand_linux_arm64.tar.gz"
      sha256 "ebc052dc946cca2aa9db6ce994378121aca9cad9a4466562862720f80ced5f01"

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
