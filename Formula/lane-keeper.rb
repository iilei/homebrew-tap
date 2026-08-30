class LaneKeeper < Formula
  desc "Repository readiness checks and read-only workflow helpers"
  homepage "https://github.com/iilei/lane-keeper"
  license "MIT"
  version "0.1.0"

  on_macos do
    url "https://github.com/iilei/lane-keeper/releases/download/v0.1.0/lane-keeper_0.1.0_darwin_universal2.tar.gz"
    sha256 "cb97ac2d17201ff9d403f176fd7c562cb5d33c0e6a631f22ae8a4830277e2e05"

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
      sha256 "956d013f1e9a8f982fa8bfb682a54ddbcf71276b6a485e5a0a712e1770d77ed6"

      define_method(:install) do
        bin.install "lane-keeper"
        bin.install "git-keep-lane"
      end
    end

    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/iilei/lane-keeper/releases/download/v0.1.0/lane-keeper_0.1.0_linux_armv7.tar.gz"
      sha256 "9da6a5b1812f9faa2e2d36668a447fd69a6920052ccd933ae7f0aa6f3b22c190"

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
