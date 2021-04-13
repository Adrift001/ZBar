Pod::Spec.new do |s|
  s.name             = 'ATBarSDK'
  s.version          = '1.4.1'
  s.summary          = 'ATBarSDK'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/Adrift001/ZBar.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Adrift001' => 'me@jingxuetao.com' }
  s.source           = { :git => 'https://github.com/Adrift001/ZBar.git', :tag => '1.4.1'}

  s.platform = :ios

  s.public_header_files = 'iphone/**/**/*.h', 'include/*.h'

  s.source_files = 'include/zbar.h', 'zbar/**/*.h', 'iphone/*.h', 'iphone/include/**/*.h',
                   'zbar/{config,decoder,error,image,img_scanner,refcnt,scanner,symbol}.c',
                   'zbar/decoder/{codabar,code39,code93,code128,databar,ean,i25,qr_finder}.c',
                   'zbar/qrcode/*.c',
                   'iphone/*.m'

  s.resources    = 'iphone/res/{zbar-*.png,zbar-help.html}'

  s.frameworks   = 'AVFoundation', 'CoreGraphics', 'CoreMedia', 'CoreVideo', 'QuartzCore'

  s.library      = 'iconv'
  s.requires_arc = false

  s.xcconfig = { "EXCLUDED_SOURCE_FILE_NAMES[sdk=iphoneos*][arch=*]"        => 'ZBarReaderViewImpl_Simulator.m',
                 "EXCLUDED_SOURCE_FILE_NAMES[sdk=iphonesimulator*][arch=*]" => 'ZBarReaderViewImpl_Capture.m ZBarCaptureReader.m',
                 "GCC_PREPROCESSOR_DEFINITIONS"                             => 'NDEBUG=1' }

  s.prefix_header_file = 'iphone/include/prefix.pch'

  s.compiler_flags = '-w'
end