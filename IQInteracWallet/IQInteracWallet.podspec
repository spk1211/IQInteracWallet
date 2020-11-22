#
#  Be sure to run `pod spec lint IQInteracWallet.podspec' to ensure this is a

Pod::Spec.new do |spec|


  spec.name         = "IQInteracWallet"
  spec.version      = "1.0.1"
  spec.summary      = "An awesome wallet framework for Interac"
  spec.description  = "A brilliant framework of a wallet with Interac option."
  spec.homepage     = "https://github.com/spk1211/IQInteracWallet"
  
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"

  spec.license      = "MIT"
  # spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }

  #spec.author             = { "JettySoft" => "lookatspk@gmail.com" }
  spec.author    = "JettySoft"
  # spec.authors            = { "" => "" }
  # spec.social_media_url   = "https://twitter.com/"

   spec.platform     = :ios, "11.0"

  spec.source       = { :git => "https://github.com/spk1211/IQInteracWallet.git", :tag => "#{spec.version}" }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  spec.source_files  = "IQInteracWallet/**/*.{h,m,swift}"
  # "IQInteracWallet/**/*.{h,m}" commented for now
  # spec.exclude_files = "Classes/Exclude"

  # spec.public_header_files = "Classes/**/*.h"


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # spec.resource  = "icon.png"
  # spec.resources = "Resources/*.png"

  # spec.preserve_paths = "FilesToSave", "MoreFilesToSave"

spec.swift_version = "5"


end

