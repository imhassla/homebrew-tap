class OpenAgent < Formula
  desc "Cost-ladder agentic CLI over OpenRouter"
  homepage "https://github.com/imhassla/open-agent"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/imhassla/open-agent/releases/download/v0.11.0/open-agent_0.11.0_darwin_arm64.tar.gz"
      sha256 "75880c5af63c9397ac432a36f3d11cf4acd4046fe763bf5d6da82b6c052a6d3c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/imhassla/open-agent/releases/download/v0.11.0/open-agent_0.11.0_linux_amd64.tar.gz"
      sha256 "385e96f3022e6073cbfcefb47601ec98474e4d8ed80cdd6895397dd6daff1bf8"
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
