class Review < ApplicationRecord
    has_one :fonte
    has_one_attached :image, dependent: :destroy
end
