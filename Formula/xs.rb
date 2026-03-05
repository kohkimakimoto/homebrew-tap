class Xs < Formula
  desc "XS is a SSH command wrapper that enhances your SSH operations"
  homepage "https://github.com/kohkimakimoto/xs"
  version "0.0.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kohkimakimoto/xs/releases/download/v#{version}/xs_#{version}_darwin_arm64.tar.gz"
      sha256 "801f46f1f8bf67a8c8707023a506d00cffd8f19aa7bb5c7dee72af32be7ab3e3"
    else
      url "https://github.com/kohkimakimoto/xs/releases/download/v#{version}/xs_#{version}_darwin_amd64.tar.gz"
      sha256 "0e6615165c403da885f9b3472e88661c6e7bc28999ce5cdd52f99e903d986f1c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kohkimakimoto/xs/releases/download/v#{version}/xs_#{version}_linux_arm64.tar.gz"
      sha256 "98ddfda5a6357b75963b4056d61e710bec471988effb4b6ff08cf1542eeabd18"
    else
      url "https://github.com/kohkimakimoto/xs/releases/download/v#{version}/xs_#{version}_linux_amd64.tar.gz"
      sha256 "adffd951d630f6021b74fed13f9dbe4007e08e528197b69a36bbb9264605e13d"
    end
  end

  def install
    bin.install "xs"
  end
end
