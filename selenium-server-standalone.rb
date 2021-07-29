class SeleniumServerStandalone < Formula
  desc "Browser automation for testing purposes"
  homepage "https://www.seleniumhq.org/"
  url "https://selenium-release.storage.googleapis.com/4.0-beta-4/selenium-server-4.0.0-beta-4.jar"
  sha256 "4cbd0f5dfa425e0e11c466c45cfd503d9249e8fceb0e425f3adab849655437e0"
  license "Apache-2.0"
  version "4.0.0-beta-4"

  depends_on "openjdk"

  def install
    libexec.install "selenium-server-standalone-#{version}.jar"
    bin.write_jar_script libexec/"selenium-server-#{version}.jar", "selenium-server"
  end

  plist_options manual: "selenium-server -port 4444"

  test do
    port = free_port
    fork { exec "#{bin}/selenium-server -port #{port}" }
    sleep 6
    output = shell_output("curl --silent localhost:#{port}/wd/hub/status")
    output = JSON.parse(output)

    assert_equal 0, output["status"]
    assert_equal true, output["value"]["ready"]
    assert_equal version, output["value"]["build"]["version"]
  end
end
