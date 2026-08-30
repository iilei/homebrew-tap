class LaneKeeperAT011 < Formula
  desc "Repository readiness checks and read-only workflow helpers"
  homepage "https://github.com/iilei/lane-keeper"
  license "MIT"
  version "0.1.1"

  on_macos do
    url "https://github.com/iilei/lane-keeper/releases/download/v0.1.0/lane-keeper_0.1.0_darwin_universal2.tar.gz"
    sha256 "4bf0da0760603fefac48cc4d8ea950e7d95e7a7c4669e7114e28bc29b9f55a47"

    def install
      bin.install "lane-keeper"
      bin.install "git-keep-lane"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/iilei/lane-keeper/releases/download/v0.1.0/lane-keeper_0.1.0_linux_x86_64.tar.gz"
      sha256 "c8784149f2f214652e6e002e7934f9ce9e2a5284ead7376476f4fdfbff987411"

      define_method(:install) do
        bin.install "lane-keeper"
        bin.install "git-keep-lane"
      end
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/iilei/lane-keeper/releases/download/v0.1.0/lane-keeper_0.1.0_linux_arm64.tar.gz"
      sha256 "173ef05d71a9f73843894b3bec2265e7b8f0e3dd965e609aa14441d77686e2b9"

      define_method(:install) do
        bin.install "lane-keeper"
        bin.install "git-keep-lane"
      end
    end

    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/iilei/lane-keeper/releases/download/v0.1.0/lane-keeper_0.1.0_linux_armv7.tar.gz"
      sha256 "6f35527ee8266e9e7a3dae4be39071affc1931183e4a4cea5e6cc4e8d5cd5230"

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
