require 'formula'

class GitGerrit < Formula
  url 'https://github.com/magomi/git-gerrit/tarball/v0.4.0'
  homepage 'https://github.com/magomi/git-gerrit'
  sha1 '2eea37755ec91f0e2ceeaf88ea0f73df324b5fd1'

  depends_on 'json' => :python

  def install
    # install scripts in bin.
    bin.install Dir['bin/*']

    # install bash completions.
    (prefix + 'etc/bash_completion.d').install 'completion/git-gerrit-completion.bash'

  end

end
