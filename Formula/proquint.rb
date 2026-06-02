class Proquint < Formula
  desc "Proquint encode / decode cli"
  homepage "https://github.com/iilei/proquint"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/iilei/proquint/releases/download/v#{version}/proquint_#{version}_darwin_universal2.tar.gz"
      # sha256: macos_universal2
      sha256 "da7be961a9ff1967afbbd03cc23ce7a5953675e275bbc5606e45f0031fc17c8d"
    end

    on_intel do
      url "https://github.com/iilei/proquint/releases/download/v#{version}/proquint_#{version}_darwin_universal2.tar.gz"
      # sha256: macos_universal2
      sha256 "da7be961a9ff1967afbbd03cc23ce7a5953675e275bbc5606e45f0031fc17c8d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iilei/proquint/releases/download/v#{version}/proquint_#{version}_linux_arm64.tar.gz"
      # sha256: linux_arm64
      sha256 "43cf148fb22001943711f9c83805374c34aae7452b9cc58d59fbd357e7531b60"
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
