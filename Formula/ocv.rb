# typed: true
# frozen_string_literal: true

class Ocv < Formula
  desc "ANSI terminal dashboard and CLI for OpenCode database"
  homepage "https://github.com/woss/opencode-visualizer"
  license "MIT"
  version "1.2.0"

  on_macos do
    on_arm do
      url "https://github.com/woss/opencode-visualizer/releases/download/v1.2.0/ocv-aarch64-macos.tar.gz"
      sha256 "7e19877ecb77597a1db70a1b83b3b4b8769706bc092828d771ec3b996cde7b5e"
    end
    on_intel do
      url "https://github.com/woss/opencode-visualizer/releases/download/v1.2.0/ocv-x86_64-macos.tar.gz"
      sha256 "588d09c28fec5aec09379f2c7cc23efaa6db44c558a8ff544708d8c4abec41cc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/woss/opencode-visualizer/releases/download/v1.2.0/ocv-aarch64-linux.tar.gz"
      sha256 "ac67b5fb34b709634774b83146e0577a1358abc7581861618290592a6f76fca2"
    end
    on_intel do
      url "https://github.com/woss/opencode-visualizer/releases/download/v1.2.0/ocv-x86_64-linux.tar.gz"
      sha256 "871553e2a95b029f6fd8ac5b02a281d3a6786377de733d258276efaf3a99e859"
    end
  end

  def install
    bin.install "ocv"
  end

  test do
    assert_match "ocv", shell_output("\#{bin}/ocv --version")
  end

  livecheck do
    url :stable
    strategy :github_latest
  end
end
