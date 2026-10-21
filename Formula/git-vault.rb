class GitVault < Formula
  desc "Store age-encrypted files in a Git branch, separate from your application code"
  homepage "https://github.com/kohkimakimoto/git-vault"
  url "https://github.com/kohkimakimoto/git-vault/archive/refs/tags/v0.8.0.tar.gz"
  sha256 "ca7660165bcf2dfc80e5b429c85d28fe3b05f089ccc5ec88dc4559b772f91da6"
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
    assert_match "0.8.0", shell_output("#{bin}/git-vault version")
  end
end
