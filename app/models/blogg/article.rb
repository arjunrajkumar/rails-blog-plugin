module Blogg
  class Article < ApplicationRecord
    attr_accessor :author_name

    has_many :comments
    belongs_to :author, class_name: Blogg.author_class.to_s
 
    before_validation :set_author

    def summary
      "#{title}"
    end

    private
      def set_author
        self.author = Blogg.author_class.find_or_create_by(name: author_name)
      end
  end
end
