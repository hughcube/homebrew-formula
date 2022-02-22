class Ossutil < Formula
    desc "The command line interface of oss of aliyun."
    homepage "https://github.com/aliyun/ossutil"
    version "1.7.9"
    url "http://gosspublic.alicdn.com/ossutil/#{version}/ossutilmac64"
    sha256 "e04e80bce99f47f92c348ecda5703468ab2d99ec655e7aaf8bdd38dfe4c1fa98"


    def install
        bin.install "ossutilmac64" => "ossutil"
    end

    test do
        system "false"
    end
end
