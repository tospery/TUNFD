#
# Be sure to run `pod lib lint TUNFD.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TUNFD'
  s.version          = '0.0.1'
  s.summary          = 'TUNFD'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
						TUN FD.
                       DESC

  s.homepage         = 'https://github.com/tospery/TUNFD'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'yangjianxiang' => 'tospery@gmail.com' }
  s.source           = { :git => 'https://github.com/tospery/TUNFD.git', :tag => s.version.to_s }

  s.ios.deployment_target = '11.0'

  s.source_files = 'TUNFD/**/*'
  s.frameworks = 'UIKit', 'NetworkExtension'
end
