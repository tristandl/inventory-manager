class Product < ActiveRecord::Base
  validates :sku, presence: true, uniqueness: { case_sensitive: false }
end
