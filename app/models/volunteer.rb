require 'net/smtp'



class Volunteer < ActiveRecord::Base

  attr_accessible :address, :background, :dob, :email, :firstname, :home, :lastname, :moblie, :title
  
  validates :title, :presence => true#, :message => ""
  validates :dob, :presence => true
  validates :firstname, :presence => true
  validates :lastname, :presence => true
  validates :address, :presence => true
  validates :email, :presence => true
  validates :background, :presence => true
  
  #We want to only require one of these two
  validates :moblie, :numericality => {:only_integer => true},
                     :presence => true, :if => "home.blank?"
  validates :home, :numericality => {:only_integer => true},
                   :presence => true, :if => "moblie.blank?"

  
  validate :over_18
  

  has_many :whiteboards
  
  def over_18
    if dob + 18.years >= Date.today
      errors.add(:dob, "can't be under 18")
    end
  end



  after_save :send_confirmation_email
  # precondition: after_save callback only triggers on a successfull save
  private
  def send_confirmation_email
    vc = Volcoordinator.find(:first)

    message = <<-MESSAGE_END
    From: #{vc.email_replyto}
    To: #{email}
    Subject: #{vc.email_header}

    #{vc.email_content}
    
    MESSAGE_END

    Net::SMTP.start('mail.ecs.vuw.ac.nz',
                     587,
                    'localhost',
                    'stevenmatt3', 'gromit12', :plain ) do |smtp|
      smtp.send_message message, vc.email_replyto,
                                 'stevenmatt3@myvuw.ac.nz',
                                 'test@gmail.com'

    # puts an email sent message on the server terminal
    puts "\n******************************************"
    puts "************* email sent"
    puts message
                      
    end
  end
end
