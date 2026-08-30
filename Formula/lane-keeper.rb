class LaneKeeper < Formula
  desc "Repository readiness checks and read-only workflow helpers"
  homepage "https://github.com/iilei/lane-keeper"
  license "MIT"
  version "0.1.0"

  on_macos do
    url "https://github.com/iilei/lane-keeper/releases/download/v0.1.0/lane-keeper_0.1.0_darwin_universal2.tar.gz"
    sha256 "TODO_REPLACE_DARWIN_UNIVERSAL2"

    def install
      bin.install "lane-keeper"
      bin.install "git-keep-lane"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/iilei/lane-keeper/releases/download/v0.1.0/lane-keeper_0.1.0_linux_x86_64.tar.gz"
      sha256 "69c0e045b0ae0a4e8119e94b5589cbf96acec79e269adacd21cf956aac56efe1"

      define_method(:install) do
        bin.install "lane-keeper"
        bin.install "git-keep-lane"
      end
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/iilei/lane-keeper/releases/download/v0.1.0/lane-keeper_0.1.0_linux_arm64.tar.gz"
      sha256 "TODO_REPLACE_LINUX_ARM64"

      define_method(:install) do
        bin.install "lane-keeper"
        bin.install "git-keep-lane"
      end
    end

    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/iilei/lane-keeper/releases/download/v0.1.0/lane-keeper_0.1.0_linux_armv7.tar.gz"
      sha256 "TODO_REPLACE_LINUX_ARMV7"

      define_method(:install) do
        bin.install "lane-keeper"
        bin.install "git-keep-lane"
      end
    end
  end

  test do
    assert_match "lane-keeper", shell_output("#{bin}/lane-keeper version")
  end
end
