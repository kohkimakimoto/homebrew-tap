class GitVault < Formula
  desc "Store age-encrypted files in a Git branch, separate from your application code"
  homepage "https://github.com/kohkimakimoto/git-vault"
  url "https://github.com/kohkimakimoto/git-vault/archive/refs/tags/v0.9.0.tar.gz"
  sha256 "80998c2b56e32edcee45e26e23b5c8d1d6f4e6c709a099c336c85b69e88c8d50"
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
    assert_match "0.9.0", shell_output("#{bin}/git-vault version")
  end
end
