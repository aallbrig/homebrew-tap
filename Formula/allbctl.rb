class Allbctl < Formula
  desc "CLI tool for managing and inspecting your development environment"
  homepage "https://aallbrig.github.io/allbctl"
  version "0.0.40"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aallbrig/allbctl/releases/download/v0.0.40/allbctl-darwin-amd64.tar.gz"
      sha256 "248141b79f33f972fee1abc6acba583f3a6dbc12996e92f9bfdf8781ceb432bd"

      def install
        bin.install "allbctl_darwin_amd64" => "allbctl"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/allbctl/releases/download/v0.0.40/allbctl-darwin-arm64.tar.gz"
      sha256 "4386a16e00d59e64a24cbed2085d7e80931173597459438983e9481bdbc01246"

      def install
        bin.install "allbctl_darwin_arm64" => "allbctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aallbrig/allbctl/releases/download/v0.0.40/allbctl-linux-amd64.tar.gz"
      sha256 "77ef457e1963ebd0d01253752a50d8119cf83995461519158cb975c143afbf2d"

      def install
        bin.install "allbctl_linux_amd64" => "allbctl"
      end
    end
    on_arm do
      url "https://github.com/aallbrig/allbctl/releases/download/v0.0.40/allbctl-linux-arm64.tar.gz"
      sha256 "dc5ea35d042a841448ee303116a5e32ecc961f63acf6f019cdf82466a31fc22b"

      def install
        bin.install "allbctl_linux_arm64" => "allbctl"
      end
    end
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/allbctl version")
  end
end
