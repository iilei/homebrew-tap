class GitsnitchAT045 < Formula
  desc "Git commit history linter"
  homepage "https://github.com/iilei/gitsnitch"
  version "0.4.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/iilei/gitsnitch/releases/download/v#{version}/gitsnitch-macOS-universal2.tar.gz"
      sha256 "8915ef74186656d6fc7a6876357218dcce64c8dc7b9d599981304a5e67febe48"
    end

    on_intel do
      url "https://github.com/iilei/gitsnitch/releases/download/v#{version}/gitsnitch-macOS-universal2.tar.gz"
      sha256 "23f1ba2b20e06fb31aeac9cd472de15bb484da93e80183a3bbdc36b5690686c1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iilei/gitsnitch/releases/download/v#{version}/gitsnitch-Linux-musl-arm64.tar.gz"
      sha256 "fe4e99d99a702538555143afd775fb4ece061941ccbaf42bb4fd72279bbc89f2"
    end

    on_intel do
      url "https://github.com/iilei/gitsnitch/releases/download/v#{version}/gitsnitch-Linux-musl-x86_64.tar.gz"
      sha256 "23f1ba2b20e06fb31aeac9cd472de15bb484da93e80183a3bbdc36b5690686c1"
    end
  end

  def install
    bin.install "gitsnitch"
  end

  test do
    assert_match "gitsnitch #{version}", shell_output("#{bin}/gitsnitch --version")
  end
end
