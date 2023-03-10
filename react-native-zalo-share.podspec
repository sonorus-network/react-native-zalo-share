require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-zalo-share"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  react-native-zalo-share
                   DESC
  s.homepage     = "https://github.com/sonorus-network/react-native-zalo-share"
  s.license      = "MIT"
  # s.license    = { :type => "MIT", :file => "FILE_LICENSE" }
  s.authors      = { "nhjuhoang" => "nhjuhoang@email.com" }
  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => "https://github.com/sonorus-network/react-native-zalo-share.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m,swift}"
  s.requires_arc = true
  
  s.dependency "React"
  s.dependency "ZaloSDK", '~> 2.5.0220.1'
end

