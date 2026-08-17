class OpenAgent < Formula
  desc "Cost-ladder agentic CLI over OpenRouter"
  homepage "https://github.com/imhassla/open-agent"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/imhassla/open-agent/releases/download/v0.10.0/open-agent_0.10.0_darwin_arm64.tar.gz"
      sha256 "45fd9cb600559acbac050a084e993e4631565122481aecd2c54efbc3b644b4e8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/imhassla/open-agent/releases/download/v0.10.0/open-agent_0.10.0_linux_amd64.tar.gz"
      sha256 "c820451e7d324b084070bbe9aa78bb1832649bc89e5eb2e119b65b74d8e432ae"
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
