class OpenAgent < Formula
  desc "Cost-ladder agentic CLI over OpenRouter"
  homepage "https://github.com/imhassla/open-agent"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/imhassla/open-agent/releases/download/v0.4.1/open-agent_0.4.1_darwin_arm64.tar.gz"
      sha256 "1f70a31e806c2c5e920300041cdd02895c80976827e840b8e9019485268750b5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/imhassla/open-agent/releases/download/v0.4.1/open-agent_0.4.1_linux_amd64.tar.gz"
      sha256 "7a320668684cfdbad7c54edcdc26f826bfab23cef26dd0ec029cdbe7a27be2c9"
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
