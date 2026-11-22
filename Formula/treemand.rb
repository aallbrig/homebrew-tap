class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://treemand.dev"
  version "0.9.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.9.3/treemand_darwin_amd64.tar.gz"
      sha256 "9f70095ce5f1d753e03bb859a37bca85f2365079f4ed3cb6c5e0f4a6ff7fcd40"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.9.3/treemand_darwin_arm64.tar.gz"
      sha256 "371c09ccfe3b4a4fa8f0dfdf4fe494136101b1d1c16ea91dd5a9643fb8a3f159"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.9.3/treemand_linux_amd64.tar.gz"
      sha256 "5afb16c0a2802ab093b9268fb5304753f952b99d9ddb529791edec34b96d2ab0"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.9.3/treemand_linux_arm64.tar.gz"
      sha256 "cae12f11e29eb61123764578195283c8aeff54385a990dcd866e041223fb3177"

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
