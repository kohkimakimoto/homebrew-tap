class Wtr < Formula
  desc "A CLI tool for managing Git worktrees"
  homepage "https://github.com/kohkimakimoto/wtr"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kohkimakimoto/wtr/releases/download/v#{version}/wtr_#{version}_darwin_arm64.tar.gz"
      sha256 "09e163448b079e960855d3562f329b6cb7085e6868d9fa04729f6fcae1f9e29a"
    else
      url "https://github.com/kohkimakimoto/wtr/releases/download/v#{version}/wtr_#{version}_darwin_amd64.tar.gz"
      sha256 "eed989d625631e8ee6e5060602e3aca5735d979b32ab1262dcc454b32fbecfd3"
    end
  end

  def install
    bin.install "wtr"
  end
end
