class Micguard < Formula
  desc "See when your mic is live and mute it from the menu bar or CLI"
  homepage "https://github.com/shint-mcguff/micguard"
  url "https://github.com/shint-mcguff/micguard/releases/download/v0.1.0/micguard-v0.1.0-universal-macos.tar.gz"
  # Filled in after the v0.1.0 release asset is built by CI.
  sha256 "f2c9bea633e1893e55ab6ec04580f4fe614e5aaa073df44ce0c8a4306f85b0d4"
  license "MIT"
  version "0.1.0"

  depends_on :macos

  def install
    bin.install "micguard"
  end

  test do
    assert_equal "0.1.0", shell_output("#{bin}/micguard --version").strip
  end
end
