# typed: true
# frozen_string_literal: true

class Ocv < Formula
  desc "ANSI terminal dashboard and CLI for OpenCode database"
  homepage "https://github.com/woss/opencode-visualizer"
  license "MIT"
  version "1.1.0"

  on_macos do
    on_arm do
      url "https://github.com/woss/opencode-visualizer/releases/download/v1.1.0/ocv-aarch64-macos.tar.gz"
      sha256 "c41df7bfe9d9cb525f696064c7ff238dec34c1716ffec2e65b14e196b023a9cc"
    end
    on_intel do
      url "https://github.com/woss/opencode-visualizer/releases/download/v1.1.0/ocv-x86_64-macos.tar.gz"
      sha256 "baeffb5f71f225054a84d91fd26eab1bd50c7b947e7bfe5c5c45923979f3667a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/woss/opencode-visualizer/releases/download/v1.1.0/ocv-aarch64-linux.tar.gz"
      sha256 "806f062c42c1aace74f88696ad0ee159884084fcbf52c7c70cea3200db871694"
    end
    on_intel do
      url "https://github.com/woss/opencode-visualizer/releases/download/v1.1.0/ocv-x86_64-linux.tar.gz"
      sha256 "6c512f4fd85a93394dd5047bef50d422652945aba38fbfef3fb112cfca90d42e"
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
