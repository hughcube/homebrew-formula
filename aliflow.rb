class Aliflow < Formula
  desc "Flow is a development tool for serverless applications of aliyun."
  homepage "https://help.aliyun.com/document_detail/153811.html"
  version "1.0"
  url "https://rdc-plugin-storage.oss-cn-beijing.aliyuncs.com/flow-cli/#{version}/darwin_amd64_flow_cli"
  sha256 "014dfa9bedad49b513a0249be3464a591e327619bb9af753bc4422ef50097949"


  def install
    bin.install "darwin_arm64_flow_cli" => "aliflow"
  end

  test do
    system "false"
  end
end
