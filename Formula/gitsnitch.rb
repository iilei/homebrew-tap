class Gitsnitch < Formula
  desc "Git commit history linter"
  homepage "https://github.com/iilei/gitsnitch"
  version "0.4.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/iilei/gitsnitch/releases/download/v#{version}/gitsnitch-macOS-universal2.tar.gz"
      # sha256: macos_universal2
      sha256 "86c1ac02abf42963d6c0449f83d530cabf1b172fb7cab895be3ab058d2ce6bb1"
    end

    on_intel do
      url "https://github.com/iilei/gitsnitch/releases/download/v#{version}/gitsnitch-macOS-universal2.tar.gz"
      # sha256: macos_universal2
      sha256 "86c1ac02abf42963d6c0449f83d530cabf1b172fb7cab895be3ab058d2ce6bb1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iilei/gitsnitch/releases/download/v#{version}/gitsnitch-Linux-musl-arm64.tar.gz"
      # sha256: linux_arm64
      sha256 "31741a14719a50521a783f94b62049e5d38da6c729a5357640c436415797f444"
    end

    on_intel do
      url "https://github.com/iilei/gitsnitch/releases/download/v#{version}/gitsnitch-Linux-musl-x86_64.tar.gz"
      # sha256: linux_x86_64
      sha256 "923ae82dc69baa324fecce039a035f71efb3c8f400336009117b8dd0c81a6a7f"
    end
  end

  def install
    bin.install "gitsnitch"
  end

  test do
    assert_match "gitsnitch #{version}", shell_output("#{bin}/gitsnitch --version")
  end
end
