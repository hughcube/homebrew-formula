class Qrcp < Formula
  desc "Transfer files over Wi-Fi from your computer to a mobile device by scanning a QR code without leaving the terminal."
  homepage "https://github.com/claudiodangelis/qrcp"
  version "0.8.4"
  url "https://github.com/claudiodangelis/qrcp/releases/download/#{version}/qrcp_#{version}_macOS_x86_64.tar.gz"
  sha256 "1e8558437e64ba12bf2c22ab040ceb96fd052f351a69005a76db1f7c6d27ae9e"


  def install
    bin.install "qrcp" => "qrcp"
  end

  test do
    system "false"
  end
end
