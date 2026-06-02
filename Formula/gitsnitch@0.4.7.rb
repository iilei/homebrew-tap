class GitsnitchAT047 < Formula
  desc "Git commit history linter"
  homepage "https://github.com/iilei/gitsnitch"
  version "0.4.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/iilei/gitsnitch/releases/download/v#{version}/gitsnitch-macOS-universal2.tar.gz"
      # sha256: macos_universal2
      sha256 "99027904072e63f130dfadabe3b76b63ec1f9e5b7f6e77da90197be09c931c3d"
    end

    on_intel do
      url "https://github.com/iilei/gitsnitch/releases/download/v#{version}/gitsnitch-macOS-universal2.tar.gz"
      # sha256: macos_universal2
      sha256 "99027904072e63f130dfadabe3b76b63ec1f9e5b7f6e77da90197be09c931c3d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iilei/gitsnitch/releases/download/v#{version}/gitsnitch-Linux-musl-arm64.tar.gz"
      # sha256: linux_arm64
      sha256 "411c216cc9c2215e25af3b438c9674991c2e4fa206842832420111054fee2dab"
    end

    on_intel do
      url "https://github.com/iilei/gitsnitch/releases/download/v#{version}/gitsnitch-Linux-musl-x86_64.tar.gz"
      # sha256: linux_x86_64
      sha256 "6c7bfaf0b93c12740aa46309b8d9fc16d8fe2673a9afa163125d5f5cb1816933"
    end
  end

  def install
    bin.install "gitsnitch"
  end

  test do
    assert_match "gitsnitch #{version}", shell_output("#{bin}/gitsnitch --version")
  end
end
