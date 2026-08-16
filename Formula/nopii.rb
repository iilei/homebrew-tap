class Nopii < Formula
  desc "Pipe-first CLI for deterministic PII pseudonymization"
  homepage "https://github.com/iilei/nopii"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/iilei/nopii/releases/download/v#{version}/nopii_Darwin_arm64.tar.gz"
      sha256 "37191241386c27e6db0fcc0577a7d3d8cb134afb27cfcd08d84862295ff39138"
    end

    on_intel do
      url "https://github.com/iilei/nopii/releases/download/v#{version}/nopii_Darwin_x86_64.tar.gz"
      sha256 "3b6aba76ee1c3a4f348d4f6b78ea93dbe78cd1a78fcdd7b988421f64633cc6ce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iilei/nopii/releases/download/v#{version}/nopii_Linux_arm64.tar.gz"
      sha256 "bfa0d0003e5c7e33f7e422746c49918a65da2fe45378332216de2e488fc1812c"
    end

    on_intel do
      url "https://github.com/iilei/nopii/releases/download/v#{version}/nopii_Linux_x86_64.tar.gz"
      sha256 "eb0e2ef263d96ed3f0ed2ae7d84ae738f1e91fa39c5502285e077393a8c0b229"
    end
  end

  def install
    bin.install "nopii"
  end

  test do
    assert_match "nopii", shell_output("#{bin}/nopii --help")
  end
end
