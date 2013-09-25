class VolJobDay < ActiveRecord::Base
  attr_accessible :jobdescription_id, :onday_id, :volunteer_id, :frequency_id,
                  :frequency_attributes

  belongs_to :volunteer
  belongs_to :jobdescription
  belongs_to :onday
  belongs_to :frequency

  accepts_nested_attributes_for :jobdescription
                 # :reject_if => :all_blank
  accepts_nested_attributes_for :onday
                 # :reject_if => :all_blank
  accepts_nested_attributes_for :frequency
                 # :reject_if => :all_blank

  after_save :ensure_frequency

  validates_associated :jobdescription
  validates_associated :onday
  validates_associated :frequency

##############################################
  def ensure_frequency
    if frequency.nil? 
      frequency = Frequency.create
      self.frequency_id = frequency.id
      self.save
    end
  end

end
