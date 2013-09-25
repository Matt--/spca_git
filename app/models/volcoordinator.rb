# Model for the Volunteer Recruiter


# Volunteer coordinator model. Used to generate an acknowledgement text to the applicant.
# Supplies an email address and the body of the acknowledgement text.

class Volcoordinator < ActiveRecord::Base
  attr_accessible :email_replyto, :email_header, :email_content

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email_replyto, presence: true, 
    format: { with: VALID_EMAIL_REGEX }
  validates :email_header, presence: true,
    length: { minimum: 5, too_short: "must have at least %{count} characters"}
  validates :email_content, presence: true, 
    length: { minimum: 50, too_short: "must have at least %{count} characters"}

end
