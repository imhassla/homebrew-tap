class OpenAgent < Formula
  desc "Cost-ladder agentic CLI over OpenRouter"
  homepage "https://github.com/imhassla/open-agent"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/imhassla/open-agent/releases/download/v0.2.1/open-agent_0.2.1_darwin_arm64.tar.gz"
      sha256 "83623f98ae88cb1cb1d4fa3f75c17d8473af846771282d2197c5646405945537"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/imhassla/open-agent/releases/download/v0.2.1/open-agent_0.2.1_linux_amd64.tar.gz"
      sha256 "b09550e0f204a929442a313e33892c5c1786811d2f92deee889e7e3740b0b127"
    end
  end

  def install
    bin.install "open-agent"
  end

  def caveats
    <<~EOS
      Set an OpenRouter API key (first match wins):
        export OPENROUTER_KEY=sk-or-...
        or put it in ~/.config/open-agent/.env
    EOS
  end

  test do
    assert_match "open-agent", shell_output("#{bin}/open-agent version")
  end
end
