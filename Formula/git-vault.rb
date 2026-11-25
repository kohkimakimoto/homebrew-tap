class GitVault < Formula
  desc "Store age-encrypted files in a Git branch, separate from your application code"
  homepage "https://github.com/kohkimakimoto/git-vault"
  url "https://github.com/kohkimakimoto/git-vault/archive/refs/tags/v0.14.0.tar.gz"
  sha256 "16655ae5245ea4afe35205b6fcfb82868ad7cee42d1d1741f0f1715bd56d4c8c"
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
    assert_match "0.14.0", shell_output("#{bin}/git-vault version")
  end
end
