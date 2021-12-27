class AliFlow < Formula
  desc "Flow is a development tool for serverless applications of aliyun."
  homepage "https://help.aliyun.com/document_detail/153811.html?spm=a2cl9.flow_devops2020_goldlog_detail.0.0.6d40680f3OHhIJ"
  version "0.0.6"
  url "https://rdc-plugin-storage.oss-cn-beijing.aliyuncs.com/flow-cli/#{version}/aliyun/flow-step-cli_darwin_amd64"
  sha256 "da0edc069421a3db05b137402db49a4ed8a5acf40039c0941dd3a7649af66ea2"


  def install
    bin.install "flow-step-cli_darwin_amd64" => "aliflow"
  end

  test do
    system "false"
  end
end
