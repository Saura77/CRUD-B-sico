class Article < ApplicationRecord
    include Visible
    
    has_many :comments, dependent: :destroy

    def archived?
        status == 'archived'
    end
end
