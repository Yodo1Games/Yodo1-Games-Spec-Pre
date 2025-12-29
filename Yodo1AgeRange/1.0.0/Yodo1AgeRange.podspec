Pod::Spec.new do |s|
  s.name             = 'Yodo1AgeRange'
  s.version = '1.0.0'
  s.summary          = 'Yodo1 Objective-C wrapper for Apple DeclaredAgeRange Swift framework'
  s.description      = <<-DESC
  Yodo1AgeRange provides an Objective-C interface for Apple's DeclaredAgeRange Swift framework with Yodo1 naming conventions.
                       DESC

  s.homepage         = 'https://www.yodo1.com/'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Yodo1Games' => 'devadmin@yodo1.com' }
  s.source = { :http => 'https://sdk-artifacts.yodo1.com/Yodo1AgeRange/1.0.0/iOS/Pre/Yodo1AgeRange-1.0.0.zip' }

  s.ios.deployment_target = '12.0'
  s.swift_version    = '5.0'

  s.source_files     = s.name + '/Classes/**/*'
  s.public_header_files = s.name + '/Classes/**/*.h'
  
  s.weak_frameworks = 'DeclaredAgeRange'

  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES'
  }
  
  
end
