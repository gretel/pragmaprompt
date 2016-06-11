class Pragmaprompt < Formula
  desc "Pragmatic bash prompt done by a wannabe zen minimalist"
  homepage "https://github.com/gretel/pragmaprompt"
  url "https://github.com/gretel/pragmaprompt/archive/v0.4.tar.gz"
  sha256 "c4868995bcb1bb79650ced810bbe52503ea9050eb59247d6174d10d60564baca"
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
