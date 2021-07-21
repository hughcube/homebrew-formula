class Ossutil < Formula
    desc "The command line interface of oss of aliyun."
    homepage "https://github.com/aliyun/ossutil"
    version "1.7.5"
    url "http://gosspublic.alicdn.com/ossutil/#{version}/ossutilmac64"
    sha256 "a86c7823c8b21cd3d8f0663a195fe48c3d231ab8c9807927f193e15383a94462"


    def install
        bin.install "ossutilmac64" => "ossutil"
    end

    test do
        system "false"
    end
end
