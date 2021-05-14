class Category < ApplicationRecord
  belongs_to :categoryable, polymorphic: true
end
