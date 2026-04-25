class Enclave < Formula
  desc "A tool to run any command in a sandboxed environment using macOS's sandbox-exec"
  homepage "https://github.com/kohkimakimoto/enclave"
  version "3.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kohkimakimoto/enclave/releases/download/v#{version}/enclave_#{version}_darwin_arm64.tar.gz"
      sha256 "57f882477d0cddc7f344f848739d3ed4c960a1c36442f5f941d5d0c46872f372"
    else
      url "https://github.com/kohkimakimoto/enclave/releases/download/v#{version}/enclave_#{version}_darwin_amd64.tar.gz"
      sha256 "8d82097fe708e8dec05a8a9578c1825fe7eaed4c7d1a1531c2950b33732938b2"
    end
  end

  def install
    bin.install "enclave"
  end
end
