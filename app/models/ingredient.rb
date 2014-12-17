class Ingredient < ActiveRecord::Base
belongs_to :cuisine
belongs_to :sauce
end
