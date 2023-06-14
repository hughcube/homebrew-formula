class AliYunDriveWebdav < Formula
  desc "阿里云盘 WebDAV 服务，主要使用场景为配合支持 WebDAV 协议的客户端 App 如 Infuse、nPlayer 等实现在电视上直接观看云盘视频内容， 支持客户端 App 直接从阿里云盘获取文件播放而不经过运行本应用的服务器中转, 支持上传文件，但受限于 WebDAV 协议不支持文件秒传。"
  homepage "https://github.com/messense/aliyundrive-webdav"
  version "2.2.1"
  url "https://github.com/messense/aliyundrive-webdav/releases/download/v#{version}/aliyundrive-webdav-v#{version}.apple-darwin.tar.gz"
  sha256 "c1bf48114c5dc7e9c7c88d250eb3497df5e50a2e8490fe34ecf6e70431a43d4d"


  def install
    bin.install "aliyundrive-webdav" => "aliyundrive-webdav"
  end

  test do
    system "false"
  end
end
