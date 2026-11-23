class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://treemand.dev"
  version "0.15.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.15.0/treemand_darwin_amd64.tar.gz"
      sha256 "db833be8ac15e849dee4e7edc0ed35dff1de12a9ce427b90c8c6fcbbbaa7e26c"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.15.0/treemand_darwin_arm64.tar.gz"
      sha256 "3179030060977ce64bfec4df933720f3df797ebe81717bf92b194479be790a1c"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.15.0/treemand_linux_amd64.tar.gz"
      sha256 "d40c228bb690970ef05bad888c5671bf286681658bf72985012a0d9e1b823631"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.15.0/treemand_linux_arm64.tar.gz"
      sha256 "49ba0e1a4fe94dce535dbc398c5fa58f1691e451a621bcf0e84d2175071b8bc6"

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
