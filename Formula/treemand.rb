class Treemand < Formula
  desc "Visualize and interact with any CLI tool's command hierarchy as a tree"
  homepage "https://aallbrig.github.io/treemand"
  url "https://github.com/aallbrig/treemand/archive/refs/tags/v0.2.0.tar.gz"
  version "0.2.0"

  # Update sha256 after release
  # sha256 "..." # run: curl -sL <url> | shasum -a 256

  license "MIT"

  depends_on "go" => :build

  def install
    cd "cli/treemand" do
      system "go", "build",
        "-ldflags", "-X github.com/aallbrig/treemand/cmd.Version=v#{version}",
        "-o", bin/"treemand",
        "."
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/treemand version")
  end
end
