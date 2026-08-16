class OpenAgent < Formula
  desc "Cost-ladder agentic CLI over OpenRouter"
  homepage "https://github.com/imhassla/open-agent"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/imhassla/open-agent/releases/download/v0.1.0/open-agent_0.1.0_darwin_arm64.tar.gz"
      sha256 "6a43567be717c4b6d401f881571c21c9223fb5ec9707e3c04e86da9401e53fcd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/imhassla/open-agent/releases/download/v0.1.0/open-agent_0.1.0_linux_amd64.tar.gz"
      sha256 "829a5a600948199774bfae7bdbbef60b6c4b12222904f0ffab4d0d10b1afb80b"
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
