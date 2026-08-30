class LaneKeeper < Formula
  desc "Repository readiness checks and read-only workflow helpers"
  homepage "https://github.com/iilei/lane-keeper"
  license "MIT"
  version "0.1.0"

  on_macos do
    url "https://github.com/iilei/lane-keeper/releases/download/v0.1.0/lane-keeper_0.1.0_darwin_universal2.tar.gz"
    sha256 "2e88b8f1d1c3a5e6b9c2d4f1a3e5b7c9d1f3a5b7c9d1e3a5b7c9d1e3a5b7c"

    def install
      bin.install "lane-keeper"
      bin.install "git-keep-lane"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/iilei/lane-keeper/releases/download/v0.1.0/lane-keeper_0.1.0_linux_x86_64.tar.gz"
      sha256 "83d5e2583a2831126f1bb43e33783ad3421059a514581d07fe4df0d94755ff95"

      define_method(:install) do
        bin.install "lane-keeper"
        bin.install "git-keep-lane"
      end
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/iilei/lane-keeper/releases/download/v0.1.0/lane-keeper_0.1.0_linux_arm64.tar.gz"
      sha256 "8a7f9c2e1b4d6a3f8c1e4b9d6c3f8a1e4b9d6c3f8a1e4b9d6c3f8a1e4b9d6c"

      define_method(:install) do
        bin.install "lane-keeper"
        bin.install "git-keep-lane"
      end
    end

    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/iilei/lane-keeper/releases/download/v0.1.0/lane-keeper_0.1.0_linux_armv7.tar.gz"
      sha256 "9b5d1e8c6f4a2b9d7e3c1a8f6d4b2e9c7a5f3d1b8e6c4a2f9d7b5e3a1c8f6d"

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
