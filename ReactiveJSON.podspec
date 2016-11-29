Pod::Spec.new do |s|
  s.name         = "ReactiveJSON"
  s.version      = "1.0.1"
  s.summary      = "Swift networking for JSON services, using ReactiveCocoa"
  s.description  = "ReactiveCocoa"
  s.homepage     = "https://github.com/KevinVitale/ReactiveJSON"
  s.license      = { :type => "Apache 2.0", :file => "LICENSE.md" }
  s.author       = "Quick Contributors"
  s.ios.deployment_target = "7.0"
  s.osx.deployment_target = "10.9"
  s.tvos.deployment_target = "9.0"
  s.source       = { :git => "https://github.com/johndpope/ReactiveJSON.git", :tag => "v#{s.version}" }

  s.source_files = "Sources/Nimble/**/*.{swift,h,m}"
  s.weak_framework = "XCTest"
  s.requires_arc = true
  s.pod_target_xcconfig = { 'ENABLE_BITCODE' => 'NO', 'OTHER_LDFLAGS' => '-weak-lswiftXCTest', 'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "$(PLATFORM_DIR)/Developer/Library/Frameworks"' }
  s.dependency 'ReactiveCocoa'
  
end