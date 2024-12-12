Pod::Spec.new do |s|
  s.name = 'Alamofire'
  s.version = '5.10.2-allogy'
  s.license = 'MIT'
  s.summary = 'Elegant HTTP Networking in Swift'
  s.homepage = 'https://github.com/Alamofire/Alamofire'
  s.authors = { 'Alamofire Software Foundation' => 'info@alamofire.org' }
  s.source = { :git => 'https://github.com/Allogy/Alamofire.git', :tag => s.version }
  s.documentation_url = 'https://alamofire.github.io/Alamofire/'

  # 1.12.0: Ensure developers won't hit CocoaPods/CocoaPods#11402 with the resource
  # bundle for the privacy manifest.
  # 1.13.0: visionOS is recognized as a platform.

  s.ios.deployment_target = '13.0'

  s.swift_versions = ['5']

  s.source_files = 'Source/**/*.swift'

  s.frameworks = 'CFNetwork'

  s.resource_bundles = {'Alamofire' => ['Source/PrivacyInfo.xcprivacy']}
end
