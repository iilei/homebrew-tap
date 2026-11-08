class Proquint < Formula
  desc "Proquint encode / decode cli"
  homepage "https://github.com/iilei/proquint"
  version "0.2.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/iilei/proquint/releases/download/v#{version}/proquint_#{version}_darwin_universal2.tar.gz"
      # sha256: macos_universal2
      sha256 "d69855075fee3269f2f128017254968414623ae481443af75a9d4c9fe767a19f"
    end

    on_intel do
      url "https://github.com/iilei/proquint/releases/download/v#{version}/proquint_#{version}_darwin_universal2.tar.gz"
      # sha256: macos_universal2
      sha256 "d69855075fee3269f2f128017254968414623ae481443af75a9d4c9fe767a19f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iilei/proquint/releases/download/v#{version}/proquint_#{version}_linux_arm64.tar.gz"
      # sha256: linux_arm64
      sha256 "2b3918faf0749f606fbec83b89ea228b33fbd0a8ac188ec66931241c1e5ce0b8"
    end

    on_intel do
      url "https://github.com/iilei/proquint/releases/download/v#{version}/proquint_#{version}_linux_x86_64.tar.gz"
      # sha256: linux_x86_64
      sha256 "8689e6378fb5567f6933fe83a81a16158aef27a14be86bf999b6d9a042ab5233"
    end
  end

  def install
    bin.install "proquint"
  end

  test do
    assert_match "babab-babop", shell_output("#{bin}/proquint --pad-groups=2 42")
  end
end
