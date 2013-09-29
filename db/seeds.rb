# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
# cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
# Mayor.create(name: 'Emanuel', city: cities.first)

Volcoordinator.create([{
  email_replyto: 'coordinator@test.com',
  email_header: 'SPCA Application',
  email_content: 'Thank you for your application to become an SPCA Volunteer. We value all our volunteers and appreciate the many ways you can help us out. Please bear with us while your application is processed and we will reply to you by email in approximately 10 working days.'
}])

Department.create([
  {name: "Cat Department"},
  {name: "Dog Department"},
  {name: "Rabit Department"},
  {name: "Farm Animals Department"},
  {name: "Admin Department"}
])

DeptSupervisor.create([
  {firstname: "Bob",
    lastname: "Jones",
    title: "Sir",
    department_id: 1},
  {firstname: "Angela",
    lastname: "Martin",
    title: "Dr",
    department_id: 2},
  {firstname: "Fred",
    lastname: "Dagg",
    title: "Mr",
    department_id: 3}
])

Frequency.create([{name: "monthly", week: 2}])

Volunteer.create([
  {title: 'fosterer',
    dob: '12-10-1991',
    firstname: 'Andrew',
    lastname: 'Blah blah',
    address: '3/1 Braithwaite st, karori, wellington',
    email: 'andrew@gmail.com',
#   mobile: 02265,
    home: 0447747,
    background: 'blah blah'},
  {title: 'cat walker',
    dob: '12-10-1991',
    firstname: 'Matt',
    lastname: 'Blah de blah blah',
    address: '4 CamelCase st, karori, wellington',
    email: 'matt@something.com',
#   mobile: 02265,
    home: 04123456,
    background: 'like cats and walking'},
  {title: 'handyman',
    dob: '12-10-1991',
    firstname: 'James',
    lastname: 'Whoop de whoop',
    address: '5 snakeCase st, karori, wellington',
    email: 'james@overhere.com',
#   mobile: 02265,
    home: '0425469',
    background: 'like afternoons, mornings are for hangover recovery'},
  {title: 'dude',
    dob: '12-10-1991',
    firstname: 'Hamid',
    lastname: 'Dum de Dum',
    address: '6 lowercase st, karori, wellington',
    email: 'hamid@doinstuff.com',
#   mobile: 02265,
    home: '04985423',
    background: 'hate paperwork'},
  {title: 'newbie',
    dob: '12-10-1991',
    firstname: 'Mymom',
    lastname: 'Hey you',
    address: '6 UPPERCASE st, karori, wellington',
    email: 'mymom@givingmeshite.com',
#   mobile: 02265,
    home: '0498999999',
    background: 'hate student layabouts'}
])

Volscheduler.create([{
  department_id: 1
}])

VolJobDay.create([
  { volunteer_id: 1, jobdescription_id: 1, onday_id: 1, frequency_id: 1 },
  { volunteer_id: 1, jobdescription_id: 1, onday_id: 2 },
  { volunteer_id: 1, jobdescription_id: 1, onday_id: 3 },
  { volunteer_id: 1, jobdescription_id: 1, onday_id: 4 },
  { volunteer_id: 1, jobdescription_id: 2, onday_id: 5 },
  { volunteer_id: 1, jobdescription_id: 1, onday_id: 6 },
  { volunteer_id: 1, jobdescription_id: 1, onday_id: 7 },
  { volunteer_id: 2, jobdescription_id: 1, onday_id: 1 },
  { volunteer_id: 2, jobdescription_id: 1, onday_id: 2 },
  { volunteer_id: 2, jobdescription_id: 1, onday_id: 3 },
  { volunteer_id: 2, jobdescription_id: 1, onday_id: 4 },
  { volunteer_id: 2, jobdescription_id: 3, onday_id: 5 },
  { volunteer_id: 2, jobdescription_id: 1, onday_id: 6 },
  { volunteer_id: 2, jobdescription_id: 1, onday_id: 7 },
  { volunteer_id: 3, jobdescription_id: 1, onday_id: 1 },
  { volunteer_id: 3, jobdescription_id: 3, onday_id: 2 },
  { volunteer_id: 3, jobdescription_id: 1, onday_id: 3 },
  { volunteer_id: 3, jobdescription_id: 1, onday_id: 4 },
  { volunteer_id: 3, jobdescription_id: 1, onday_id: 5 },
  { volunteer_id: 3, jobdescription_id: 1, onday_id: 6 },
  { volunteer_id: 3, jobdescription_id: 1, onday_id: 7 },
  { volunteer_id: 4, jobdescription_id: 1, onday_id: 1 },
  { volunteer_id: 4, jobdescription_id: 4, onday_id: 2 },
  { volunteer_id: 4, jobdescription_id: 1, onday_id: 3 },
  { volunteer_id: 4, jobdescription_id: 1, onday_id: 4 },
  { volunteer_id: 4, jobdescription_id: 1, onday_id: 5 },
  { volunteer_id: 4, jobdescription_id: 3, onday_id: 6 },
  { volunteer_id: 4, jobdescription_id: 3, onday_id: 7 },
  { volunteer_id: 5, jobdescription_id: 1, onday_id: 1 },
  { volunteer_id: 5, jobdescription_id: 5, onday_id: 2 },
  { volunteer_id: 5, jobdescription_id: 6, onday_id: 3 },
  { volunteer_id: 5, jobdescription_id: 7, onday_id: 4 },
  { volunteer_id: 5, jobdescription_id: 1, onday_id: 5 },
  { volunteer_id: 5, jobdescription_id: 1, onday_id: 6 },
  { volunteer_id: 5, jobdescription_id: 1, onday_id: 7 },
])

Jobdescription.create([
  { department_id: 1, name: 'none'},
  { department_id: 1, name: 'Morning 8-12'},
  { department_id: 1, name: 'Afternoon 1-5'},
  { department_id: 1, name: 'Cat walking'},
  { department_id: 1, name: 'Cat rescue'},
  { department_id: 1, name: 'Cat hugging'},
  { department_id: 1, name: 'Cat Admin'}
])

Onday.create([{name: 'Monday'}, {name: 'Tuesday'}, {name: 'Wednesday'}, {name: 'Thursday'}, {name: 'Friday'}, {name: 'Saturday'}, {name: 'Sunday'}])

Absence.create([
  {day: Date.parse("1-6-2013"), volunteer_id: 1},
  {day: Date.parse("1-6-2013"), volunteer_id: 1},
  {day: Date.parse("1-6-2013"), volunteer_id: 1},
  {day: Date.parse("1-6-2013"), volunteer_id: 1},
  {day: Date.parse("1-6-2013"), volunteer_id: 1},
  {day: Date.parse("1-6-2013"), volunteer_id: 1},
  {day: Date.parse("1-6-2013"), volunteer_id: 1},
  {day: Date.parse("1-6-2013"), volunteer_id: 1},
  {day: Date.parse("1-6-2013"), volunteer_id: 1},
])

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
},{ 
                             
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
 volunteer_id: 3 
}])

Fosterer2.create([{
 ownhome: 'Yes', 
 inspecting: 'No',
 rooms: 'Yes', 
 roomwarm: 'No', 
 hutch: 'No',	
 rabbithutch: 'No', 
 aviary: 'No',
 livestockfenced: 'No',
 homedesc: 'Blah Blah',
 numadulta: 2, 
 numchild: 1,
 ages: 5,
 numhoursperday: 3,
 worktype: 'Full time',
 secondperson: 'Blah Blah',
 allmembersagree: 'Yes',
 bringcentre: 'Yes',
 transportdesc: 'Boom Boom',
 agreement: 'I agree',
 volunteer_id: 1
}, { 
                             
 ownhome: 'Yes', 
 inspecting: 'No',
 rooms: 'Yes', 
 roomwarm: 'No', 
 hutch: 'No',	
 rabbithutch: 'No', 
 aviary: 'No',
 livestockfenced: 'No',
 homedesc: 'Blah Blah',
 numadulta: 2, 
 numchild: 1,
 ages: 5,
 numhoursperday: 3,
 worktype: 'Away from home',
 secondperson: 'Blah Blah',
 allmembersagree: 'Yes',
 bringcentre: 'Yes',
 transportdesc: 'Boom Boom',
 agreement: 'I agree',
 volunteer_id: 2
},{ 
                             
 ownhome: 'Yes', 
 inspecting: 'No',
 rooms: 'No', 
 roomwarm: 'No', 
 hutch: 'No',	
 rabbithutch: 'No', 
 aviary: 'No',
 livestockfenced: 'No',
 homedesc: 'Blah Blah',
 numadulta: 2, 
 numchild: 0,
 ages: 0,
 numhoursperday: 3,
 worktype: 'Part time',
 secondperson: 'Dum Dum',
 allmembersagree: 'No',
 bringcentre: 'No',
 transportdesc: 'Boom Boom',
 agreement: 'I agree',
 volunteer_id: 3
}])


Orientation.create([{
presenter: 'Matt',
datetime: '2013-12-12-10-10'
},{
presenter: 'Hamid',
datetime: '2014-02-02-05-11'
}])

