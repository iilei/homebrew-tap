class LaneKeeperAT000-pre01 < Formula
  desc "Repository readiness checks and read-only workflow helpers"
  homepage "https://github.com/iilei/lane-keeper"
  license "MIT"
  version "0.0.0-pre01"

  on_macos do
    url "https://github.com/iilei/lane-keeper/releases/download/v0.0.0-pre01/lane-keeper_0.0.0-pre01_darwin_universal2.tar.gz"
    sha256 "e8e2c7bdc86bcc86cd4016f1e55cd52c40cdc9e9a564d4c6cabfa386f289f275"

    def install
      bin.install "lane-keeper"
      bin.install "git-keep-lane"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/iilei/lane-keeper/releases/download/v0.0.0-pre01/lane-keeper_0.0.0-pre01_linux_x86_64.tar.gz"
      sha256 "83d5e2583a2831126f1bb43e33783ad3421059a514581d07fe4df0d94755ff95"

      define_method(:install) do
        bin.install "lane-keeper"
        bin.install "git-keep-lane"
      end
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/iilei/lane-keeper/releases/download/v0.0.0-pre01/lane-keeper_0.0.0-pre01_linux_arm64.tar.gz"
      sha256 "0d25549e6e12cbe5797c495239dc2e1a4ac26bdd719473b3591b002674c63666"

      define_method(:install) do
        bin.install "lane-keeper"
        bin.install "git-keep-lane"
      end
    end

    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/iilei/lane-keeper/releases/download/v0.0.0-pre01/lane-keeper_0.0.0-pre01_linux_armv7.tar.gz"
      sha256 "0dfafaf9d2822aef411a8c9af60968fe3eff21e153c41429591b92aa486ad9af"

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
