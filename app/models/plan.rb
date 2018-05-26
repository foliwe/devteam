class Plan < ApplicationRecord
validates_presence_of :name, :price
has_many :users
end
