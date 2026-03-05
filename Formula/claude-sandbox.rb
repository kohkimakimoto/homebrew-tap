class ClaudeSandbox < Formula
  desc "A wrapper tool to safely run Claude Code in a sandboxed environment on macOS"
  homepage "https://github.com/kohkimakimoto/claude-sandbox"
  version "2.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kohkimakimoto/claude-sandbox/releases/download/v#{version}/claude-sandbox_#{version}_darwin_arm64.tar.gz"
      sha256 "646f092017ba2ffa0cefd0aacf894c2dbe56127234bd7daa1b2cd57d998c42dc"
    else
      url "https://github.com/kohkimakimoto/claude-sandbox/releases/download/v#{version}/claude-sandbox_#{version}_darwin_amd64.tar.gz"
      sha256 "0121c73cd1ba107b045099c4b6580594dd24d6933698f65c960b2e7f69a96064"
    end
  end

  def install
    bin.install "claude-sandbox"
  end
end
