class User < ApplicationRecord
  has_many :entries, dependent: :destroy
  has_many :comments, dependent: :destroy
end
