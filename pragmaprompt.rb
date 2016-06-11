class Pragmaprompt < Formula
  desc "Pragmatic bash prompt done by a wannabe zen minimalist"
  homepage "https://github.com/gretel/pragmaprompt"
  url "https://github.com/gretel/pragmaprompt/archive/v0.4.tar.gz"
  sha256 "1d89bcace27e01d47edd8245610173427e0c533ea201e9a608f282b5a5bb3752"
  head "https://github.com/gretel/pragmaprompt.git"

  def install
    share.install "pragmaprompt.sh"
    doc.install "README.md"
  end

  def caveats; <<-EOS.undent
    The prompt needs to be enabled manually.
    Please add the following to your .bashrc:
        if [ -f "$(brew --prefix pragmaprompt)/share/pragmaprompt.sh" ]; then
            source "$(brew --prefix pragmaprompt)/share/pragmaprompt.sh"
        fi
    Then, you may restart the shell:
        exec bash
    EOS
  end
end
