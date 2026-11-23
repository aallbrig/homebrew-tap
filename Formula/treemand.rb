class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://treemand.dev"
  version "0.15.5"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.15.5/treemand_darwin_amd64.tar.gz"
      sha256 "c647a9d0ac1da9ec2a1eb3415e5307c1ecaf698a24e9cb91c0e23d4385464559"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.15.5/treemand_darwin_arm64.tar.gz"
      sha256 "312f59050c3012316fa70c3387b9e3056145215acdcb5615af168e30de0ccc3e"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.15.5/treemand_linux_amd64.tar.gz"
      sha256 "e31ed0730dd4dd46482103056de9c4fb2ed1f163250e4fb1ad1c9f9c9ccac772"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.15.5/treemand_linux_arm64.tar.gz"
      sha256 "3da8fc30e092a30e45e2de20c9268cba2d9ef61accd375530c3c72778cd5b339"

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
