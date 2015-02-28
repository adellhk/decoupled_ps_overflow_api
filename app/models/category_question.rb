class CategoryQuestion < ActiveRecord::Base
  belongs_to :question
  belongs_to :category
end
