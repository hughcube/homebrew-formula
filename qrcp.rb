class Qrcp < Formula
  desc "Transfer files over Wi-Fi from your computer to a mobile device by scanning a QR code without leaving the terminal."
  homepage "https://github.com/claudiodangelis/qrcp"
  version "0.7.0"
  url "https://github.com/claudiodangelis/qrcp/releases/download/#{version}/qrcp_#{version}_macOS_x86_64.tar.gz"
  sha256 "43596c11c806a462cf2a2d568cbb4c584aa44878a1d22c995faba5cb5a649c2b"


  def install
    bin.install "qrcp" => "qrcp"
  end

  test do
    system "false"
  end
end
