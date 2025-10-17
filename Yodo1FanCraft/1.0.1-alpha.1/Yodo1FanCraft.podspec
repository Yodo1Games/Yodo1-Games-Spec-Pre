
#
# Be sure to run `pod lib lint Yodo1FanCraft.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Yodo1FanCraft'
  s.version = '1.0.1-alpha.1'
  s.summary          = 'Yodo1FanCraft for iOS'
  s.swift_version    = '5.0'
  s.description      = <<-DESC
  TODO: Yodo1FanCraft
  DESC
  
  s.homepage         = 'https://www.yodo1.com/'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Yodo1Games' => 'devadmin@yodo1.com' }
  s.source = { :http => 'https://sdk-artifacts.yodo1.com/Yodo1FanCraft/1.0.1-alpha.1/iOS/Pre/Yodo1FanCraft-1.0.1-alpha.1.zip' }
  s.static_framework = true
  s.ios.deployment_target = '12.0'
  s.xcconfig = {
    "OTHER_LDFLAGS" => "-ObjC",
  }
  s.pod_target_xcconfig = {
    "VALID_ARCHS" => "arm64 arm64e armv7 armv7s x86_64",
    "VALID_ARCHS[sdk=iphoneos*]" => "arm64 arm64e armv7 armv7s",
    "VALID_ARCHS[sdk=iphonesimulator*]" => "x86_64 arm64"
  }
  s.resources = s.name + '/Assets/Yodo1FanCraft.bundle', s.name + '/Assets/Yodo1FanCraft.plist'
  s.source_files = s.name + '/Classes/**/*'
  s.public_header_files = s.name + '/Classes/**/*.h'
  s.frameworks = 'UIKit', 'Foundation', 'CoreTelephony', 'SystemConfiguration', 'CoreGraphics', 'Security'
  s.libraries  = 'sqlite3', 'z', 'resolv'
  s.requires_arc = true
  
  s.dependency 'AFNetworking'
  s.dependency 'YYModel'
  s.dependency 'FMDB'
  s.dependency 'Yodo1Suit/Base'
end
