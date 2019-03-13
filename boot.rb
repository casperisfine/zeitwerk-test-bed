require 'zeitwerk'

module Autoloaders
  class << self
    def main
      @main ||= Zeitwerk::Loader.new.tap do |l|
        l.tag = 'main'
        l.logger = method(:puts)
      end
    end

    def once
      @once ||= Zeitwerk::Loader.new.tap do |l|
        l.tag = 'once'
        l.logger = method(:puts)
      end
    end

    def each
      yield main
      yield once
    end
  end
end


Autoloaders.main.push_dir(File.expand_path('app/'))
Autoloaders.once.push_dir(File.expand_path('lib/'))
Autoloaders.each(&:setup)

p Foo::MyModel.new
