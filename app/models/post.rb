class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, presence: true
    
    scope :published, -> { where('published_at <= ?', Time.now) }
    scope :draft, -> { where('published_at > ?', Time.now) }
    
    def published?
        published_at <= Time.now
    end
end
