class SeleniumServerStandalone < Formula
  desc "Browser automation for testing purposes"
  homepage "https://www.seleniumhq.org/"
  url "https://selenium-release.storage.googleapis.com/4.0-beta-4/selenium-server-4.0.0-beta-4.jar"
  sha256 "4cbd0f5dfa425e0e11c466c45cfd503d9249e8fceb0e425f3adab849655437e0"
  license "Apache-2.0"
  version "4.0.0"

  depends_on "openjdk"

  def install
    libexec.install "selenium-server-standalone-#{version}.jar"
    bin.write_jar_script libexec/"selenium-server-standalone-#{version}.jar", "selenium-server"
  end

  plist_options manual: "selenium-server -port 4444"

  def plist
    <<~EOS
      <?xml version="1.0" encoding="UTF-8"?>
      <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
      <plist version="1.0">
      <dict>
        <key>Label</key>
        <string>#{plist_name}</string>
        <key>RunAtLoad</key>
        <true/>
        <key>KeepAlive</key>
        <false/>
        <key>ProgramArguments</key>
        <array>
          <string>#{Formula["openjdk"].opt_bin}/java</string>
          <string>-jar</string>
          <string>#{libexec}/selenium-server-standalone-#{version}.jar</string>
          <string>-port</string>
          <string>4444</string>
        </array>
        <key>ServiceDescription</key>
        <string>Selenium Server</string>
        <key>StandardErrorPath</key>
        <string>#{var}/log/selenium-error.log</string>
        <key>StandardOutPath</key>
        <string>#{var}/log/selenium-output.log</string>
      </dict>
      </plist>
    EOS
  end

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
