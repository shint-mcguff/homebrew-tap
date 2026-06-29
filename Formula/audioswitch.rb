class Audioswitch < Formula
  desc "Switch the macOS audio output device from the menu bar or CLI"
  homepage "https://github.com/shint-mcguff/audioswitch"
  url "https://github.com/shint-mcguff/audioswitch/releases/download/v0.1.0/audioswitch-v0.1.0-universal-macos.tar.gz"
  sha256 "b49c7acf8edd45e51f15915e1dfd99450c4dd2985c49ec06e73d3ca3aee54bab"
  license "MIT"
  version "0.1.0"

  depends_on :macos

  def install
    bin.install "audioswitch"
  end

  test do
    assert_equal "0.1.0", shell_output("#{bin}/audioswitch --version").strip
    # `list` always exits 0, even with no devices (CI runners have none).
    shell_output("#{bin}/audioswitch list")
  end
end
