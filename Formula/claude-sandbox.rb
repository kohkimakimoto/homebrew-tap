class ClaudeSandbox < Formula
  desc "A wrapper tool to safely run Claude Code in a sandboxed environment on macOS"
  homepage "https://github.com/kohkimakimoto/enclave"
  version "2.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kohkimakimoto/enclave/releases/download/v#{version}/claude-sandbox_#{version}_darwin_arm64.tar.gz"
      sha256 "58001bb2549caf190b682b3c4e8291798b3d4f37c5aeb489e993fa1f55fbbd61"
    else
      url "https://github.com/kohkimakimoto/enclave/releases/download/v#{version}/claude-sandbox_#{version}_darwin_amd64.tar.gz"
      sha256 "e9dc7da7e4e34021e4a7851dd532c3b1ae6787a27f83208190113b971c0d7504"
    end
  end

  def install
    bin.install "claude-sandbox"
  end
end
