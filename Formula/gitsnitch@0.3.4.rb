class GitsnitchAT034 < Formula
  desc "Git commit history linter"
  homepage "https://github.com/iilei/gitsnitch"
  version "0.3.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/iilei/gitsnitch/releases/download/v#{version}/gitsnitch-macOS-universal2.tar.gz"
      sha256 "6c689fdda54c0a7dcc853db8101f74ca4e54128f16fcb450b73c4ac2ac8d57a7"
    end

    on_intel do
      url "https://github.com/iilei/gitsnitch/releases/download/v#{version}/gitsnitch-macOS-universal2.tar.gz"
      sha256 "ad1f44e42862164339ecb73bc64bc9858cf655f1c6f3e545ec40d36613f85db2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iilei/gitsnitch/releases/download/v#{version}/gitsnitch-Linux-musl-arm64.tar.gz"
      sha256 "48c5d1e87fb817a0e5efa220d649c2a6fe9773fcef446c63562afd11dca36123"
    end

    on_intel do
      url "https://github.com/iilei/gitsnitch/releases/download/v#{version}/gitsnitch-Linux-musl-x86_64.tar.gz"
      sha256 "ad1f44e42862164339ecb73bc64bc9858cf655f1c6f3e545ec40d36613f85db2"
    end
  end

  def install
    bin.install "gitsnitch"
  end

  test do
    assert_match "gitsnitch #{version}", shell_output("#{bin}/gitsnitch --version")
  end
end
