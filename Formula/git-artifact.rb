class GitArtifact < Formula
  desc "Manage development artifacts on a dedicated orphan Git branch"
  homepage "https://github.com/kohkimakimoto/git-artifact"
  url "https://github.com/kohkimakimoto/git-artifact/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "390a021ca04ff3ec496e6661557136190374aef6a99ee3273949952c065ac0bd"
  license "MIT"

  def install
    bin.install "bin/git-artifact"
  end

  def caveats
    <<~EOS
      git-artifact requires Python 3.11 or later on your PATH.
    EOS
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/git-artifact version")
  end
end
