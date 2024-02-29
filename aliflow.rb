class Aliflow < Formula
  desc "Flow is a development tool for serverless applications of aliyun."
  homepage "https://help.aliyun.com/document_detail/153811.html"
  version "1.0"
  url "https://rdc-plugin-storage.oss-cn-beijing.aliyuncs.com/flow-cli/#{version}/darwin_amd64_flow_cli"
  sha256 "9cc90f52a7b3aa24d3016e5142127098e658e5809e4d9e9a0afb2602a067b996"


  def install
    bin.install "darwin_arm64_flow_cli" => "aliflow"
  end

  test do
    system "false"
  end
end
