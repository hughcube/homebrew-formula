class Sshpass < Formula

  desc "Tablestore CLI"
  homepage "https://help.aliyun.com/zh/tablestore/developer-reference/download-the-tablestore-cli"
  version "2023-10-08-8612e96"
  url "https://help-static-aliyun-doc.aliyuncs.com/file-manage-files/zh-CN/20231225/ahhl/aliyun-tablestore-cli-darwin-arm64-#{version}.zip"
  sha256 "0189b679b3e48c43dc76734ff82090816bc707708f48fc36ee21d2e4cb804207"


  def install
    bin.install "ts" => "ots"
  end

  test do
    system "false"
  end
end
