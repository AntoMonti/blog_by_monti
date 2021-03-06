class Article < ApplicationRecord
  has_rich_text :text

  has_many :comments, dependent: :destroy
  validates :title, presence: true, length: { minimum: 1 } 
  validates :subtitle, presence: true, length: {minimum: 1 } 
  validates :text, presence: true, length: { minimum: 1 }
          
end
