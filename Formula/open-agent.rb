class OpenAgent < Formula
  desc "Cost-ladder agentic CLI over OpenRouter"
  homepage "https://github.com/imhassla/open-agent"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/imhassla/open-agent/releases/download/v0.4.0/open-agent_0.4.0_darwin_arm64.tar.gz"
      sha256 "da2d575bd83399447e0432536f7d002108f4fb66140d162c0ac9bfaa8b78fd95"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/imhassla/open-agent/releases/download/v0.4.0/open-agent_0.4.0_linux_amd64.tar.gz"
      sha256 "66525090543fe349872d122e5ed0697e54c673ecf9e53ae167d653effa1d9b0a"
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
