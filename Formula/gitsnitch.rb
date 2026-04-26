class Gitsnitch < Formula
  desc "Git commit history linter"
  homepage "https://github.com/iilei/gitsnitch"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/iilei/gitsnitch/releases/download/v#{version}/gitsnitch-macOS-universal2.tar.gz"
      sha256 "f9af316561410072b5979b9898e42d0a03e9a65ba704e629c433d6e73b9317cf"
    end

    on_intel do
      url "https://github.com/iilei/gitsnitch/releases/download/v#{version}/gitsnitch-macOS-universal2.tar.gz"
      sha256 "f464503a04921050369a49691366b1da5672e3b607e0f07fe0dff8f3c2028b51"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iilei/gitsnitch/releases/download/v#{version}/gitsnitch-Linux-musl-arm64.tar.gz"
      sha256 "0926f16ede935f17b816642d6d5a6c8efba673d12549f46345dc9a3b29cb1f83"
    end

    on_intel do
      url "https://github.com/iilei/gitsnitch/releases/download/v#{version}/gitsnitch-Linux-musl-x86_64.tar.gz"
      sha256 "f464503a04921050369a49691366b1da5672e3b607e0f07fe0dff8f3c2028b51"
    end
  end

  def install
    bin.install "gitsnitch"
  end

  test do
    assert_match "gitsnitch #{version}", shell_output("#{bin}/gitsnitch --version")
  end
end
