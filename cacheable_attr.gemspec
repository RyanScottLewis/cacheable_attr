require 'pathname'

__DIR__ = Pathname.new(__FILE__).dirname
$:.unshift(__DIR__.to_s) unless $:.include?(__DIR__.to_s)

require 'lib/cacheable_attr/version'

PRJ_NAME = File.basename(__FILE__, '.gemspec')

Gem::Specification.new do |s|
  s.author = "Ryan Scott Lewis"
  s.email = "c00lryguy@gmail.com"
  s.homepage = "http://github.com/c00lryguy/#{PRJ_NAME}"
  
  s.description = "`#{PRJ_NAME}` adds cacheable attributes to standard Ruby objects"
  s.summary = "Cache your object's veriables with a pre-set TTL"
  
  s.require_paths = ["lib"]
  
  s.name = PRJ_NAME
  s.version = CacheableAttr::VERSION
  
  s.files = Dir['{lib,spec}/**/*']
  
  # Add files you *might* use in ALL projects! The point is to never need to change.
  %W{Gemfile.lock *.gemspec README.* README Rakefile VERSION LICENSE}.each do |file|
    s.files.unshift(file) if File.exists?(file)
  end
  
  # Add files you *might* use in ALL projects! The point is to never need to change.
  %W{README.* README VERSION LICENSE}.each do |file|
    (s.extra_rdoc_files ||= []).unshift(file) if File.exists?(file)
  end
  
  s.test_files = Dir['{bin,spec}/**/*']
end