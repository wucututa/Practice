class Post < ApplicationRecord
    has_rich_text :content
    acts_as_paranoid
end
