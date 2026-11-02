class GitVault < Formula
  desc "Store age-encrypted files in a Git branch, separate from your application code"
  homepage "https://github.com/kohkimakimoto/git-vault"
  url "https://github.com/kohkimakimoto/git-vault/archive/refs/tags/v0.13.0.tar.gz"
  sha256 "665b04d4c97d659a7a0fcd068cd532ecd03038167f4766012521ab1fd4448ee0"
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
    assert_match "0.13.0", shell_output("#{bin}/git-vault version")
  end
end
