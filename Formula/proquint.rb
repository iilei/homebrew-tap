class ProquintAT026 < Formula
  desc "Proquint encode / decode cli"
  homepage "https://github.com/iilei/proquint"
  version "0.2.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/iilei/proquint/releases/download/v#{version}/proquint_#{version}_darwin_universal2.tar.gz"
      # sha256: macos_universal2
      sha256 "c929f87c632062d7d750949f6b1aa37b6866b366d0a545c0d6ef75f36e4305e1"
    end

    on_intel do
      url "https://github.com/iilei/proquint/releases/download/v#{version}/proquint_#{version}_darwin_universal2.tar.gz"
      # sha256: macos_universal2
      sha256 "c929f87c632062d7d750949f6b1aa37b6866b366d0a545c0d6ef75f36e4305e1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iilei/proquint/releases/download/v#{version}/proquint_#{version}_linux_arm64.tar.gz"
      # sha256: linux_arm64
      sha256 "7def76a76b613b96e7187928f198940e3304b792c8540afc804f5bf3d08c762a"
    end

    on_intel do
      url "https://github.com/iilei/proquint/releases/download/v#{version}/proquint_#{version}_linux_amd64.tar.gz"
      # sha256: linux_x86_64
      sha256 "f7b57abaff5b0da5c413da24e7bd0c86d96b6b21282df5b5505fc01d5e5b927f"
    end
  end

  def install
    bin.install "proquint"
  end

  test do
    assert_match "babab-babop", shell_output("#{bin}/proquint --pad-groups=2 42")
  end
end
