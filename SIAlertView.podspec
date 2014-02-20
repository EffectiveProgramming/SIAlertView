Pod::Spec.new do |s|
  s.name     = 'SIAlertView'
  s.version  = '1.5.1'
  s.platform = :ios
  s.license  = 'MIT'
  s.summary  = 'An UIAlertView replacement.'
  s.homepage = 'https://github.com/Sumi-Interactive/SIAlertView'
  s.author   = { 'Sumi Interactive' => 'developer@sumi-sumi.com' }
  s.source   = { :git => 'https://github.com/andreamazz/SIAlertView.git', :tag => s.version }
  s.description = 'An UIAlertView replacement with block syntax and fancy transition styles.'
  s.requires_arc = true
  s.framework    = 'QuartzCore'
  s.source_files = 'SIAlertView/*.{h,m}'
end
