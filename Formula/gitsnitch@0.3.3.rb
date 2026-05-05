class GitsnitchAT033 < Formula
  desc "Git commit history linter"
  homepage "https://github.com/iilei/gitsnitch"
  version "0.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/iilei/gitsnitch/releases/download/v#{version}/gitsnitch-macOS-universal2.tar.gz"
      sha256 "27d188281ca483cae4ce39755b28cb9f7bccca4ed15f3f50be64bad2c2cd7e8d"
    end

    on_intel do
      url "https://github.com/iilei/gitsnitch/releases/download/v#{version}/gitsnitch-macOS-universal2.tar.gz"
      sha256 "77606e2b1af735ed2dad1638cc893089e98b491fe8f9ca93b3c0b3a61194dfd4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iilei/gitsnitch/releases/download/v#{version}/gitsnitch-Linux-musl-arm64.tar.gz"
      sha256 "ed710f2cc9c711d4e46eea59cc67d96d9d46f2b18c9ac3ec576b3a79d05cf8c9"
    end

    on_intel do
      url "https://github.com/iilei/gitsnitch/releases/download/v#{version}/gitsnitch-Linux-musl-x86_64.tar.gz"
      sha256 "77606e2b1af735ed2dad1638cc893089e98b491fe8f9ca93b3c0b3a61194dfd4"
    end
  end

  def install
    bin.install "gitsnitch"
  end

  test do
    assert_match "gitsnitch #{version}", shell_output("#{bin}/gitsnitch --version")
  end
end
