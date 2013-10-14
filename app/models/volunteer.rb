require 'net/smtp'

class Volunteer < ActiveRecord::Base

  attr_accessible :id, :address, :background, :dob, :email, :firstname, :home, 
            :lastname, :moblie, :title, :orientation_id, :befosterer, :status,
            :break_from, :break_to,  :vol_job_day_attributes,
            :ondays_attributes, :jobdescriptions_attributes, :role,
            :volscheduler_id

  has_many :whiteboards
  has_one  :fosterer
  has_one :fosterer2
  has_many :absences
  has_one :user
  belongs_to :orientation
  has_many :work_histories
  belongs_to :volscheduler
    accepts_nested_attributes_for :volscheduler

  has_one  :department,
           :through => :volscheduler

  has_many :vol_job_day
    accepts_nested_attributes_for :vol_job_day,
       #    :reject_if => :all_blank,
           :allow_destroy => true

  has_many :jobdescriptions,
           :through => :vol_job_day
    accepts_nested_attributes_for :jobdescriptions

  has_many :ondays,
           :through => :vol_job_day
    accepts_nested_attributes_for :ondays

  has_many :frequencies,
           :through => :vol_job_day
  
  validate  :role, :presence => true
  validates :title, :presence => true #, :message => ""

  validates :dob, :presence => true
  validates :firstname, :presence => true
  validates :lastname, :presence => true
  validates :address, :presence => true
  validates :email, :presence => true
  #validates :background, :presence => true
  validate  :breakdate_validator#, 
            #:unless => (:break_from.nil? && :break_to.nil?)
#  validates_associated :vol_job_days  

  #We want to only require one of these two
  validates :moblie, :numericality => {:only_integer => true},
                     :presence => true, :if => "home.blank?"
  validates :home, :numericality => {:only_integer => true},
                   :presence => true, :if => "moblie.blank?"
  #There is a bug atm - if one of them is there, it doesn't
  #check that the other one is numerical. Don't care atm!
  
  validate :over_18_validator
  
  after_find :enable_vol_job_day
  after_save :send_confirmation_email

##############################################################

  def over_18_validator
    if dob + 18.years >= Date.today
      errors.add(:dob, "can't be under 18")
    end
  end

  def test_email_confirmation_message
    return send_confirmation_email
  end

  def breakdate_validator
    return if(break_from.nil? && break_to.nil?)
    start =  break_from.class == Date ? break_from : Date.new(break_from.to_s)
    finish = break_to.class == Date   ? break_to   : Date.new(break_to.to_s)
    if start.nil? || finish.nil?
      if start.nil?
        errors.add(:break_from, "invalid date string, use dd/mm/yyyy")
      end      
      if finish.nil?
        errors.add(:break_to, "invalid date string, use dd/mm/yyyy")
      end
    else
      if start > finish
        errors.add(:break_to, "end date must be later than start")
      end
      if finish < Date.new
        errors.add(:break_to, "end date must be a future date")
      end
    end
  end

  # precondition: after_save callback only triggers on a successfull save
  private
  def send_confirmation_email
    vc = Volcoordinator.find(:first)

    message = <<-MESSAGE_END
    From: #{defined?(vc.email_replyto).nil? ? 'test from' : vc.email_replyto }
    To: #{email.nil? ? 'test to' : email}
    Subject: #{defined?(vc.application_email_header).nil? ? 
                          'test header' : vc.application_email_header}
    #{defined?(vc.application_email_content).nil? ? 
                          'test content' : vc.application_email_content}
    
    MESSAGE_END

 #   Net::SMTP.start('mail.ecs.vuw.ac.nz',
 #                    587,
 #                   'localhost',
 #                   'stevenmatt3', 'password', :plain ) do |smtp|
 #     smtp.send_message message, vc.email_replyto,
 #                                'stevenmatt3@myvuw.ac.nz',
 #                                'test@gmail.com'


    # puts an email sent message on the server terminal
    puts "\n******************************************"
    puts "************* email sent"
    puts message

    return message # used in test
#    end
  end

  private
  def enable_vol_job_day
    if( vol_job_day.empty? )
      (1..7).each do |n|
        v = VolJobDay.new
        v.volunteer_id = self.id
        v.jobdescription_id = 1
        v.onday_id = n
        v.save
      end
    end
  end

end
