require "blogg/engine"

module Blogg
  mattr_accessor :author_class

  def self.author_class
    @@author_class.constantize
  end
end
