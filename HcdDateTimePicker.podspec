#
#  Be sure to run `pod spec lint HcdDateTimePicker.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "HcdDateTimePicker"
  s.version      = "0.0.1"
  s.summary      = "A beautiful DateTimePicker"
  s.description  = <<-DESC
  一个自定义从底部弹出的时间选择器，支持多种样式的时间选择
                   DESC
  s.homepage     = "https://github.com/Jvaeyhcd/HcdDateTimePicker"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Jvaeyhcd" => "chedahuang@icloud.com" }
  s.platform     = :ios, '7.0'
  s.source       = { :git => "https://github.com/Jvaeyhcd/HcdDateTimePicker.git", :tag => s.version.to_s }
  s.source_files  = "HcdDateTimePicker/**/*.{h,m}"
  s.frameworks = "UIKit"
  s.requires_arc = true

end
