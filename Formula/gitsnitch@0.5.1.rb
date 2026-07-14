class GitsnitchAT051 < Formula
  desc "Git commit history linter"
  homepage "https://github.com/iilei/gitsnitch"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/iilei/gitsnitch/releases/download/v#{version}/gitsnitch-macOS-universal2.tar.gz"
      # sha256: macos_universal2
      sha256 "3223681bdc13bd2392c756b39eb24e7412f0cf1aaf35b511b1873132391af9cc"
    end

    on_intel do
      url "https://github.com/iilei/gitsnitch/releases/download/v#{version}/gitsnitch-macOS-universal2.tar.gz"
      # sha256: macos_universal2
      sha256 "3223681bdc13bd2392c756b39eb24e7412f0cf1aaf35b511b1873132391af9cc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iilei/gitsnitch/releases/download/v#{version}/gitsnitch-Linux-musl-arm64.tar.gz"
      # sha256: linux_arm64
      sha256 "21cbc71cd2ccd0721086a04271eb6167fa40c2213670db9aaf20f36c202b9f4e"
    end

    on_intel do
      url "https://github.com/iilei/gitsnitch/releases/download/v#{version}/gitsnitch-Linux-musl-x86_64.tar.gz"
      # sha256: linux_x86_64
      sha256 "8cb9c54a7a7653d7d7cb6b59f5cd7ed2df25acee6cff7fae49c7707da157a4a0"
    end
  end

  def install
    bin.install "gitsnitch"
  end

  test do
    assert_match "gitsnitch #{version}", shell_output("#{bin}/gitsnitch --version")
  end
end
