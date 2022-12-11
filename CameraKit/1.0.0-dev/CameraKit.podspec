#
# Be sure to run `pod lib lint CameraKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CameraKit'
  s.version          = '1.0.0-dev'
  s.summary          = 'A short description of CameraKit.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/machenshuang/CameraKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'machenshuang' => 'machenshuang@joyy.com' }
  s.source           = { :git => 'https://github.com/rgbaapp/ios-camera.git', :branch => 'main' }
  
  s.ios.deployment_target = '11.0'
  s.source_files = 'CameraKit/**/*.{h,m,mm}'
  s.public_header_files = 'CameraKit/**/*.h'
  s.dependency 'GPURender', '1.0.0'
  
  s.pod_target_xcconfig = {
    'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/GPURender/iOS/libs/GPURender.xcframework/ios-arm64/GPURender.framework/Headers"',
    'CLANG_CXX_LANGUAGE_STANDARD' => 'gnu++17',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  
  s.user_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
end
