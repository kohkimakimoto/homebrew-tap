class GitVault < Formula
  desc "Store age-encrypted files in a Git branch, separate from your application code"
  homepage "https://github.com/kohkimakimoto/git-vault"
  url "https://github.com/kohkimakimoto/git-vault/archive/refs/tags/v0.12.0.tar.gz"
  sha256 "3aba7127602f518c4e97be2e773ab3e9c41facbbe61b9d3d43aa1b92ddcc2861"
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
    assert_match "0.12.0", shell_output("#{bin}/git-vault version")
  end
end
