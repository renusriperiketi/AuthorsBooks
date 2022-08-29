class Author < ApplicationRecord
    include Visible
    has_many :books, dependent: :destroy


    validates :Name, presence: true
    validates :Age, presence: true, length: {maximum: 99}
    validates :City, presence: true
    validates :Country, presence: true
    validates :Qualification, presence: true

end
