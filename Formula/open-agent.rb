class OpenAgent < Formula
  desc "Cost-ladder agentic CLI over OpenRouter"
  homepage "https://github.com/imhassla/open-agent"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/imhassla/open-agent/releases/download/v0.6.0/open-agent_0.6.0_darwin_arm64.tar.gz"
      sha256 "85fd88ba5aa353b82baa2154b538e00213596470a3f5c915abb28c123b1c2f1c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/imhassla/open-agent/releases/download/v0.6.0/open-agent_0.6.0_linux_amd64.tar.gz"
      sha256 "1d64caa9980ebab665792b7e4ff8ca601b718a19d3da19f8122d4c6c8c3bcd92"
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
