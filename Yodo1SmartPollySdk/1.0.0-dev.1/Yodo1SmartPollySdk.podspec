
#
# Be sure to run `pod lib lint Yodo1SmartPollySdk.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
s.name = 'Yodo1SmartPollySdk'
s.version = '1.0.0-dev.1'
s.summary = 'Yodo1SmartPollySdk for iOS'
s.swift_version = '5.0'

# This description is used to generate tags and improve search results.
# LICENSE Yodo1SmartPollySdk Yodo1SmartPollySdk.podspec build config.json ossutilmac64 prepare.sh publish.sh release-info.md Think: What does it do? Why poddid you write it? What is the focus?
# LICENSE Yodo1SmartPollySdk Yodo1SmartPollySdk.podspec build config.json ossutilmac64 prepare.sh publish.sh release-info.md Try to keep it short, snappy and to the point.
# LICENSE Yodo1SmartPollySdk Yodo1SmartPollySdk.podspec build config.json ossutilmac64 prepare.sh publish.sh release-info.md Write the description between the DESC delimiters below.
# LICENSE Yodo1SmartPollySdk Yodo1SmartPollySdk.podspec build config.json ossutilmac64 prepare.sh publish.sh release-info.md Finally, don't worry about the indent, CocoaPods strips it!

s.description = <<-DESC
TODO: Yodo1SmartPollySdk
DESC

s.homepage = 'https://www.yodo1.com/'
s.license = { :type => 'MIT', :file => 'LICENSE' }
s.author = { 'Yodo1Games' => 'devadmin@yodo1.com' }
s.source = { :http => 'https://bj-ali-opp-sdk-update.oss-cn-beijing.aliyuncs.com/Yodo1SmartPollySdk/1.0.0-dev.1/iOS/Pre/Yodo1SmartPollySdk-1.0.0-dev.1.zip' }
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
s.resources = s.name + '/Assets/Yodo1SmartPolly.bundle'
s.source_files = s.name + '/Classes/**/*'
s.public_header_files = s.name + '/Classes/**/*.h'
s.frameworks = 'UIKit', 'Foundation', 'CoreTelephony', 'SystemConfiguration', 'CoreGraphics', 'Security'
s.libraries = 'sqlite3', 'z', 'resolv'
s.requires_arc = true

s.dependency 'AFNetworking'
s.dependency 'YYModel'
s.dependency 'FMDB'
s.dependency 'Yodo1Suit/Base'
end