class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://aallbrig.github.io/treemand"
  version "0.3.8"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.3.8/treemand_darwin_amd64.tar.gz"
      sha256 "8cbd5dc885ed7f62b3575cfc833fcd0ea738740996a79fb873829bed09f1d4b5"

      def install
        bin.install "treemand_darwin_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.3.8/treemand_darwin_arm64.tar.gz"
      sha256 "b0e198849bf8b0071db43d0a48c057f6a147ccc3075897651d59a236b4ba832c"

      def install
        bin.install "treemand_darwin_arm64" => "treemand"
        man1.install "treemand.1"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/treemand/releases/download/v0.3.8/treemand_linux_amd64.tar.gz"
      sha256 "a44f465f46679f0032bfeab0f01009d89a92ef56e2d2e84c5d824b5461f3d59e"

      def install
        bin.install "treemand_linux_amd64" => "treemand"
        man1.install "treemand.1"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/treemand/releases/download/v0.3.8/treemand_linux_arm64.tar.gz"
      sha256 "4ee99730c93d8bb5a9f11ddad1dc82a0eae4d8188c7e29d7bd2e0b79d011a5c7"

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
