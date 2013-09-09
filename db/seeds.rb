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
  email_content: 'Thank you for your application to become an SPCA Volunteer. We value all our volunteers and appreciate the many ways you can help us out. Please bear with us while your application is processed and we will reply to you by email in aprroximately 10 working days.'
}])

Volunteer.create([{
  title: 'fosterer', 
  dob: '12-10-1991', 
  firstname: 'Andrew-2222',
  lastname: 'Blah blah',
  address: '3/1 Braithwaite st, karori, wellington',
  email: 'andrew@gmail.com',
#  mobile: 02265,
  home: 0447747,
  befosterer: false,
  background: 'blah blah'                           
  
},{
  title: 'fostere2r', 
  dob: '12-12-1991', 
  firstname: 'Hamid2',
  lastname: 'Blah b2lah',
  address: '3/1 Brai2thwaite st, karori, wellington',
  email: 'Hamid@gma2il.com',
#  mobile: 02265,
  home: 04477247,
  befosterer: true,
  background: 'blah2 blah'                           
  
}])


Fosterer.create([{ 
                             
 motivation: 'I like to be a fosterer', 
 catnursing: false,
 catfeeding: true, 
 catbottlefeed: true, 
 catinjured: false,	
 dognursing: false, 
 dogfeeding: false,
 dogbottlefeed: true,
 doginjured: false,
 rabgui: true, 
 hedgehoginjured: true,
 hedgehogbottle: true,
 birdsinjured: false,
 birdstoung: false,
 livestock: false,
 volunteer_id: 1 
}, { 
                             
 motivation: 'I like to be a fosterer', 
 catnursing: false,
 catfeeding: true, 
 catbottlefeed: true, 
 catinjured: false,	
 dognursing: false, 
 dogfeeding: false,
 dogbottlefeed: true,
 doginjured: false,
 rabgui: true, 
 hedgehoginjured: true,
 hedgehogbottle: true,
 birdsinjured: false,
 birdstoung: false,
 livestock: false,
 volunteer_id: 2 
}])