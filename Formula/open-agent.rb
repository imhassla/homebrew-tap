class OpenAgent < Formula
  desc "Cost-ladder agentic CLI over OpenRouter"
  homepage "https://github.com/imhassla/open-agent"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/imhassla/open-agent/releases/download/v0.7.0/open-agent_0.7.0_darwin_arm64.tar.gz"
      sha256 "e045ae3bbecf5bde2eba43ebaa11e6b912d522436bd569b6d53264327bdbdc50"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/imhassla/open-agent/releases/download/v0.7.0/open-agent_0.7.0_linux_amd64.tar.gz"
      sha256 "125b006af74b3a6ae0c6282307b135d9a5c5f7c88e7213519d3a42260c0ac9a4"
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
