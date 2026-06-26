# typed: true
# frozen_string_literal: true

class Ocv < Formula
  desc "ANSI terminal dashboard and CLI for OpenCode database"
  homepage "https://github.com/woss/opencode-visualizer"
  license "MIT"
  version "1.5.0"

  on_macos do
    on_arm do
      url "https://github.com/woss/opencode-visualizer/releases/download/v1.5.0/ocv-aarch64-macos.tar.gz"
      sha256 "a05654022ca009ed6cd1d3cbdb29a77fa3e6258ffae25e78804a2f1ba303cca4"
    end
    on_intel do
      url "https://github.com/woss/opencode-visualizer/releases/download/v1.5.0/ocv-x86_64-macos.tar.gz"
      sha256 "8b0b358c7421daa2e64f40c9ac7e4c485809a0ada40f4f33b949f8ab5f399fda"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/woss/opencode-visualizer/releases/download/v1.5.0/ocv-aarch64-linux.tar.gz"
      sha256 "1e082816332a1457c919bca388cc723bc0afcc547965646348d72cfe83820e2f"
    end
    on_intel do
      url "https://github.com/woss/opencode-visualizer/releases/download/v1.5.0/ocv-x86_64-linux.tar.gz"
      sha256 "bf54ea661adefbeafbf94c7fbf2574d2d9f86af6f7e6b1b1f0c879886c911d07"
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
