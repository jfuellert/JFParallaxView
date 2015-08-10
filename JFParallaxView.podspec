Pod::Spec.new do |s|
  s.name             = 'JFParallaxView'
  s.version          = '1.0.0'
  s.summary          = 'JFParallaxView is used as a class category for adding parallax to scrollable UIKit components.'
  s.description      = <<-DESC
                       JFParallaxView is used as a class category for adding parallax to scrollable UIKit components. It uses class categories to add a UIView parallax property so no subclassing is needed.
                       DESC
  s.homepage         = 'https://github.com/jfuellert/JFParallaxView'
  s.license          = { :type => 'None', :file => 'LICENSE' }
  s.author           = { 'jfuellert' => 'jfuellert@gmail.com' }
  s.source           = { :git => 'https://github.com/jfuellert/JFParallaxView.git', :tag => '1.0.0' }
  s.platform         = :ios, '6.0'
  s.requires_arc     = true
	
  s.source_files     = 'JFParallaxView/JFParallaxView/**/*.{h,m}'
  s.public_header_files = 'JFParallaxView/JFParallaxView/**/*.{h}'

  s.frameworks          = 'UIKit'
end