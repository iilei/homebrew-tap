class LaneKeeper < Formula
  desc "Repository readiness checks and read-only workflow helpers"
  homepage "https://github.com/iilei/lane-keeper"
  license "MIT"
  version "0.1.0"

  on_macos do
    url "https://github.com/iilei/lane-keeper/releases/download/v0.1.0/lane-keeper_0.1.0_darwin_universal2.tar.gz"
    sha256 "c8f0b5c8c8f0b5c8c8f0b5c8c8f0b5c8c8f0b5c8c8f0b5c8c8f0b5c8c8f0b5c8"

    def install
      bin.install "lane-keeper"
      bin.install "git-keep-lane"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/iilei/lane-keeper/releases/download/v0.1.0/lane-keeper_0.1.0_linux_x86_64.tar.gz"
      sha256 "d4e1c6d9d4e1c6d9d4e1c6d9d4e1c6d9d4e1c6d9d4e1c6d9d4e1c6d9d4e1c6d9"

      define_method(:install) do
        bin.install "lane-keeper"
        bin.install "git-keep-lane"
      end
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/iilei/lane-keeper/releases/download/v0.1.0/lane-keeper_0.1.0_linux_arm64.tar.gz"
      sha256 "e5f2d7eae5f2d7eae5f2d7eae5f2d7eae5f2d7eae5f2d7eae5f2d7eae5f2d7ea"

      define_method(:install) do
        bin.install "lane-keeper"
        bin.install "git-keep-lane"
      end
    end

    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/iilei/lane-keeper/releases/download/v0.1.0/lane-keeper_0.1.0_linux_armv7.tar.gz"
      sha256 "f6a3e8fbf6a3e8fbf6a3e8fbf6a3e8fbf6a3e8fbf6a3e8fbf6a3e8fbf6a3e8fb"

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
