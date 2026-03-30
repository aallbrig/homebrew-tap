class Allbctl < Formula
  desc "CLI tool for managing and inspecting your development environment"
  homepage "https://aallbrig.github.io/allbctl"
  version "0.0.36"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/allbctl/releases/download/v0.0.36/allbctl-darwin-amd64.tar.gz"
      sha256 "1bda8d3325f03b4d4635da0a59f5f023b72b85834450aaaeef26f8b02d1fa05a"

      def install
        bin.install "allbctl_darwin_amd64" => "allbctl"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/allbctl/releases/download/v0.0.36/allbctl-darwin-arm64.tar.gz"
      sha256 "ea0a4546917b9a619ba46a83c35a03c1d52ba56cbfad8485c04b6bacaeca5d77"

      def install
        bin.install "allbctl_darwin_arm64" => "allbctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/allbctl/releases/download/v0.0.36/allbctl-linux-amd64.tar.gz"
      sha256 "0788affda13cc50bcec699f7590d949fae0153654e6908a78cb802a08e593ea5"

      def install
        bin.install "allbctl_linux_amd64" => "allbctl"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/allbctl/releases/download/v0.0.36/allbctl-linux-arm64.tar.gz"
      sha256 "0cdafdc72b42fad5d14c039f8c5ff8931481cea9e0858bd563625b066762ec98"

      def install
        bin.install "allbctl_linux_arm64" => "allbctl"
      end
    end
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/allbctl version")
  end
end
