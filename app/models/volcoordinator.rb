
# Volunteer coordinator model. Used to generate an acknowledgement text to the applicant.
# Supplies an email address and the body of the acknowledgement text.

class Volcoordinator < ActiveRecord::Base
  attr_accessible :appEmailAcknowledgeText, :email, :email_confirmation, :email_header

  validates :email, confirmation: true
  validates :email_confirmation, presence: true
  validates :email_header, presence: true,
    length: { minimum: 5, too_short: "must have at least %{count} characters"}
  validates :appEmailAcknowledgeText, presence: true, 
    length: { minimum: 50, too_short: "must have at least %{count} characters"}

end
