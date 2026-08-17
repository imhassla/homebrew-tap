class OpenAgent < Formula
  desc "Cost-ladder agentic CLI over OpenRouter"
  homepage "https://github.com/imhassla/open-agent"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/imhassla/open-agent/releases/download/v0.8.0/open-agent_0.8.0_darwin_arm64.tar.gz"
      sha256 "4b0bdc74c89b4b9dce07eb7026e0c5fe46f82af6f74a84cfb1433227dde320ca"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/imhassla/open-agent/releases/download/v0.8.0/open-agent_0.8.0_linux_amd64.tar.gz"
      sha256 "745fa2f730234289badbc24997f47aafb0df728457ff6da38bb47b49c8770369"
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
