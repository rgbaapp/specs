#
# Be sure to run `pod lib lint GPUMark.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'GPURender'
  s.version          = '1.0.0'
  s.summary          = 'GPU Render'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/rgbaapp/GPURender'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'machenshuang' => 'chenshuangma@foxmail.com' }
  #s.source           = { :git => 'https://github.com/rgbaapp/GPURender.git', :tag => s.version.to_s }
  s.source           = { :git => 'https://github.com/rgbaapp/GPURender.git', :branch => 'main' }
  
  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  s.user_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
    'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/GPURender/iOS/libs/GPURender.xcframework/ios-arm64/GPURender.framework/Headers"'
  }
  
  s.ios.deployment_target = '11.0'
  s.vendored_frameworks = 'iOS/libs/GPURender.xcframework'
  s.frameworks = 'OpenGLES'
  
end
