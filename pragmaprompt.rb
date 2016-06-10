class PragmaPrompt < Formula
  desc "A pragmatic bash prompt done by a wannabe zen minimalist"
  homepage "https://github.com/gretel/pragmaprompt"
  url "https://github.com/gretel/pragmaprompt/archive/v0.3.tar.gz"
  head "https://github.com/gretel/pragmaprompt.git"
  sha256 "61fec4c356783bd65de7f67e80fd14f6afe5d674"

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