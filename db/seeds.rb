# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
# cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
# Mayor.create(name: 'Emanuel', city: cities.first)

User.create([{
    id: 1,
    email: 'andrew',
    password: 'aaa',
    password_confirmation: 'aaa',
    role: 'both'
  },{
    id: 2,
    email: 'rc',
    password: 'aaa',
    password_confirmation: 'aaa',
    role: 'both'
}])

Volcoordinator.create([{
  email_replyto: 'coordinator@test.com',
  application_email_header: 'SPCA Application',
  application_email_content: 'Thank you for your application to become an SPCA Volunteer. We value all our volunteers and appreciate the many ways you can help us out. Please bear with us while your application is processed and we will reply to you by email in approximately 10 working days.',
  absence_tolerence: 3,
  absence_period: 4,
  absence_email_header: 'SPCA - you missed your roster', 
  absence_email_content: 'Hi #{@volunteer.firstname}, you missed your roster today. If you cannot make it in, please just let us know in advance or adjust your preferred schedule online. We like having you here and we value the contribution you make. Please just keep us informed if you cannot come in.',
  user_id: 1
}])

Department.create([
  {name: "Cat Department"},
  {name: "Dog Department"},
  {name: "Rabit Department"},
  {name: "Farm Animals Department"},
  {name: "Admin Department"}
])

# TODO change to give unique user_ids
RosterCoordinator.create([{
    firstname: "Bob",
    lastname: "Jones",
    title: "Sir",
    department_id: 1,
    user_id: 2
  },{
    firstname: "Phil",
    lastname: "Colins",
    title: "Dr",
    department_id: 2,
    user_id: 2
  },{
    firstname: "Fred",
    lastname: "Dagg",
    title: "Mr",
    department_id: 3,
    user_id: 2
  },{
    firstname: "Billy-Ray",
    lastname: "Sirus",
    title: "Mr",
    department_id: 3,
    user_id: 2
  },{
    firstname: "Freddie",
    lastname: "Mercury",
    title: "Mr",
    department_id: 3,
    user_id: 2
}])

Orientation.create([{
  presenter: 'None',
  datetime: nil,
  participantMax: 1000000,
  numCurrParticipant: 1,
  duration: 2
},{
  presenter: 'Mr Cool',
  datetime: DateTime.new(2013, 12, 25, 5, 0, 0),
  participantMax: 2,
  numCurrParticipant: 0,
  duration: 2
},{
  presenter: 'The Regular Person',
  datetime: DateTime.new(2013, 12, 31, 17, 0, 0),
  participantMax: 5,
  numCurrParticipant: 4,
  duration: 2
}])

# TODO change to give unique user_ids (Matt.user_id = 2 is a hack)
# TODO is moblie problem fixed?
Volunteer.create([
  {
    role: 'volunteer',
    title: 'Mr',
    dob: '12-10-1991',
    firstname: 'Andrew',
    lastname: 'Davies',
    address: '3/1 Braithwaite st, karori, wellington',
    email: 'andrew@gmail.com',
#   mobile: 02265,
    home: 0447747,
    background: 'blah blah',
    orientation_id: 1,
    status: 'New',
    user_id: 1
  },{
    role: 'fosterer',
    title: 'Mr',
    dob: '12-10-1991',
    firstname: 'Matt',
    lastname: 'Stevens',
    address: '4 CamelCase st, karori, wellington',
    email: 'matt@something.com',
#   mobile: 02265,
    home: 04123456,
    background: 'like cats and walking',
    orientation_id: 2,
    status: 'New',
    user_id: 2
  },{
    role: 'both',
    title: 'Mr',
    dob: '12-10-1991',
    firstname: 'James',
    lastname: 'McCreanor',
    address: '5 snakeCase st, karori, wellington',
    email: 'james@overhere.com',
#   mobile: 02265,
    home: '0425469',
    background: 'like afternoons, mornings are for hangover recovery',
   orientation_id: 2,
    status: 'New',
    user_id: 1
  },{
    role: 'fosterer',
    title: 'Mr',
    dob: '12-10-1991',
    firstname: 'Hamid',
    lastname: 'Madah',
    address: '6 lowercase st, karori, wellington',
    email: 'hamid@doinstuff.com',
#   mobile: 02265,
    home: '04985423',
    background: 'hate paperwork',
    orientation_id: 3,
    status: 'New',
    user_id: 1
  },{
    role: 'volunteer',
    title: 'Mrs',
    dob: '12-10-1991',
    firstname: 'Mymom',
    lastname: 'Hey you',
    address: '6 UPPERCASE st, karori, wellington',
    email: 'mymom@givingmeshite.com',
#   mobile: 02265,
    home: '0498999999',
    background: 'hate student layabouts',
    orientation_id: 1,
    status: 'Auto-Rejected',
    user_id: 1
  }
])

Volscheduler.create([{
  department_id: 1
}])

Frequency.create([
  {name: "weekly", week: 1},
  {name: "fortnightly", week: 1},
  {name: "fortnightly", week: 2},
  {name: "monthly", week: 1},
  {name: "monthly", week: 2},
  {name: "monthly", week: 3},
  {name: "monthly", week: 4},
  {name: "monthly", week: 5},
])

VolJobDay.create([
  { volunteer_id: 1, jobdescription_id: 2, onday_id: 1},
  { volunteer_id: 1, jobdescription_id: 2, onday_id: 2},
  { volunteer_id: 1, jobdescription_id: 2, onday_id: 3},
  { volunteer_id: 1, jobdescription_id: 2, onday_id: 4},
  { volunteer_id: 1, jobdescription_id: 2, onday_id: 5},
  { volunteer_id: 1, jobdescription_id: 1, onday_id: 6},
  { volunteer_id: 1, jobdescription_id: 1, onday_id: 7},
  { volunteer_id: 2, jobdescription_id: 3, onday_id: 1},
  { volunteer_id: 2, jobdescription_id: 3, onday_id: 2},
  { volunteer_id: 2, jobdescription_id: 3, onday_id: 3},
  { volunteer_id: 2, jobdescription_id: 1, onday_id: 4},
  { volunteer_id: 2, jobdescription_id: 1, onday_id: 5},
  { volunteer_id: 2, jobdescription_id: 1, onday_id: 6},
  { volunteer_id: 2, jobdescription_id: 1, onday_id: 7},
  { volunteer_id: 3, jobdescription_id: 1, onday_id: 1},
  { volunteer_id: 3, jobdescription_id: 1, onday_id: 2},
  { volunteer_id: 3, jobdescription_id: 1, onday_id: 3},
  { volunteer_id: 3, jobdescription_id: 1, onday_id: 4},
  { volunteer_id: 3, jobdescription_id: 1, onday_id: 5},
  { volunteer_id: 3, jobdescription_id: 5, onday_id: 6},
  { volunteer_id: 3, jobdescription_id: 5, onday_id: 7},
  { volunteer_id: 4, jobdescription_id: 4, onday_id: 1},
  { volunteer_id: 4, jobdescription_id: 4, onday_id: 2},
  { volunteer_id: 4, jobdescription_id: 4, onday_id: 3},
  { volunteer_id: 4, jobdescription_id: 1, onday_id: 4},
  { volunteer_id: 4, jobdescription_id: 1, onday_id: 5},
  { volunteer_id: 4, jobdescription_id: 6, onday_id: 6},
  { volunteer_id: 4, jobdescription_id: 1, onday_id: 7},
  { volunteer_id: 5, jobdescription_id: 5, onday_id: 1},
  { volunteer_id: 5, jobdescription_id: 5, onday_id: 2},
  { volunteer_id: 5, jobdescription_id: 5, onday_id: 3},
  { volunteer_id: 5, jobdescription_id: 7, onday_id: 4},
  { volunteer_id: 5, jobdescription_id: 1, onday_id: 5},
  { volunteer_id: 5, jobdescription_id: 1, onday_id: 6},
  { volunteer_id: 5, jobdescription_id: 1, onday_id: 7},
])

Jobdescription.create([
  { department_id: 1, name: 'none'},
  { department_id: 1, name: 'Morning 8-12'},
  { department_id: 1, name: 'Morning 8-12'},
  { department_id: 1, name: 'Afternoon 1-5'},
  { department_id: 1, name: 'Afternoon 1-5'},
  { department_id: 1, name: 'Cat walking'},
  { department_id: 1, name: 'Cat rescue'},
  { department_id: 1, name: 'Cat hugging'},
  { department_id: 1, name: 'Cat Admin'},
])

=begin
  { department_id: 2, name: 'none'},
  { department_id: 2, name: 'Morning 8-12'},
  { department_id: 2, name: 'Morning 8-12'},
  { department_id: 2, name: 'Afternoon 1-5'},
  { department_id: 2, name: 'Afternoon 1-5'},
  { department_id: 3, name: 'none'},
  { department_id: 3, name: 'Morning 8-12'},
  { department_id: 3, name: 'Morning 8-12'},
  { department_id: 3, name: 'Afternoon 1-5'},
  { department_id: 3, name: 'Afternoon 1-5'},
  { department_id: 4, name: 'none'},
  { department_id: 4, name: 'Morning 8-12'},
  { department_id: 4, name: 'Morning 8-12'},
  { department_id: 4, name: 'Afternoon 1-5'},
  { department_id: 4, name: 'Afternoon 1-5'},
  { department_id: 5, name: 'none'},
  { department_id: 5, name: 'Morning 8-12'},
  { department_id: 5, name: 'Morning 8-12'},
  { department_id: 5, name: 'Afternoon 1-5'},
  { department_id: 5, name: 'Afternoon 1-5'},
])
=end

Onday.create([{name: 'Monday'}, {name: 'Tuesday'}, {name: 'Wednesday'}, {name: 'Thursday'}, {name: 'Friday'}, {name: 'Saturday'}, {name: 'Sunday'}])

Absence.create([
  {day: Date.parse("1-10-2013"), volunteer_id: 2},
  {day: Date.parse("30-9-2013"), volunteer_id: 2},
  {day: Date.parse("23-9-2013"), volunteer_id: 2},
  {day: Date.parse("16-9-2013"), volunteer_id: 2},
  {day: Date.parse("9-9-2013"), volunteer_id: 2},
  {day: Date.parse("2-9-2013"), volunteer_id: 2},
  {day: Date.parse("27-8-2013"), volunteer_id: 2},
  {day: Date.parse("20-8-2013"), volunteer_id: 2},
  {day: Date.parse("13-8-2013"), volunteer_id: 2},
  {day: Date.parse("6-8-2013"), volunteer_id: 2},
  {day: Date.parse("30-7-2013"), volunteer_id: 2},
  {day: Date.parse("1-10-2013"), volunteer_id: 3},
  {day: Date.parse("1-10-2013"), volunteer_id: 4},
  {day: Date.parse("1-10-2013"), volunteer_id: 4},
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
presenter: 'None',
datetime: nil,
participantMax: 1000000,
numCurrParticipant:0
},{                     
presenter: 'Matt',
datetime: '2013-12-12-10-10',
participantMax: 2,
numCurrParticipant: 0
},{
presenter: 'Hamid',
datetime: '2014-02-02-05-11',
participantMax: 5,
numCurrParticipant: 0
}])

WorkHistory.create([
  { volunteer_id: 1, job: "feed cats", department: "cat department", supervisor: "Bob Jones", workdate: "1-10-2013" },
  { volunteer_id: 1, job: "feed cats", department: "cat department", supervisor: "Bob Jones", workdate: "2-10-2013" },
  { volunteer_id: 1, job: "feed cats", department: "cat department", supervisor: "Bob Jones", workdate: "3-10-2013" },
  { volunteer_id: 1, job: "feed cats", department: "cat department", supervisor: "Bob Jones", workdate: "4-10-2013" },
  { volunteer_id: 1, job: "feed cats", department: "cat department", supervisor: "Bob Jones", workdate: "5-10-2013" },
  { volunteer_id: 1, job: "feed cats", department: "cat department", supervisor: "Bob Jones", workdate: "6-10-2013" },
  { volunteer_id: 1, job: "feed cats", department: "cat department", supervisor: "Bob Jones", workdate: "7-10-2013", absent: true },
  { volunteer_id: 1, job: "feed cats", department: "cat department", supervisor: "Bob Jones", workdate: "8-10-2013" },
  { volunteer_id: 1, job: "feed cats", department: "cat department", supervisor: "Bob Jones", workdate: "9-10-2013" },
  { volunteer_id: 1, job: "feed cats", department: "cat department", supervisor: "Bob Jones", workdate: "10-10-2013" },
  { volunteer_id: 1, job: "feed cats", department: "cat department", supervisor: "Bob Jones", workdate: "11-10-2013" },


  { volunteer_id: 2, job: "feed cats", department: "cat department", supervisor: "Bob Jones", workdate: "1-10-2013" },
  { volunteer_id: 2, job: "feed cats", department: "cat department", supervisor: "Bob Jones", workdate: "2-10-2013" },
  { volunteer_id: 2, job: "feed cats", department: "cat department", supervisor: "Bob Jones", workdate: "3-10-2013" },
  { volunteer_id: 2, job: "feed cats", department: "cat department", supervisor: "Bob Jones", workdate: "4-10-2013" },
  { volunteer_id: 2, job: "feed cats", department: "cat department", supervisor: "Bob Jones", workdate: "5-10-2013" },
  { volunteer_id: 2, job: "feed cats", department: "cat department", supervisor: "Bob Jones", workdate: "6-10-2013" },
  { volunteer_id: 2, job: "feed cats", department: "cat department", supervisor: "Bob Jones", workdate: "7-10-2013", absent: true },
  { volunteer_id: 2, job: "feed cats", department: "cat department", supervisor: "Bob Jones", workdate: "8-10-2013" },
  { volunteer_id: 2, job: "feed cats", department: "cat department", supervisor: "Bob Jones", workdate: "9-10-2013" },
  { volunteer_id: 2, job: "feed cats", department: "cat department", supervisor: "Bob Jones", workdate: "10-10-2013" },
  { volunteer_id: 2, job: "feed cats", department: "cat department", supervisor: "Bob Jones", workdate: "11-10-2013" },

  { volunteer_id: 1, job: "feed cats", department: "cat department", supervisor: "Bob Jones", workdate: "12-10-2013" },
  { volunteer_id: 2, job: "feed cats", department: "cat department", supervisor: "Bob Jones", workdate: "12-10-2013" },
  { volunteer_id: 3, job: "feed cats", department: "cat department", supervisor: "Bob Jones", workdate: "13-10-2013" },
  { volunteer_id: 4, job: "feed cats", department: "cat department", supervisor: "Bob Jones", workdate: "13-10-2013" },
  { volunteer_id: 1, job: "feed cats", department: "cat department", supervisor: "Bob Jones", workdate: "14-10-2013" },
  { volunteer_id: 2, job: "feed cats", department: "cat department", supervisor: "Bob Jones", workdate: "14-10-2013" },
  { volunteer_id: 1, job: "feed cats", department: "cat department", supervisor: "Bob Jones", workdate: "15-10-2013" },
  { volunteer_id: 2, job: "feed cats", department: "cat department", supervisor: "Bob Jones", workdate: "15-10-2013" },

])

