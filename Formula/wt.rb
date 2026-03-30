class Wt < Formula
  desc "A CLI tool for managing Git worktrees"
  homepage "https://github.com/kohkimakimoto/wt"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kohkimakimoto/wt/releases/download/v#{version}/wt_#{version}_darwin_arm64.tar.gz"
      sha256 "0a04bbe5bffaae45fde5aeb582bf92e10b8d8b243e4801c816ae47faf1d041e0"
    else
      url "https://github.com/kohkimakimoto/wt/releases/download/v#{version}/wt_#{version}_darwin_amd64.tar.gz"
      sha256 "68235a9849e841b2146b11b462ef6e93583fa973a19885071355d2de16129d92"
    end
  end

  def install
    bin.install "wt"
  end
end
