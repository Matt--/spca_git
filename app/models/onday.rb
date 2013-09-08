class Onday < ActiveRecord::Base
  attr_accessible :day, :dayint, :dojob_id, :volunteer_id,
                  :dojob_attributes

  belongs_to :dojob
  belongs_to :volunteer

  accepts_nested_attributes_for :dojob
                 # :reject_if => :all_blank
end
