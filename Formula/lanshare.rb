class Lanshare < Formula
  desc "Share a directory over your LAN with a QR code to open it"
  homepage "https://github.com/shint-mcguff/lanshare"
  url "https://github.com/shint-mcguff/lanshare/releases/download/v0.1.0/lanshare-v0.1.0-universal-macos.tar.gz"
  sha256 "dae9104017a6fb80579d6960dc253c45cf4015b978fe70bc3e2341ca181a1874"
  license "MIT"
  version "0.1.0"

  depends_on :macos

  def install
    bin.install "lanshare"
  end

  test do
    assert_equal "0.1.0", shell_output("#{bin}/lanshare --version").strip
  end
end
