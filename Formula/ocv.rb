# typed: true
# frozen_string_literal: true

class Ocv < Formula
  desc "ANSI terminal dashboard and CLI for OpenCode database"
  homepage "https://github.com/woss/opencode-visualizer"
  license "MIT"
  version "1.4.0"

  on_macos do
    on_arm do
      url "https://github.com/woss/opencode-visualizer/releases/download/v1.4.0/ocv-aarch64-macos.tar.gz"
      sha256 "f24012dc9a7fb1576905007e85bb861343f6c13d2a913c6a2142ce080b1e286a"
    end
    on_intel do
      url "https://github.com/woss/opencode-visualizer/releases/download/v1.4.0/ocv-x86_64-macos.tar.gz"
      sha256 "e595d1a335253a9e1b1e19a274a89c706e3b757b61c932c4c4e937e504b13b3f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/woss/opencode-visualizer/releases/download/v1.4.0/ocv-aarch64-linux.tar.gz"
      sha256 "567c1a6546f383d390cca01ce481d8997db33b8a370f61fe129f5e18724b7e26"
    end
    on_intel do
      url "https://github.com/woss/opencode-visualizer/releases/download/v1.4.0/ocv-x86_64-linux.tar.gz"
      sha256 "a6b9830aab21284d67050a52801798510e39ac706942c2fecb30ade1ca4a28c1"
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
