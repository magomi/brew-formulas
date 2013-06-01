require 'formula'

class GitGerrit < Formula
  url 'https://github.com/magomi/git-gerrit/tarball/v0.4.0'
  homepage 'https://github.com/magomi/git-gerrit'
  sha1 '106fb132b942af5c3b9263e479cabf5011c7c495'

  def install
    # install scripts in bin.
    bin.install Dir['bin/*']

    # install bash completions.
    (prefix + 'etc/bash_completion.d').install 'completion/git-gerrit-completion.bash'

  end

end
