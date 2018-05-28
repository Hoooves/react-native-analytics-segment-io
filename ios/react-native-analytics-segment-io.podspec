require "json"
package = JSON.parse(File.read(File.join(__dir__, '../', 'package.json')))

Pod::Spec.new do |s|
  s.name          = package['name']
  s.version       = package["version"]
  s.summary       = package['description']
  s.author        = package['author']
  s.license       = package["license"]
  s.homepage      = package["homepage"]
  s.source        = { :git => 'https://github.com/leoilab/react-native-analytics-segment-io.git' }
  s.platform      = :ios, '8.0'
  s.source_files = 'RNAnalyticsSegmentIO/**/*.{h,m}'
  s.dependency      'React'

end
