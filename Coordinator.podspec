#
# Be sure to run `pod lib lint Coordinator.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'Coordinator'
    s.version          = '0.1.0'
    s.summary          = 'Helper files to help implement Coordinator pattern in HE:labs projects.'
  
  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  
    s.description      = <<-DESC
    Helper files to help implement Coordinator pattern in HE:labs projects.
                         DESC
  
    s.homepage         = 'https://github.com/helabs/coordinator-ios-pod'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'Marcilio Júnior' => 'marciliojrs@gmail.com' }
    s.source           = { :git => 'https://github.com/helabs/coordinator-ios-pod.git', :tag => s.version.to_s }
  
    s.ios.deployment_target = '8.0'
  
    s.source_files = 'Classes/**/*'
    
    s.dependency 'R.swift', '~> 3.3'
  end