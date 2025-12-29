Pod::Spec.new do |s|
  s.name             = 'Yodo1Social'
  s.version = '1.0.0'
  s.summary          = 'Yodo1 Social SDK for iOS'
  
  s.description      = <<-DESC
  TODO: Add long description of the pod here.
  DESC
  
  s.homepage         = 'https://www.yodo1.com/'
  s.author           = { 'Yodo1Games' => 'devadmin@yodo1.com' }
  s.source = { :http => 'https://sdk-artifacts.yodo1.com/Yodo1Social/1.0.0/iOS/Pre/Yodo1Social-1.0.0.zip' }
  
  s.ios.deployment_target = '12.0'
  s.requires_arc = true
  s.xcconfig = {
    "OTHER_LDFLAGS" => "-ObjC",
    "GENERATE_INFOPLIST_FILE" => "YES"
  }
  s.pod_target_xcconfig = {
    "DEFINES_MODULE" => "YES",
    "VALID_ARCHS" => "arm64 arm64e armv7 armv7s x86_64",
    "VALID_ARCHS[sdk=iphoneos*]" => "arm64 arm64e armv7 armv7s",
    "VALID_ARCHS[sdk=iphonesimulator*]" => "x86_64 arm64"
  }
  s.libraries = [ 'sqlite3.0', 'c++', 'z']
  
  s.frameworks = [
  'Accounts',
  'AssetsLibrary',
  'AVFoundation',
  'CoreTelephony',
  'CoreLocation',
  'CoreMotion',
  'CoreMedia',
  'EventKit',
  'EventKitUI',
  'ImageIO',
  'MobileCoreServices',
  'MediaPlayer',
  'MessageUI',
  'MapKit',
  'Social',
  'StoreKit',
  'WebKit',
  'SystemConfiguration',
  'AudioToolbox',
  'Security']
  
  s.weak_frameworks = [
  'AdSupport',
  'SafariServices',
  'ReplayKit',
  'CloudKit',
  'GameKit']
  
  s.subspec 'Core' do |sub|
    sub.resource = s.name + '/Core/Assets/**/*.bundle'
    sub.source_files = s.name + '/Core/Classes/**/*'
    sub.public_header_files = s.name + '/Core/Classes/**/*.h'

    sub.dependency 'Yodo1Suit/Base'
  end
  
  s.subspec 'Facebook' do |sub|
    sub.source_files = s.name + '/Facebook/Classes/**/*'
    sub.public_header_files = s.name + '/Facebook/Classes/**/*.h'
    
    sub.dependency 'Yodo1Social/Core',"#{s.version}"
    sub.dependency 'FBSDKShareKit','12.3.2'
  end
  
  s.subspec 'QQ' do |sub|
    sub.source_files = s.name + '/QQ/Classes/**/*'
    sub.public_header_files = s.name + '/QQ/Classes/**/*.h'
    sub.vendored_frameworks = s.name + '/QQ/Lib/**/*.xcframework'
    
    sub.frameworks = ['UIKit','Foundation','CoreFoundation','Security','SystemConfiguration','CoreGraphics','CoreTelephony' ]
    sub.libraries = [ 'iconv', 'sqlite3.0', 'c++', 'z']

    sub.dependency 'Yodo1Social/Core',"#{s.version}"
  end
  
  s.subspec 'Wechat' do |sub|
    sub.source_files = s.name + '/Wechat/Classes/**/*'
    sub.public_header_files = s.name + '/Wechat/Classes/**/*.h'
    
    sub.dependency 'Yodo1Social/Core',"#{s.version}"
    sub.dependency 'WechatOpenSDK', '1.8.7.1'
  end
  
  s.subspec 'SinaWeibo' do |sub|
    sub.source_files = s.name + '/SinaWeibo/Classes/**/*'
    sub.public_header_files = s.name + '/SinaWeibo/Classes/**/*.h'
    
    sub.frameworks = ['UIKit','Foundation','QuartzCore','ImageIO','SystemConfiguration','Security','CoreTelephony','CoreText','CoreGraphics','WebKit' ]
    sub.libraries = [ 'sqlite3.0', 'z']
    
    sub.dependency 'Yodo1Social/Core',"#{s.version}"
    sub.dependency 'Weibo_SDK','3.3.5'
  end
  
end
