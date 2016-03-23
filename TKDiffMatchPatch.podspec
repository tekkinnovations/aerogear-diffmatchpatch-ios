Pod::Spec.new do |s|
  # This is namee TKDiffMatchPath to avoid conflict with the regular DiffMatchPath.
  s.name         = 'TKDiffMatchPatch'
  s.version      = '0.1.4'
  s.summary      = 'The Google Diff Match and Patch lib with updates to work with Swift projects. Forked from https://github.com/aerogear/aerogear-diffmatchpatch-ios. Modified to use the heap instead of the stack for some large arrays.'
  s.homepage     = 'http://code.google.com/p/google-diff-match-patch'
  s.license      = {:type => 'Apache License, Version 2.0', :file => 'COPYING'}
  s.author       = {'Neil Fraser' => 'fraser@google.com', 'Jan Weiss' => 'jan@geheimwerk.de'}
  s.source       = { :git => 'https://github.com/tekkinnovations/aerogear-diffmatchpatch-ios.git',  :tag => s.version.to_s }
  s.source_files = '*.{h,m,c}'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.10'
  s.requires_arc = true
end
