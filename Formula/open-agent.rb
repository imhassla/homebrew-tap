class OpenAgent < Formula
  desc "Cost-ladder agentic CLI over OpenRouter"
  homepage "https://github.com/imhassla/open-agent"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/imhassla/open-agent/releases/download/v1.0.0/open-agent_1.0.0_darwin_arm64.tar.gz"
      sha256 "04562168de74237bedaa58d3a908155c309829bef7d6c3cf44a3bd6d75450ed6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/imhassla/open-agent/releases/download/v1.0.0/open-agent_1.0.0_linux_amd64.tar.gz"
      sha256 "3e76cb635b50f1fde45858f8f76f41ae61838d48bbcae2e9ab435f812e64ae66"
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
