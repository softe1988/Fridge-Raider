class CookingStyle < ActiveRecord::Base
has_many :ingredients
belongs_to :cuisine
end
