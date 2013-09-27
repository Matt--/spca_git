class Absence < ActiveRecord::Base
  attr_accessible :day, :volunteer_id

  belongs_to :volunteer

  def recent
    logger.debug "################################################"
    result = 0
    if Date.new(self.day) < Date.parse('1-9-2013')
      result = 1
      logger.debug "################################################"
      logger.debug true
    else
      logger.debug "################################################"
      logger.debug false
    end
  return result
  end

end
