class Fun < Formula
  desc "Fun is a development tool for serverless applications of aliyun."
  homepage "https://github.com/alibaba/funcraft"
  version "3.6.24"
  url "https://funcraft-release.oss-accelerate.aliyuncs.com/fun/fun-v#{version}-macos.zip"
  sha256 "ecc1f5bff0bba3bddc811514766b8f0411888973e1b0ffdd8d023dd47635d445"


  def install
    bin.install "fun-v#{version}-macos" => "fun"
  end

  test do
    system "false"
  end
end
