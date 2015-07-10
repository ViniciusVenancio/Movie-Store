class Actor < ActiveRecord::Base
  belongs_to :movie
  accepts_nested_attributes_for :movie
end