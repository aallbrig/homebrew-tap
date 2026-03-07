class Allbctl < Formula
  desc "CLI tool for managing and inspecting your development environment"
  homepage "https://aallbrig.github.io/allbctl"
  version "0.0.31"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/allbctl/releases/download/v0.0.31/allbctl-darwin-amd64.tar.gz"
      sha256 "51f4962319749d0ca0e6d7d5e6836a042daa2f1156177c169304aa3766868bf7"

      def install
        bin.install "allbctl_darwin_amd64" => "allbctl"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/allbctl/releases/download/v0.0.31/allbctl-darwin-arm64.tar.gz"
      sha256 "eea3b269cf5d40698bf75b70749a0acdfff5a5d3eaa748584c8237964c1dfd30"

      def install
        bin.install "allbctl_darwin_arm64" => "allbctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/allbctl/releases/download/v0.0.31/allbctl-linux-amd64.tar.gz"
      sha256 "2062430246ba272ec5ee02cd48ce4451fcf2db0684bee15609effa425bd23293"

      def install
        bin.install "allbctl_linux_amd64" => "allbctl"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/allbctl/releases/download/v0.0.31/allbctl-linux-arm64.tar.gz"
      sha256 "fdb784598e11caef7cd624f489beaa9803bd6ec483a0e4b0cdef7a4535fd97c1"

      def install
        bin.install "allbctl_linux_arm64" => "allbctl"
      end
    end
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/allbctl version")
  end
end
