Pod::Spec.new do |s|
  s.name             = 'TailorSwift'
  s.version          = '1.0.0'
  s.summary          = 'Tailor the Swift language to your needs by choosing from useful extensions missing from the Swift Core Libraries / Foundation framework.'
  s.swift_version    = '4.2'
  s.description      = <<-DESC
Tailor the Swift language to your needs by choosing from a number of extensions comprising useful functions missing from the core libraries.
* CollectionAdditions - Map directly to an array of distinct elements / check whether a `Collection` is __not__ empty.
* DictionaryAdditions - Instantiate a Swift dictionary from an array of tuples.
* IntAdditions - Use isZero property rather than == 0 for more readable syntax.
* StringAdditions - Check whether a `String` is __not__ empty.
* UIButtonAdditions - Debounce UIButton taps.
* UIColorAdditions - UIColor extension for getting a lighter / darker shade of a given colour.
* UIViewAdditions - Round view corners individually.
                       DESC

  s.homepage         = 'https://github.com/rwbutler/TailorSwift'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Ross Butler' => 'github@rwbutler.com' }
  s.source           = { :git => 'https://github.com/rwbutler/TailorSwift.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/ross_w_butler'

  s.ios.deployment_target = '8.0'
  s.source_files = 'TailorSwift/Classes/**/*'
end
