class Post < ApplicationRecord
    has_rich_text :content
    has_many :rate, dependent: :destroy

    acts_as_paranoid

    # scope :rich_text_content, ->(query) {
    #     Post.joins(:action_text_rich_text)
    #     where("tilte LIKE :tilte", tilte: "%#{query}%").pluck(:id)
    # }

    def self.ransackable_attributes(auth_object = nil)
        ["content", "created_at", "deleted_at", "id", "title", "updated_at"]
    end

    def self.ransackable_associations(auth_object = nil)
        ["rich_text_content"]
    end
end