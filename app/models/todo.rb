class Todo < ApplicationRecord
    belongs_to :user
    beongs-to :category, optional: true
    
    validates :title, presence: true

end