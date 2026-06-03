class ProquintAT028 < Formula
  desc "Proquint encode / decode cli"
  homepage "https://github.com/iilei/proquint"
  version "0.2.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/iilei/proquint/releases/download/v#{version}/proquint_#{version}_darwin_universal2.tar.gz"
      # sha256: macos_universal2
      sha256 "4c0e22f297647c6688c34bceb0e2737a4410b94f59b56ad5e0489dc5b44bc10f"
    end

    on_intel do
      url "https://github.com/iilei/proquint/releases/download/v#{version}/proquint_#{version}_darwin_universal2.tar.gz"
      # sha256: macos_universal2
      sha256 "4c0e22f297647c6688c34bceb0e2737a4410b94f59b56ad5e0489dc5b44bc10f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iilei/proquint/releases/download/v#{version}/proquint_#{version}_linux_arm64.tar.gz"
      # sha256: linux_arm64
      sha256 "6c7db5bb939a17443f1c83cefbfc56dae85dcdbf9807a7ffd454fb3d37af04b9"
    end

    on_intel do
      url "https://github.com/iilei/proquint/releases/download/v#{version}/proquint_#{version}_linux_x86_64.tar.gz"
      # sha256: linux_x86_64
      sha256 "0fbf0bb16ae82b41eeee5de79ca4b989d595c274df36a3b0cb111a655da4023c"
    end
  end

  def install
    bin.install "proquint"
  end

  test do
    assert_match "babab-babop", shell_output("#{bin}/proquint --pad-groups=2 42")
  end
end

