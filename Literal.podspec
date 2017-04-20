Pod::Spec.new do |s|
  s.name             = 'Literal'
  s.version          = '1.0'
  s.summary          = 'Convenient shorthand initializers for CGPoint and etc..'

  s.description      = <<-DESC
  Literal is a swift libiary to provide convenient initializers for CGPoint,
  CGRect,NSRange and etc.. It implement ExpressibleByArrayLiteral protocol on
  these struct, so code can be written like this with Literal:
  ```
      let p: CGPoint = [0, 1]

      view.frame = [10, 20, 100, 100]

      attributedString.setAttributes(attrs, range: [0, 1])

   ```
   DESC

  s.homepage         = 'https://github.com/leavez/Literal.git'
  s.license          = { :type => 'MIT'}
  s.author           = { 'Leavez' => 'gaojiji@gmail.com' }
  s.source           = { :git => 'https://github.com/leavez/Literal.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.10'

  s.source_files = 'Sources/**/*'
end
