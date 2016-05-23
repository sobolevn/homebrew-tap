class GitSecret < Formula
  desc "Bash-tool to store the private data inside a git repo."
  homepage "https://sobolevn.github.io/git-secret/"

  url "https://github.com/sobolevn/git-secret/archive/v0.1.1.tar.gz"
  sha256 "96d0bcc27d941df2446099b6cb5520f81743834f18a478f911ba7ba19ba45575"

  head "https://github.com/sobolevn/git-secret.git"
  bottle :unneeded

  def install
    system "make", "build"
    system "bash", "utils/install.sh", prefix
  end

  def caveats
    <<-EOS.undent
      You now have the `git secret` command! Find out how to use it
      by typing `man git-secret` or visiting 'https://sobolevn.github.io/git-secret/'.

      Warning: No longer maintained, use core formula!
    EOS
  end

  test do
    system "git", "secret", "--version"
  end
end
