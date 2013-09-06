# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Volcoordinator.create([{
  email_replyto: 'coordinator@test.com', 
  email_header: 'SPCA Application', 
  email_content: 'Thank you for your application to become an SPCA Volunteer. We value all our volunteers and appreciate the many ways you can help us out. Please bear with us while your application is processed and we will reply to you by email in aprroximately 10 working days.'
}])

Volunteer.create([{
  title: 'fosterer', 
  dob: '12-10-1991', 
  firstname: 'Andrew',
  lastname: 'Blah blah',
  address: '3/1 Braithwaite st, karori, wellington',
  email: 'andrew@gmail.com',
#  mobile: 02265,
  home: 0447747,
  background: 'blah blah'                           
  
}])

Fosterer.create([{
  personal2: 'I like fostering',   
                        
                              
}])

Volscheduler.create([{
  
}])


Schedulejobtype.create([
  { volscheduler_id: 1, job: 'Morning 8-12' },
  { volscheduler_id: 1, job: 'Afternoon 1-5' },
  { volscheduler_id: 1, job: 'Cat walking' },
  { volscheduler_id: 1, job: 'Cat rescue' },
  { volscheduler_id: 1, job: 'Cat hugging' },
  { volscheduler_id: 1, job: 'Cat Admin' }
])


