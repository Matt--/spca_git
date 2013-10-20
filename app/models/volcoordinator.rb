# Model for the Volunteer Recruiter

# Volunteer coordinator model. Used to generate an acknowledgement text to the applicant.
# Supplies an email address and the body of the acknowledgement text.

class Volcoordinator < ActiveRecord::Base
  attr_accessible :email_replyto, 
        :application_email_header, :application_email_content,
        :absence_tolerence, :absence_period,
        :absence_email_header, :absence_email_content, :user_id

    belongs_to :user
    accepts_nested_attributes_for :user
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email_replyto, presence: true, 
    format: { with: VALID_EMAIL_REGEX }
  validates :application_email_header, presence: true,
    length: { minimum: 5, too_short: "must have at least %{count} characters"}
  validates :application_email_content, presence: true, 
    length: { minimum: 50, too_short: "must have at least %{count} characters"}

  validates :absence_tolerence, presence: true
  validates :absence_period, presence: true

end
