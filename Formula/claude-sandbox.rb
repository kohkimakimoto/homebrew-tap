class ClaudeSandbox < Formula
  desc "A wrapper tool to safely run Claude Code in a sandboxed environment on macOS"
  homepage "https://github.com/kohkimakimoto/claude-sandbox"
  version "2.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kohkimakimoto/claude-sandbox/releases/download/v#{version}/claude-sandbox_#{version}_darwin_arm64.tar.gz"
      sha256 "4d60ecca80a2854804698bbac564ff3fcd452560ad7681d24ccca80ea3d77397"
    else
      url "https://github.com/kohkimakimoto/claude-sandbox/releases/download/v#{version}/claude-sandbox_#{version}_darwin_amd64.tar.gz"
      sha256 "bf8ea57aa7be31fd7f6fc5523b596c637ba56402e8775a7aeda7d24f674719d7"
    end
  end

  def install
    bin.install "claude-sandbox"
  end
end
