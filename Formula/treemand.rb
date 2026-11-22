class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://treemand.dev"
  version "0.11.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.11.3/treemand_darwin_amd64.tar.gz"
      sha256 "c299af83d46f70f44bef165b0ef0913930f1cfdaac991f117a19e8f6902e3c17"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.11.3/treemand_darwin_arm64.tar.gz"
      sha256 "d061050f45baad218904dfa843aab5007f9f7350ae53c1482e6a1bd167d785f3"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.11.3/treemand_linux_amd64.tar.gz"
      sha256 "7cdad4285da83bdea2ad25d6445d74259020c2805ca225503fe87c3c304da7ac"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.11.3/treemand_linux_arm64.tar.gz"
      sha256 "3e1f14af6a445c4c1e9b8cfb20dd43a79e8a26072ace67b9e2d60fe3a9986f38"

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
