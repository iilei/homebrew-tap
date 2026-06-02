class ProquintAT023 < Formula
  desc "Proquint encode / decode cli"
  homepage "https://github.com/iilei/proquint"
  version "0.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/iilei/proquint/releases/download/v#{version}/proquint_#{version}_darwin_universal2.tar.gz"
      # sha256: macos_universal2
sha256 "938b5607de4dd53dcf1c59a2c6af1395e7ec9eb4c44d45714b4fa2d4c09d06d7"
    end

    on_intel do
      url "https://github.com/iilei/proquint/releases/download/v#{version}/proquint_#{version}_darwin_universal2.tar.gz"
      # sha256: macos_universal2
sha256 "938b5607de4dd53dcf1c59a2c6af1395e7ec9eb4c44d45714b4fa2d4c09d06d7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iilei/proquint/releases/download/v#{version}/proquint_#{version}_linux_arm64.tar.gz"
      # sha256: linux_arm64
sha256 "601c5b2f4a439d9144e28f6fbed0c4ac2d030bd14f050f5d0826d2ee82a2bce5"
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
