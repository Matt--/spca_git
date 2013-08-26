
# Volunteer coordinator model. Used to generate an acknowledgement text to the applicant.
# Supplies an email address and the body of the acknowledgement text.

class Volcoordinator < ActiveRecord::Base
  attr_accessible :email_replyto, :email_header, :email_content

  validates :email_replyto, confirmation: true
  validates :email_content, presence: true
  validates :email_header, presence: true,
    length: { minimum: 5, too_short: "must have at least %{count} characters"}
  validates :email_content, presence: true, 
    length: { minimum: 50, too_short: "must have at least %{count} characters"}

end
