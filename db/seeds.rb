# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

volcoordinator = Volcoordinator.create([{
  email_replyto: 'coordinator@test.com', 
  email_header: 'SPCA Application', 
  email_content: 'Thank you for your application to become ans SPCA Volunteer. We value all our volunteers and appreciate the many ways you can help us out. Please bear with us while your application is processed and we will reply to you by email in aprroximately 10 working days.'
}])
