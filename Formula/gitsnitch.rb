class Gitsnitch < Formula
  desc "Git commit history linter"
  homepage "https://github.com/iilei/gitsnitch"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/iilei/gitsnitch/releases/download/v#{version}/gitsnitch-macOS-universal2.tar.gz"
      sha256 "be5926ede53d8bd29a36241f773d0c86609dc8785edf548e9a847b848773567d"
    end

    on_intel do
      url "https://github.com/iilei/gitsnitch/releases/download/v#{version}/gitsnitch-macOS-universal2.tar.gz"
      sha256 "6b9a9bd9f5d94f8658b8341caeafa6ca59cc1bd317edf91aade13204582a4a2a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iilei/gitsnitch/releases/download/v#{version}/gitsnitch-Linux-musl-arm64.tar.gz"
      sha256 "24316063581e9e1e483c1ded9a7d17f24e39bbe6716714fc2f390209742e4065"
    end

    on_intel do
      url "https://github.com/iilei/gitsnitch/releases/download/v#{version}/gitsnitch-Linux-musl-x86_64.tar.gz"
      sha256 "6b9a9bd9f5d94f8658b8341caeafa6ca59cc1bd317edf91aade13204582a4a2a"
    end
  end

  def install
    bin.install "gitsnitch"
  end

  test do
    assert_match "gitsnitch #{version}", shell_output("#{bin}/gitsnitch --version")
  end
end
