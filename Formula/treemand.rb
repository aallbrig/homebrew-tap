class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://aallbrig.github.io/treemand"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.6.0/treemand_darwin_amd64.tar.gz"
      sha256 "9d99d00d776eca9b225b450d384081c88990452db8e236b00b72e2c9a2774e7f"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.6.0/treemand_darwin_arm64.tar.gz"
      sha256 "2fb7018f955f946c68cbb7b31c103ef237f643a5be4149923daa4a16eb2bcc9e"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.6.0/treemand_linux_amd64.tar.gz"
      sha256 "07717456687970c1a7e0f9a9ba4447019bfe936e08c1d9b8a57e61e46d3fc0ef"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.6.0/treemand_linux_arm64.tar.gz"
      sha256 "f0d962ee13c7cb59a3a7cd68557453d91f9f352cfaa7b86aad42b81fb559d875"

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
