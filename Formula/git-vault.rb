class GitVault < Formula
  desc "Store age-encrypted files in a Git branch, separate from your application code"
  homepage "https://github.com/kohkimakimoto/git-vault"
  url "https://github.com/kohkimakimoto/git-vault/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "d1b0ff9ea0eaaccdea8cdf5ae40d38f3774098b7b7af874efb29c314732eb86c"
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
    assert_match "0.5.0", shell_output("#{bin}/git-vault version")
  end
end
