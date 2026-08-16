class OpenAgent < Formula
  desc "Cost-ladder agentic CLI over OpenRouter"
  homepage "https://github.com/imhassla/open-agent"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/imhassla/open-agent/releases/download/v0.3.0/open-agent_0.3.0_darwin_arm64.tar.gz"
      sha256 "5a8f3dc49ee1e3d5dd9b69c91f5737f4970236be6e6b38b5b3ee444902d4db7e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/imhassla/open-agent/releases/download/v0.3.0/open-agent_0.3.0_linux_amd64.tar.gz"
      sha256 "870ca25050d8b7f33f862001e7d46fb8d594f48fb0d123988efa7936a79924b9"
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
