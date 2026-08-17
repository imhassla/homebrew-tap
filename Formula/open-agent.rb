class OpenAgent < Formula
  desc "Cost-ladder agentic CLI over OpenRouter"
  homepage "https://github.com/imhassla/open-agent"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/imhassla/open-agent/releases/download/v0.5.0/open-agent_0.5.0_darwin_arm64.tar.gz"
      sha256 "464770dc7eb9baf85b28be244df837158994308e5aea9a3c6881ae022b80e1d6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/imhassla/open-agent/releases/download/v0.5.0/open-agent_0.5.0_linux_amd64.tar.gz"
      sha256 "49537bb92da53bdcfb7d2044b41db56cc422c8276003578cf3d8c23b4ac70591"
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
