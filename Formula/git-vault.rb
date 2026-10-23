class GitVault < Formula
  desc "Store age-encrypted files in a Git branch, separate from your application code"
  homepage "https://github.com/kohkimakimoto/git-vault"
  url "https://github.com/kohkimakimoto/git-vault/archive/refs/tags/v0.10.0.tar.gz"
  sha256 "9785137d51b2aa2d4bdc0534b74086b663f99e07e8b3ad9fc5976619e3f8b953"
  license "MIT"

  depends_on "age"

  def install
    bin.install "bin/git-vault"
  end

  def caveats
    <<~EOS
      git-vault requires Python 3.11 or later on your PATH.
    EOS
  end

  test do
    assert_match "0.10.0", shell_output("#{bin}/git-vault version")
  end
end
