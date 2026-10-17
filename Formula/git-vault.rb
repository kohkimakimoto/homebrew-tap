class GitVault < Formula
  desc "Store age-encrypted files in a Git branch, separate from your application code"
  homepage "https://github.com/kohkimakimoto/git-vault"
  url "https://github.com/kohkimakimoto/git-vault/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "64222542f2de7deaaaf0f8be1a079012f060847b2140d8294526c1ee6a66ae5e"
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
    assert_match "0.4.0", shell_output("#{bin}/git-vault version")
  end
end
