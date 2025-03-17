class Ots < Formula
  desc "Tablestore CLI"
  homepage "https://help.aliyun.com/zh/tablestore/developer-reference/download-the-tablestore-cli"

  version "2023.10.08"
  url "https://help-static-aliyun-doc.aliyuncs.com/file-manage-files/zh-CN/20231225/hgpd/aliyun-tablestore-cli-darwin-amd64-2023-10-08-8612e96.zip"
  sha256 "a66c0d6bf5e87f16f9c961a412e9dbdcb2c3ba46437b48ef22d0e4276da7994f"

  on_arch_conditional do
    on_arm do
      url "https://help-static-aliyun-doc.aliyuncs.com/file-manage-files/zh-CN/20231225/ahhl/aliyun-tablestore-cli-darwin-arm64-2023-10-08-8612e96.zip"
      sha256 "0189b679b3e48c43dc76734ff82090816bc707708f48fc36ee21d2e4cb804207"
    end
  end

  def install
    bin.install "ts" => "ots"
  end

  test do
    system "#{bin}/ots --version"
  end
end
