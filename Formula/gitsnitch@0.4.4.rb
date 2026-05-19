class GitsnitchAT044 < Formula
  desc "Git commit history linter"
  homepage "https://github.com/iilei/gitsnitch"
  version "0.4.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/iilei/gitsnitch/releases/download/v#{version}/gitsnitch-macOS-universal2.tar.gz"
      sha256 "d4b9980bb0e62d2f473449d89d7beb639b70f4df812f2a77a6c2aab2970a3ce2"
    end

    on_intel do
      url "https://github.com/iilei/gitsnitch/releases/download/v#{version}/gitsnitch-macOS-universal2.tar.gz"
      sha256 "3696d23d27e7604480f05efa4fbf7d04ca7f43feebe5d9b2d153aa37f49d1040"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iilei/gitsnitch/releases/download/v#{version}/gitsnitch-Linux-musl-arm64.tar.gz"
      sha256 "615a63abc733e21d3ce5dc05173d12ee6ec0a3efc4931ad88a2bcc5918d2fcb5"
    end

    on_intel do
      url "https://github.com/iilei/gitsnitch/releases/download/v#{version}/gitsnitch-Linux-musl-x86_64.tar.gz"
      sha256 "3696d23d27e7604480f05efa4fbf7d04ca7f43feebe5d9b2d153aa37f49d1040"
    end
  end

  def install
    bin.install "gitsnitch"
  end

  test do
    assert_match "gitsnitch #{version}", shell_output("#{bin}/gitsnitch --version")
  end
end
