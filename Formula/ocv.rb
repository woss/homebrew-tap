# typed: true
# frozen_string_literal: true

class Ocv < Formula
  desc "ANSI terminal dashboard and CLI for OpenCode database"
  homepage "https://github.com/woss/opencode-visualizer"
  license "MIT"
  version "1.3.7"

  on_macos do
    on_arm do
      url "https://github.com/woss/opencode-visualizer/releases/download/v1.3.7/ocv-aarch64-macos.tar.gz"
      sha256 "8a9aa17436f3104b7ffb6c9b88bb79a03b815be5639a5eab4a2cc2dfe6eefa25"
    end
    on_intel do
      url "https://github.com/woss/opencode-visualizer/releases/download/v1.3.7/ocv-x86_64-macos.tar.gz"
      sha256 "9ccdae5d2fb18d575063f95053b6c39e0201922e56c061c9b6b05dfe430a3054"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/woss/opencode-visualizer/releases/download/v1.3.7/ocv-aarch64-linux.tar.gz"
      sha256 "6ccdc6017e59b63dc23924d8a1da8bf032d25a235a3586487183942aa7e17e13"
    end
    on_intel do
      url "https://github.com/woss/opencode-visualizer/releases/download/v1.3.7/ocv-x86_64-linux.tar.gz"
      sha256 "87d2d3362193416a1d413ba0a1db397de192c17a532af5c87d10970bcda6835c"
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
