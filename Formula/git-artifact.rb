class GitArtifact < Formula
  desc "Manage development artifacts on a dedicated orphan Git branch"
  homepage "https://github.com/kohkimakimoto/git-artifact"
  url "https://github.com/kohkimakimoto/git-artifact/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "9ebea7c3838feff4de8e7bba5301964c1ecca5795b3af604db9969ac8b287b65"
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
    assert_match "0.2.0", shell_output("#{bin}/git-artifact version")
  end
end
