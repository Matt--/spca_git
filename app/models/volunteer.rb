require 'net/smtp'



class Volunteer < ActiveRecord::Base
  
  attr_accessible :address, :background, :dob, :email, :firstname, :home, :lastname, :mobile, :title
  has_many :notepads

  after_save :send_confirmation_email




  # precondition: after_save callback only triggers on a successfull save
  private
  def send_confirmation_email

message = <<MESSAGE_END
    From: Private Person <me@fromdomain.com>
    To: A Test User <hamid.maddah1991@gmail.com>
    Subject: SMTP e-mail test

    This is a test e-mail message.
    
MESSAGE_END

    Net::SMTP.start('mail.ecs.vuw.ac.nz',
                     587,
                    'localhost',
                    'stevenmatt3', 'wallace12', :plain ) do |smtp|
      smtp.send_message message, 'hjwylde@gmail.com',
                                 'test@gmail.com'
      
                      
    end
    
    puts "******************************************"
    puts "************* email sent"   

  end

end
