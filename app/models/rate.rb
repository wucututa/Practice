class Rate < ApplicationRecord
    belongs_to :post
    belongs_to :account
end
