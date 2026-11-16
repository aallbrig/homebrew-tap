class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://treemand.dev"
  version "0.8.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.8.1/treemand_darwin_amd64.tar.gz"
      sha256 "62423142b507b6b55df3edaee800712de5363d7d76d28a066059a2ea767e9af1"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.8.1/treemand_darwin_arm64.tar.gz"
      sha256 "cb54edef36a81dcd18b0263064bd042e13e91fe8df5459296b3863470273e3cf"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.8.1/treemand_linux_amd64.tar.gz"
      sha256 "9b631d75319f068f5ede6d802ec853f54284365a6e6333c569749223c0d6b530"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.8.1/treemand_linux_arm64.tar.gz"
      sha256 "bba4737688246b61d5920d0b9e4542a80f9a7118c1491393de5c925bd02e734c"

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
