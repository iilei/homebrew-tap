class LaneKeeperAT000-pre02 < Formula
  desc "Repository readiness checks and read-only workflow helpers"
  homepage "https://github.com/iilei/lane-keeper"
  license "MIT"
  version "0.0.0-pre02"

  on_macos do
    url "https://github.com/iilei/lane-keeper/releases/download/v0.0.0-pre01/lane-keeper_0.0.0-pre01_darwin_universal2.tar.gz"
    sha256 "20758c3d640fc589a600915292a94ee9d8388c9112f46adae002eb00f961fb37"

    def install
      bin.install "lane-keeper"
      bin.install "git-keep-lane"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/iilei/lane-keeper/releases/download/v0.0.0-pre01/lane-keeper_0.0.0-pre01_linux_x86_64.tar.gz"
      sha256 "fb44515bf9e4591e26ee94fbd4af3db76eaa021a3d0e202f42184ba325a14e39"

      define_method(:install) do
        bin.install "lane-keeper"
        bin.install "git-keep-lane"
      end
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/iilei/lane-keeper/releases/download/v0.0.0-pre01/lane-keeper_0.0.0-pre01_linux_arm64.tar.gz"
      sha256 "826ee32a80a36c57af2af98b1b2f79a1539ba9d0664996c5360e86f7573e911e"

      define_method(:install) do
        bin.install "lane-keeper"
        bin.install "git-keep-lane"
      end
    end

    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/iilei/lane-keeper/releases/download/v0.0.0-pre01/lane-keeper_0.0.0-pre01_linux_armv7.tar.gz"
      sha256 "a51272ea2bba165c61cdc13fc9e766750a572ef916f5a918a315ce9797ce0d00"

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
