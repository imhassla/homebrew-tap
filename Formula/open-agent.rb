class OpenAgent < Formula
  desc "Cost-ladder agentic CLI over OpenRouter"
  homepage "https://github.com/imhassla/open-agent"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/imhassla/open-agent/releases/download/v0.9.0/open-agent_0.9.0_darwin_arm64.tar.gz"
      sha256 "a1c48a527a4a515ede83b411915f8d6e19466e5d1dd2acae22e2158be76eeed0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/imhassla/open-agent/releases/download/v0.9.0/open-agent_0.9.0_linux_amd64.tar.gz"
      sha256 "0bc32e870999dbb9eff2d95c5fe767e2bb5d913bebd59f6cc4f7a00e923160b7"
    end
  end

  def install
    bin.install "open-agent"
  end

  def caveats
    <<~CAVEATS
      Set an OpenRouter API key (first match wins):
        export OPENROUTER_KEY=sk-or-...
        or put it in ~/.config/open-agent/.env
    CAVEATS
  end

  test do
    assert_match "open-agent", shell_output("#{bin}/open-agent version")
  end
end
