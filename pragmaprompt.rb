class PragmaPrompt < Formula
  desc "A pragmatic bash prompt done by a wannabe zen minimalist"
  homepage "https://github.com/gretel/pragmaprompt"
  url "https://github.com/gretel/pragmaprompt/archive/v0.2.tar.gz"
  head "https://github.com/gretel/pragmaprompt.git"
  sha256 "ea5e5300a3152ac2a9807b8b41c93bc2324bbbf4"

  def install
    share.install "pragmaprompt.sh"
    doc.install "README.md"
  end

  def caveats; <<-EOS.undent
    The prompt needs to be enabled manually.
    Please add the following to your .bashrc:
        if test -f "$(brew --prefix pragmaprompt)/share/pragmaprompt.sh"; then
            source "$(brew --prefix pragmaprompt)/share/pragmaprompt.sh"
        fi
    Then, you may restart the shell:
        exec bash
    EOS
  end
end