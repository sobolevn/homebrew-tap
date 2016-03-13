class GitSecret < Formula
  desc "A bash-tool to store your private data inside a git repository."
  homepage "sobolevn.github.io/git-secret/"

  url "https://github.com/sobolevn/git-secret/archive/v0.1.0.tar.gz"
  sha256 "107c5555c203ad3b1498e2995fa8aa81942840189316d13933fcf0947180d10b"

  head "https://github.com/sobolevn/git-secret.git"

  def install
    system "make", "build"
    system "bash", "utils/install.sh", prefix
  end

  test do
    system "git", "secret", "--version"
  end
end