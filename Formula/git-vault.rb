class GitVault < Formula
  desc "Store age-encrypted files in a Git branch, separate from your application code"
  homepage "https://github.com/kohkimakimoto/git-vault"
  url "https://github.com/kohkimakimoto/git-vault/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "d8fc4ae7a487c0c56e82f7a2414974ead72a2f50fddebb4b146deb6652703778"
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
    assert_match "0.1.0", shell_output("#{bin}/git-vault version")
  end
end
