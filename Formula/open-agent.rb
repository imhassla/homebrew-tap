class OpenAgent < Formula
  desc "Cost-ladder agentic CLI over OpenRouter"
  homepage "https://github.com/imhassla/open-agent"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/imhassla/open-agent/releases/download/v0.2.0/open-agent_0.2.0_darwin_arm64.tar.gz"
      sha256 "03ae56781748820f24b5414e538381e4bcf660114655edc93ae6003aa2227adb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/imhassla/open-agent/releases/download/v0.2.0/open-agent_0.2.0_linux_amd64.tar.gz"
      sha256 "ca7a4d777a10f629b993f81e2953fb3b3de77d0f1207b050381971dd59ffd4db"
    end
  end

  def install
    bin.install "open-agent"
  end

  def caveats
    <<~EOS
      Set an OpenRouter API key (first match wins):
        export OPENROUTER_KEY=sk-or-...
        or put it in ~/.config/open-agent/.env
    EOS
  end

  test do
    assert_match "open-agent", shell_output("#{bin}/open-agent version")
  end
end
