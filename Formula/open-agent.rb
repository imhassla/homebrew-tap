class OpenAgent < Formula
  desc "Cost-ladder agentic CLI over OpenRouter"
  homepage "https://github.com/imhassla/open-agent"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/imhassla/open-agent/releases/download/v0.12.0/open-agent_0.12.0_darwin_arm64.tar.gz"
      sha256 "82b7a584e67be05309348411754de5a53c6a7f21279aaba28d832b89d423b21b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/imhassla/open-agent/releases/download/v0.12.0/open-agent_0.12.0_linux_amd64.tar.gz"
      sha256 "e0d31271dbaaefecc658befbe7b73c06900a284fed33cfa2b7682b91ac4e9f17"
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
