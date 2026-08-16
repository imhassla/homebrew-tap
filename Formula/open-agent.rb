class OpenAgent < Formula
  desc "Cost-ladder agentic CLI over OpenRouter"
  homepage "https://github.com/imhassla/open-agent"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/imhassla/open-agent/releases/download/v0.2.2/open-agent_0.2.2_darwin_arm64.tar.gz"
      sha256 "4711ad8e7ff1f7eb6c1ca38e5c79497dc29d07ee2c193e4fb3bcbedc26a8a9d3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/imhassla/open-agent/releases/download/v0.2.2/open-agent_0.2.2_linux_amd64.tar.gz"
      sha256 "aaecf8f22a089f0b708e1f2a930cb405a57ae47f212cdeab0ee4cb588f41c2e6"
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
