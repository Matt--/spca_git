
  #### Frequency rules
  # names => {weekly, fortnightly, monthly}
  # week => {1 to 5}
  # name = weekly => week = 1
  # name = fortnighly => week = [1 or 2]
  # name = monthly => week [1 to 5]
  #
  # NB: fortnightly relates week number odd/even to the 52 week year
  # NB: month accepts week 5 for the edge case every three months

class Frequency < ActiveRecord::Base
  attr_accessible :name, :week, :names

  has_many :vol_job_days
  has_many :volunteers,
           :through => :vol_job_day

  validate :name, within: %w(weekly, fortnightly, monthly)
  validate :weekno_validation

  before_validation :check_week_number


  def names
    return ["weekly", "fortnightly", "monthly"]
  end

  def check_week_number
    if name.eql?("weekly") && week > 1 then
      self.week = 1
    end

  end


  def weekno_validation
    errors.add(:week, "-> week number must equal 1") if 
      name.eql?("weekly") && self.week != 1

    errors.add(:week, "-> week number must be 1 or 2 for the odd or even week in the 52 week count") if 
      name.eql?("fortnightly") && !(1..2).include?(week)

    errors.add(:week, "-> week number must be in the range 1..5") if 
      name.eql?("monthly") && !(1..5).include?(week) 
  end

end
