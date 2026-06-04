# typed: true
# frozen_string_literal: true

class Ocv < Formula
  desc "ANSI terminal dashboard and CLI for OpenCode database"
  homepage "https://github.com/woss/opencode-visualizer"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/woss/opencode-visualizer/releases/latest/download/ocv-aarch64-macos.tar.gz"
      sha256 "4a38c319a060b8d4b319bd85e24fc606680726071eb2057ec2e873d7273e6f86"
    end
    on_intel do
      url "https://github.com/woss/opencode-visualizer/releases/latest/download/ocv-x86_64-macos.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/woss/opencode-visualizer/releases/latest/download/ocv-aarch64-linux.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/woss/opencode-visualizer/releases/latest/download/ocv-x86_64-linux.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "ocv"
  end

  test do
    assert_match "ocv", shell_output("#{bin}/ocv --version")
  end

  livecheck do
    url :stable
    strategy :github_latest
  end
end
