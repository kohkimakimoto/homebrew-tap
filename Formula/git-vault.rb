class GitVault < Formula
  desc "Store age-encrypted files in a Git branch, separate from your application code"
  homepage "https://github.com/kohkimakimoto/git-vault"
  url "https://github.com/kohkimakimoto/git-vault/archive/refs/tags/v0.11.0.tar.gz"
  sha256 "39d14160deec61f0cb892e5b9ed2a00a1112beca99088122ec5f8521a48c3c47"
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
    assert_match "0.11.0", shell_output("#{bin}/git-vault version")
  end
end
