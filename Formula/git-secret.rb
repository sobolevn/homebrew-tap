class GitSecret < Formula
  desc "Bash-tool to store the private data inside a git repo."
  homepage "https://sobolevn.github.io/git-secret/"

  url "https://github.com/sobolevn/git-secret/archive/v0.1.0.tar.gz"
  sha256 "107c5555c203ad3b1498e2995fa8aa81942840189316d13933fcf0947180d10b"

  head "https://github.com/sobolevn/git-secret.git"
  bottle :unneeded

  def install
    system "make", "build"
    system "bash", "utils/install.sh", prefix
  end

  def caveats
    <<-EOS.undent
      You can now have the `git secret` command! Find out how to use it
      by typing `man git-secret` or visiting 'https://sobolevn.github.io/git-secret/'.
    EOS
  end

  test do
    system "git", "secret", "--version"
  end
end
