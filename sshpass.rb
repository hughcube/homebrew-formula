class Sshpass < Formula

  desc "ssh 免密码"
  homepage "https://github.com/hughcube/sshpass"
  version "v1.0.0"
  url "https://github.com/hughcube/sshpass/archive/refs/tags/#{version}.tar.gz"
  sha256 "abeee50f48c65cb6bfd4f8fb3f094c212f0efaf74dbf0294d7398a8a00bff796"


  def install
    bin.install "sshpass" => "sshpass"
    bin.install "sshjpass" => "sshjpass"
  end

  test do
    system "false"
  end
end
