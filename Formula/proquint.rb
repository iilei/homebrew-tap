class Proquint < Formula
  desc "Proquint encode / decode cli"
  homepage "https://github.com/iilei/proquint"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/iilei/proquint/releases/download/v#{version}/proquint_#{version}_darwin_arm64.tar.gz"
      sha256 "14e10877a078544cd857d0482bfbbe206814280d1ad40e19d7c53fde657d9b467"
    end

    on_intel do
      url "https://github.com/iilei/proquint/releases/download/v#{version}/proquint_#{version}_darwin_amd64.tar.gz"
      sha256 "7b0d551935699f17b3ab7137f05efd6814c9ea48e58cc26176817f2341893e2d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iilei/proquint/releases/download/v#{version}/proquint_#{version}_linux_arm64.tar.gz"
      sha256 "abec94ec3bb0235fe2b5b2df215a5e65f5a4357b2d1f03f780c1d16566f131ee698"
    end

    on_intel do
      url "https://github.com/iilei/proquint/releases/download/v#{version}/proquint_#{version}_linux_amd64.tar.gz"
      sha256 "1fa29dda39a6e6a124f22e17691dc0ad62f9597071b673cf654f7fd0020eca61750"
    end
  end

  def install
    bin.install "proquint"
  end

  test do
    assert_match "babab-babop", shell_output("#{bin}/proquint --pad-groups=2 42")
  end
end
