class Enclave < Formula
  desc "A tool to run any command in a sandboxed environment using macOS's sandbox-exec"
  homepage "https://github.com/kohkimakimoto/enclave"
  version "3.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kohkimakimoto/enclave/releases/download/v#{version}/enclave_#{version}_darwin_arm64.tar.gz"
      sha256 "4d73d23ddb1c4435fb159ae33f652ec09684003d11ca3a0f8b22a3eae335d631"
    else
      url "https://github.com/kohkimakimoto/enclave/releases/download/v#{version}/enclave_#{version}_darwin_amd64.tar.gz"
      sha256 "411773c9074a3e60dd1dee9b66239cdedf62a9801f6298cd5decc703adc048a0"
    end
  end

  def install
    bin.install "enclave"
  end
end
