#
#  Be sure to run `pod spec lint CryptoEthereumSwift.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "CryptoEthereumSwift"
  spec.version      = "2.0.0"
  spec.summary      = "CryptoEthereumSwift implements necessary cryptographic features for Ethereum"
  spec.description  = <<-DESC
  CryptoEthereumSwift implements necessary cryptographic features for Ethereum. This framwork is currently used in EthereumKit.
                   DESC

  spec.homepage     = "https://github.com/yuzushioh/CryptoEthereumSwift"
  spec.license      = { :type => 'Apache License', :file => 'LICENSE' }
  spec.author             = { "Ryo Fukuda" => "yuzushioh@gmail.com" }
  spec.platform     = :ios, "9.0"
  spec.static_framework = true
  spec.source       = { :git => "https://github.com/yuzushioh/CryptoEthereumSwift.git", :tag => "#{spec.version}" }
  spec.swift_version = '4.2'
  spec.source_files  = "CryptoEthereumSwift/Source/**/*.{swift}", "CryptoEthereumSwift/SupportingFiles/**/*.{h,m}"
  spec.module_map = 'CryptoEthereumSwift/SupportingFiles/CryptoEthereumSwift.modulemap'
  spec.public_header_files = "CryptoEthereumSwift/SupportingFiles/CryptoEthereumSwift.h"
  spec.private_header_files = "CryptoEthereumSwift/SupportingFiles/Internal.h"

  spec.pod_target_xcconfig = {
    'SWIFT_INCLUDE_PATHS' => '${PODS_ROOT}',
    'OTHER_CFLAGS' => '-DHAVE_CONFIG_H=1 -pedantic -Wall -Wextra -Wcast-align -Wnested-externs -Wshadow -Wstrict-prototypes -Wno-shorten-64-to-32 -Wno-conditional-uninitialized -Wno-unused-function -Wno-long-long -Wno-overlength-strings -O3',
    'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/secp256k1/Classes"'
  }

  spec.dependency "CryptoSwift", "~> 1.0.0"
  spec.dependency "OpenSSL-Universal", "~> 1.0"
  spec.dependency "secp256k1.swift", "~> 0.1.4"

end
