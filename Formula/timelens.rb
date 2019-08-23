class Timelens < Formula
  desc "Timelens command-line client"
  homepage "https://timelens.io"
  url "https://github.com/timelens/timelens/archive/0.1.1.tar.gz"
  sha256 "b7777d655945c3ee52909efcc6d38029a6db12438ae2aa4616291f04f1f776b1"

  depends_on "rust" => :build
  depends_on "gstreamer"
  depends_on "gst-plugins-base"
  depends_on "gst-plugins-good"
  depends_on "gst-libav"


  def install
    system "cargo", "install", "--root", prefix,
                               "--path", "."
  end

  test do
    return true
  end
end
