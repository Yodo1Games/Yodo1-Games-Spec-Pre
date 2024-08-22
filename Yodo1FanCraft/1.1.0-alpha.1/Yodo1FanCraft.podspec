
#
# Be sure to run `pod lib lint Yodo1FanCraft.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
s.name = 'Yodo1FanCraft'
s.version = '1.1.0-alpha.1'
s.summary = 'Yodo1FanCraft for iOS'
s.swift_version = '5.0'

# This description is used to generate tags and improve search results.
# Yodo1FanCraft Yodo1FanCraft.podspec build config.json ossutilmac64 prepare.sh publish.sh Think: What does it do? Why poddid you write it? What is the focus?
# Yodo1FanCraft Yodo1FanCraft.podspec build config.json ossutilmac64 prepare.sh publish.sh Try to keep it short, snappy and to the point.
# Yodo1FanCraft Yodo1FanCraft.podspec build config.json ossutilmac64 prepare.sh publish.sh Write the description between the DESC delimiters below.
# Yodo1FanCraft Yodo1FanCraft.podspec build config.json ossutilmac64 prepare.sh publish.sh Finally, don't worry about the indent, CocoaPods strips it!

s.description = <<-DESC
TODO: Yodo1FanCraft
DESC

s.homepage = 'https://www.yodo1.com/'
s.license = { :type => 'MIT', :file => 'LICENSE' }
s.author = { 'Yodo1Games' => 'devadmin@yodo1.com' }
s.source = { :http => 'https://sdk-artifacts.yodo1.com/Yodo1FanCraft/1.1.0-alpha.1/iOS/Pre/Yodo1FanCraft-1.1.0-alpha.1.zip' }
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
# s.resources = s.name + '/Assets/Yodo1FanCraft.bundle'
s.resources = s.name + '/Assets/Yodo1FanCraft.bundle', s.name + '/Assets/Yodo1FanCraft.plist'
s.source_files = s.name + '/Classes/**/*'
s.public_header_files = s.name + '/Classes/**/*.h'
s.frameworks = 'UIKit', 'Foundation', 'CoreTelephony', 'SystemConfiguration', 'CoreGraphics', 'Security', 'WebKit', 'CoreMotion'
s.libraries = 'sqlite3', 'z', 'resolv'
s.requires_arc = true

s.dependency 'AFNetworking'
s.dependency 'YYModel'
s.dependency 'FMDB'
s.dependency 'Yodo1Suit/Base'
end
