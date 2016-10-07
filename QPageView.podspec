Pod::Spec.new do |s|
  s.name         = 'QPageView'
  s.version      = '1.0.0'
  s.ios.deployment_target = '7.0'
  s.license      = 'MIT'
  s.homepage     = 'https://github.com/QianChia/QPageView'
  s.authors      = {'QianChia' => 'jhqian0228@icloud.com'}
  s.summary      = 'A simple encapsulation of PageView'
  s.source       = {:git => 'https://github.com/QianChia/QPageView.git', :tag => s.version}
  s.source_files = 'QPageView'
  s.requires_arc = true
end
