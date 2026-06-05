class ZshArcadeSpeaker < Formula
  desc "Hardware motherboard speaker feedback sounds for Zsh commands"
  homepage "https://github.com/yourusername/zsh-arcade-speaker"
  url "https://github.com/yourusername/zsh-arcade-speaker/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "REPLACE_WITH_ACTUAL_TARBALL_SHA256_HASH_AFTER_TAGGING"
  license "MIT"

  depends_on "beep"

  def install
    pkgshare.install "zsh-arcade-speaker.plugin.zsh"
  end

  def caveats
    <<~EOS
      To activate the audio engine package layout within your profile, 
      append the following declaration execution statement to your ~/.zshrc file:

        source #{opt_pkgshare}/zsh-arcade-speaker.plugin.zsh
    EOS
  end

  test do
    assert_match "zarcade", shell_output("zsh -c 'source #{pkgshare}/zsh-arcade-speaker.plugin.zsh && whence zarcade'")
  end
end