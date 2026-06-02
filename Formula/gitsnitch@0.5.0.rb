class GitsnitchAT050 < Formula
  desc "Git commit history linter"
  homepage "https://github.com/iilei/gitsnitch"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/iilei/gitsnitch/releases/download/v#{version}/gitsnitch-macOS-universal2.tar.gz"
      # sha256: macos_universal2
      sha256 "b63936ee79f4beeb97f2d9318e89b34294a12b0c9f795a16727f14836ee1c649"
    end

    on_intel do
      url "https://github.com/iilei/gitsnitch/releases/download/v#{version}/gitsnitch-macOS-universal2.tar.gz"
      # sha256: macos_universal2
      sha256 "b63936ee79f4beeb97f2d9318e89b34294a12b0c9f795a16727f14836ee1c649"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iilei/gitsnitch/releases/download/v#{version}/gitsnitch-Linux-musl-arm64.tar.gz"
      # sha256: linux_arm64
      sha256 "22294c36857fbb1cf2c9ccd046b4fb2c70c358523a8ed3843b1fd8bcf29a0d7d"
    end

    on_intel do
      url "https://github.com/iilei/gitsnitch/releases/download/v#{version}/gitsnitch-Linux-musl-x86_64.tar.gz"
      # sha256: linux_x86_64
      sha256 "3c60c68323d7a34d79e106a27dde7134f8dbf52bcfca68044344e33f7f8fde62"
    end
  end

  def install
    bin.install "gitsnitch"
  end

  test do
    assert_match "gitsnitch #{version}", shell_output("#{bin}/gitsnitch --version")
  end
end
