class ProquintAT022 < Formula
  desc "Proquint encode / decode cli"
  homepage "https://github.com/iilei/proquint"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/iilei/proquint/releases/download/v#{version}/proquint_#{version}_darwin_universal2.tar.gz"
      # sha256: macos_universal2
sha256 "1dc3f799df0ac4edf287ab9ab40b30709c95ceab6b253b36a653312705cac1e0"
    end

    on_intel do
      url "https://github.com/iilei/proquint/releases/download/v#{version}/proquint_#{version}_darwin_universal2.tar.gz"
      # sha256: macos_universal2
sha256 "1dc3f799df0ac4edf287ab9ab40b30709c95ceab6b253b36a653312705cac1e0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iilei/proquint/releases/download/v#{version}/proquint_#{version}_linux_arm64.tar.gz"
      # sha256: linux_arm64
sha256 "d7ddeeffe5371d7cc742670556599cde9a38e58bb6862afae295b0425938fa6a"
    end

    on_intel do
      url "https://github.com/iilei/proquint/releases/download/v#{version}/proquint_#{version}_linux_amd64.tar.gz"
      # sha256: linux_x86_64
      sha256 "e054974fffb7ef5332cf5685d1a9bca5b912f6aac296ed57014305233df71f84"
    end
  end

  def install
    bin.install "proquint"
  end

  test do
    assert_match "babab-babop", shell_output("#{bin}/proquint --pad-groups=2 42")
  end
end
