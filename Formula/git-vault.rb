class GitVault < Formula
  desc "Store age-encrypted files in a Git branch, separate from your application code"
  homepage "https://github.com/kohkimakimoto/git-vault"
  url "https://github.com/kohkimakimoto/git-vault/archive/refs/tags/v0.7.0.tar.gz"
  sha256 "463dd66ead4b792fb62819fc00497a344406fbbc6e2627486617225c81dc773a"
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
    assert_match "0.7.0", shell_output("#{bin}/git-vault version")
  end
end
