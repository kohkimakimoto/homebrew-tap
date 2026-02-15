class ClaudeSandbox < Formula
  desc "A wrapper tool to safely run Claude Code in a sandboxed environment on macOS"
  homepage "https://github.com/kohkimakimoto/claude-sandbox"
  version "2.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kohkimakimoto/claude-sandbox/releases/download/v#{version}/claude-sandbox_#{version}_darwin_arm64.tar.gz"
      sha256 "7aa978ac7ba03e8c0d3494080a72837bbf3c0f920bd3c5e70807d0881873d851"
    else
      url "https://github.com/kohkimakimoto/claude-sandbox/releases/download/v#{version}/claude-sandbox_#{version}_darwin_amd64.tar.gz"
      sha256 "89a9fc95c1fe04ab7e13eaaa689a62663f184f3727fd7fae51416d08046537c4"
    end
  end

  def install
    bin.install "claude-sandbox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-sandbox version")
  end
end
