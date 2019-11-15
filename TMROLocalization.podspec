Pod::Spec.new do |spec|

  spec.name         = "TMROLocalization"
  spec.version      = "0.0.2"
  spec.summary      = "A simple way to Localize copy in your app, written in Swift"

  spec.description  = <<-DESC
This pod allows you to add localization to your app easily.
                   DESC

  spec.homepage     = "https://github.com/TomorrowIdeas/TMROLocalization.git"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "Benji" => "benji@tomorrow.me" }

  spec.ios.deployment_target = "11.2"
  spec.swift_version = "4.2"

  spec.source        = { :git => "https://github.com/TomorrowIdeas/TMROLocalization.git", :tag => "#{spec.version}" }
  spec.source_files  = "TMROLocalization/**/*.{h,m,swift}"

end
