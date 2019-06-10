Pod::Spec.new do |s|
  s.name         = 'WalletCore'
  s.version      = '1.3.5'
  s.summary      = 'Core Ethereum data structures and algorithms.'
  s.homepage     = 'https://github.com/candangios/WalletCore'
  s.license      = 'MIT'
  s.authors      = { 'candangios' => 'candd1707@gmail.com' }

  s.ios.deployment_target = '10.0'
  s.swift_version = '4.0'

  s.source       = { git: 'https://github.com/candangios/WalletCore.git', tag: s.version }
  s.source_files = 'Sources/**/*.{swift,h,m}'
  s.public_header_files = 'Sources/TrustCore.h', 'Sources/Crypto.h'

  s.dependency 'BigInt'
  s.dependency 'TrezorCrypto', '~> 0.0.6'

  s.pod_target_xcconfig = { 'SWIFT_OPTIMIZATION_LEVEL' => '-Owholemodule' }
end
