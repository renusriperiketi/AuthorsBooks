class Book < ApplicationRecord
  include Visible
  belongs_to :author
end
