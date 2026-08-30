class LaneKeeper < Formula
  desc "Repository readiness checks and read-only workflow helpers"
  homepage "https://github.com/iilei/lane-keeper"
  license "MIT"
  head "https://github.com/iilei/lane-keeper.git", branch: "master"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(output: bin/"lane-keeper"), "./cmd/lane-keeper"
    system "go", "build", *std_go_args(output: bin/"git-keep-lane"), "./cmd/git-keep-lane"
  end

  test do
    assert_match "lane-keeper", shell_output("#{bin}/lane-keeper version")
  end
end
