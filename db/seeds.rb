# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Organization.destroy_all
Event.destroy_all

# name, website, location, description, phone

Organization.create name: "The Talking Farm", website: "http://www.thetalkingfarm.org/" , location: "P. O. Box 6329
Evanston, IL60204", description: "The Talking Farm cultivates healthy, sustainable communities by supporting the production and appreciation of locally grown food.", phone: "(847)-425-5125"

Organization.create name: "The Gaia-Movement", website: "http://gaia-movement-usa.org/" , location: "8918 S. Green St.
Chicago, IL60620", description: "The Gaia-Movement is dedicated to raising public awareness to the plight of the environment. The Gaia-Movement supports innovative projects that protect the environment and ensure future generations are able to enjoy the full benefits of natural resources.", phone: "(773) 651-7870"

Organization.create name: "Community Support Services", website: "http://www.communitysupportservices.org/" , location: "9021 W. Ogden Avenue
Brookfield, IL60513", description: "Community Support Services, Inc. is a private, not-for-profit service agency that initiates, provides and promotes services for people with developmental disabilities and their families, within their communities, in order to strengthen their independence, self-esteem, and ability to participate in and contribute to community life.",
 phone: "(708) 354-4547x112"

Organization.create name: " Uhlich Children's Advantage Network", website: "http://www.ucanchicago.org/" , location: " location
 217 N. Jefferson Street, 4th Floor
 Chicago, IL60661", description: "When children are abused, troubled, or neglected, we provide comprehensive care and treatment so that they may grow into healthy, productive adults. When families are challenged, we provide support and promote healing so a nurturing environment is restored.", phone: "312-669-8200 Ext. 2316"

Organization.create name: "Aspire of Illinois", website: "http://www.aspireofillinois.org/" , location: "
 9901 Derby Lane
 Westchester, IL60154", description: "Aspire's mission is to provide people with developmental disabilities quality lifetime supports and opportunities to achieve their individual highest human potential where they live, learn, work or play.", phone: "(708) 547-3550"


# Event: name, date, location, description, contact_name, phone, organization_id


Event.create name:"Work Day at Howard Street Farm", date: "Thu Jun 21, 2012, 09:30 AM - 11:30 AM", location:"Howard Street Farm, 3701 Howard
Skokie, IL60076", description: "Help us prepare our Demonstration Garden at the Howard Street Farm! We are moving wood chips, building raised beds, and doing other physical work, come joing the fun!
Please bring shovels, garden hoes, garden rakes (not leaf rakes) and gloves if you have them. Please dress accordingly for the weather. No flip flops or sandals please. Bring a water bottle.
", contact_name: "Linda", phone: "(847)651-1197", organization_id: '1'

Event.create name:"Fathers Day Community Gardening", date: 'Fri Jun 22, 2012, 01:00 PM - 05:00 PM',  location:"8918 S. Green St.
Chicago, IL60620", description: "Celebrate Father's Day by volunteering with your kids at the Gaia produce farm, community garden. Volunteers will plant seeds, turn compost, and dig in the dirt. Work with us as we transform our garden into a mini-food producing farm. Come check out the raised bed and hoop house volunteers built last year.", contact_name: "Alex Curry",
 phone: "(773)651-7870", organization_id: "2"

Event.create name:"Volunteer at a 5k event", date: "Sat Jun 23, 2012, 07:00 AM - 10:00 AM", location: "8820 Brookfield Avenue
 Brookfield, IL60513", description: "We are seeking volunteers for the day of the race: traffic safety w/police department, registration, goody bag hand out, obstacles and aid stations at various locations, holding wave signs at start and finish line, and post-race party sign-in people. Volunteers need to arrive at 7am, sign-in volunteers please arrive at 6:30am.", 
 contact_name: "Anna Marie MacDonald", phone: "(708)354-4547x112 ", organization_id: "3"
 
Event.create name:"5th Anniversary Basketball Tournament", date: "Sat Jun 23, 2012, 10:00 AM - 04:00 PM", location:" 246A W. 95th Street-Lowden Homes Basketball court
 Chicago, IL60628", description: "Assist UCAN in making its 5th Annual LTU Basketball Tournament a success. Volunteers are needed for carnival games, registration and food service.
 This event takes place on Saturday, June 23 from 10 am- 4 pm, shift are available from 10 am-1 pm and 1-4 pm. Dress casual, wear your gym shoes and join in the fun!", contact_name: "Ellen Acevedo", phone: "312-669-8200 Ext. 2316", organization_id: "4"

Event.create name:"Fun Aspire Golf Class", date: "Mon Jun 25, 2012, 09:00 AM - 07:00 PM", location: "
 2800 Midwest Road
 Oak Brook, IL60523", description: "Volunteers are needed to assist Aspire, a leader in services for children and adults with developmental disabilities, as we host our annual golf outing on Monday, June 25, 2012 at the beautiful Butterfield Country Club.", contact_name: "
 Angie Peters", phone: "(708) 547-3550" , organization_id: "5"
 
 puts "You have successfully created #{Event.count} events."
 puts "You have successfully created #{Organization.count} organizations."

# Organization.create category: "manual labor", name: "BUILD Inc.", location: "1223 North Milwaukee Avenue, Chicago, IL", contact: "rblasingame@buildchicago.org", phone: "(773) 227-2880"
# Organization.create category: "elderly care", name: "St. Joseph Services", location: "2516 W Cortez, Chicago, IL", contact: "rblasingame@buildchicago.org", phone: "(773) 227-2880"
# Organization.create category: "grounds maintenance", name: "Josephinum Academy", location: "1501 N Oakley Blvd., Chicago, IL", contact: "rblasingame@buildchicago.org", phone: "(773) 227-2880"
# Organization.create category: "clean up", name: "American Friends Service Committee", location: "637 S Dearborn, Chicago, IL", contact: "rblasingame@buildchicago.org", phone: "(773) 227-2880"
# Organization.create category: "event management", name: "USHL United States Hispanic Leadership Institute", location: "431 S Dearborn, Chicago, IL", contact: "rblasingame@buildchicago.org", phone: "(773) 227-2880"
# Organization.create category: "tutoring", name: "The Alain Locke Initiative", location: "328 S Jefferson , Chicago, IL", contact: "rblasingame@buildchicago.org", phone: "(773) 227-2880"
# Organization.create category: "tutoring", name: "Illinois Action for Children", location: "1340 S Damen, Chicago, IL", contact: "rblasingame@buildchicago.org", phone: "(773) 227-2880"
# Organization.create category: "tutoring", name: "DePaul University Campus", location: "1 E Jackson Blvd., Chicago, IL", contact: "rblasingame@buildchicago.org", phone: "(773) 227-2880"
# Organization.create category: "medical care", name: "Kids Have Hope", location: "233 S Wacker Dr, Chicago, IL", contact: "rblasingame@buildchicago.org", phone: "(773) 227-2880"
# Organization.create category: "clean up", name: "The Coalition for United Community Action - ORTC", location: "2925 S Wabash, Chicago, IL", contact: "rblasingame@buildchicago.org", phone: "(773) 227-2880"
# Organization.create category: "tutoring", name: "Carole Robertson Center for Learning", location: "2020 W Roosevelt Rd, Chicago, IL", contact: "rblasingame@buildchicago.org", phone: "(773) 227-2880"
# Organization.create category: "manual labor", name: "The Chicago Lighthouse", location: "1850 W Roosevelt Rd, Chicago, IL", contact: "rblasingame@buildchicago.org", phone: "(773) 227-2880"
# Organization.create category: "event management", name: "The Community and Law Enforcement Partnership", location: "2111 W Roosevelt Rd, Chicago, IL", contact: "rblasingame@buildchicago.org", phone: "(773) 227-2880"
# Organization.create category: "medical care", name: "Chicago Hispanic Health Coalition", location: "2600 S Michigan, Chicago, IL", contact: "rblasingame@buildchicago.org", phone: "(773) 227-2880"
# Organization.create category: "tutoring", name: "In Search of Genius", location: "333 S Des Plaines, Chicago, IL", contact: "rblasingame@buildchicago.org", phone: "(773) 227-2880"
# Organization.create category: "tutoring", name: "Center of Higher Development", location: "233 S Wacker Dr , Chicago, IL", contact: "rblasingame@buildchicago.org", phone: "(773) 227-2880"
# Organization.create category: "grounds maintenance", name: "BDPA", location: "200 S Wacker Dr., Chicago, IL", contact: "rblasingame@buildchicago.org", phone: "(773) 227-2880"
# Organization.create category: "event management", name: "Progressive Community Center", location: "56 E 48Th Street, Chicago, IL", contact: "rblasingame@buildchicago.org", phone: "(773) 227-2880"
# Organization.create category: "event management", name: "United African Organization", location: "3424 S State St, Chicago, IL", contact: "rblasingame@buildchicago.org", phone: "(773) 227-2880"
# Organization.create category: "tutoring", name: "Kids Count Too Inc.", location: "2671 E 75th Street , Chicago, IL", contact: "rblasingame@buildchicago.org", phone: "(773) 227-2880"
# Organization.create category: "food service", name: "Benton House", location: "3052 S Gratten, Chicago, IL", contact: "rblasingame@buildchicago.org", phone: "(773) 227-2880"
# Organization.create category: "tutoring", name: "PEER Services", location: "1200 W 35th Street, Chicago, IL", contact: "rblasingame@buildchicago.org", phone: "(773) 227-2880"
# Organization.create category: "event management", name: "Arab American Action Network", location: "3148 W 63rd Street, Chicago, IL", contact: "rblasingame@buildchicago.org", phone: "(773) 227-2880"
# Organization.create category: "elderly care", name: "Clara's House", location: "1650 W 63rd St, Chicago, IL", contact: "rblasingame@buildchicago.org", phone: "(773) 227-2880"
# Organization.create category: "manual labor", name: "Agora Community Services", location: "400 W 76th Street, Chicago, IL", contact: "rblasingame@buildchicago.org", phone: "(773) 227-2880"
# Organization.create category: "tutoring", name: "All Day Montessori Inc.", location: "1819 W 99th Street, Chicago, IL", contact: "rblasingame@buildchicago.org", phone: "(773) 227-2880"
# Organization.create category: "manual labor", name: "Teamwork Englewood", location: "815 W 63rd Street, Chicago, IL", contact: "rblasingame@buildchicago.org", phone: "(773) 227-2880"
# Organization.create category: "tutoring", name: "Woodlawn Children's Promise Zone", location: "6320 S Dorchester, Chicago, IL", contact: "rblasingame@buildchicago.org", phone: "(773) 227-2880"
# Organization.create category: "food service", name: "The Gala Movement", location: "8918 S Green, Chicago, IL", contact: "rblasingame@buildchicago.org", phone: "(773) 227-2880"
# Organization.create category: "tutoring", name: "Better Boys Foundation", location: "1512 S Pulaski Rd, Chicago, IL", contact: "rblasingame@buildchicago.org", phone: "(773) 227-2880"
# Organization.create category: "event management", name: "Worldvision", location: "5001 W Harrison, Chicago, IL", contact: "rblasingame@buildchicago.org", phone: "(773) 227-2880"
# Event.create category: "manual labor", description: "Clean up some stuff at a construction site.", location: "1223 North Milwaukee Avenue, Chicago, IL", name: "2012 Clean Up Gala", organization_id: 1  
# Event.create category: "manual labor", description: "Pick up stuff.", location: "1223 North Milwaukee Avenue, Chicago, IL", name: "2011 Clean Up Gala", organization_id: 1  
# Event.create category: "elderly care", description: "Help feed the locals.", location: "2516 W Cortez, Chicago, IL", name: "2011 Take Care of Old People Party", organization_id: 1  
# Event.create category: "elderly care", description: "Clean up the bingo room.", location: "2516 W Cortez, Chicago, IL", name: "2012 Elderly-stravaganza", organization_id: 1  
# Event.create category: "grounds maintenance", description: "Clean up some leaves.", location: "1501 N Oakley Blvd., Chicago, IL", name: "Dig the Hole!", organization_id: 2  
# Event.create category: "grounds maintenance", description: "Dig a ditch.", location: "1501 N Oakley Blvd., Chicago, IL", name: "Dig the Hole 2!", organization_id: 2  
# Event.create category: "clean up", description: "Pick up stuff.", location: "637 S Dearborn, Chicago, IL", name: "Hey you, That's your trash!", organization_id: 3
# Event.create category: "clean up", description: "Put the picked up stuff in a bucket.", location: "637 S Dearborn, Chicago, IL", name: "Hey you, that's your trash!", organization_id: 3  
# Event.create category: "event management", description: "Serve the snobby.", location: "431 S Dearborn, Chicago, IL", name: "The Partiers Party", organization_id: 4  
# Event.create category: "event management", description: "Need schaufers.", location: "431 S Dearborn, Chicago, IL", name: "The Partiest Party", organization_id: 4  
# Event.create category: "tutoring", description: "Teach math.", location: "328 S Jefferson , Chicago, IL", name: "Teach Stuff to People", organization_id: 5
# Event.create category: "tutoring", description: "Tutor for SAT's.", location: "328 S Jefferson , Chicago, IL", name: "Teach More Stuff to People", organization_id: 5  
# Event.create category: "tutoring", description: "Help 3rd graders read.", location: "1340 S Damen, Chicago, IL", name: "Teach Stuff to Little People", organization_id: 6  
# Event.create category: "tutoring", description: "Teach kids kickball.", location: "1340 S Damen, Chicago, IL", name: "Kick Stuff Not People", organization_id: 6  
# Event.create category: "tutoring", description: "Help junior highers with Algebra.", location: "1 E Jackson Blvd., Chicago, IL", name: "Algetastic!", organization_id: 7  
# Event.create category: "tutoring", description: "Art class needs paintbrush cleaners.", location: "1 E Jackson Blvd., Chicago, IL", name: "Art is Dirty!", organization_id: 7  
# Event.create category: "medical care", description: "Candy striper. It is as cool as you might think.", location: "233 S Wacker Dr, Chicago, IL", name: "Candy Striper! One P", organization_id: 8  
# Event.create category: "medical care", description: "Wash sheets.", location: "233 S Wacker Dr, Chicago, IL", name: "Help us Clean!", organization_id: 8  
# Event.create category: "clean up", description: "Scrub the bath tubs.", location: "2925 S Wabash, Chicago, IL", name: "Scrub-a-Dub", organization_id: 9  
# Event.create category: "clean up", description: "Wash the washclothes.", location: "2925 S Wabash, Chicago, IL", name: "Scrub-a-Dub 2012", organization_id: 9  
# Event.create category: "tutoring", description: "Teach kids kung fu.", location: "1223 North Milwaukee Avenue, Chicago, IL", name: "Kickin It", organization_id: 10  
# Event.create category: "tutoring", description: "Do you know how to use ninja stars? We need you.", location: "1223 North Milwaukee Avenue, Chicago, IL", name: "Next Gen Ninjas", organization_id: 10  
# Event.create category: "manual labor", description: "Split wood.", location: "2020 W Roosevelt Rd, Chicago, IL", name: "Are You Cold?", organization_id: 11  
# Event.create category: "manual labor", description: "Dig holes.", location: "2020 W Roosevelt Rd, Chicago, IL", name: "Holes, Everyone Needs Them.", organization_id: 11  
# Event.create category: "event management", description: "Coordinate caterers.", location: "1850 W Roosevelt Rd, Chicago, IL", name: "2012 Gala For The Stars", organization_id: 12  
# Event.create category: "event management", description: "Hand out name tags.", location: "1850 W Roosevelt Rd, Chicago, IL", name: "2013 Gala For The Stars", organization_id: 12  
# Event.create category: "medical care", description: "Divy up pills.", location: "2111 W Roosevelt Rd, Chicago, IL", name: "Pill Poppers", organization_id: 13  
# Event.create category: "medical care", description: "Change bandages.", location: "2111 W Roosevelt Rd, Chicago, IL", name: "Pill Poppers Again", organization_id: 13  
# Event.create category: "tutoring", description: "Teach kids A-J.", location: "2600 S Michigan, Chicago, IL", name: "Teaching Stuff to People is Rad", organization_id: 14  
# Event.create category: "tutoring", description: "Teach kids K-Z.", location: "2600 S Michigan, Chicago, IL", name: "Teaching Kids Stuff is Awesome", organization_id: 14  
# Event.create category: "tutoring", description: "Teach kids 1-5.", location: "333 S Des Plaines, Chicago, IL", name: "Learning is Rad", organization_id: 15  
# Event.create category: "tutoring", description: "Teach kids 6-10.", location: "333 S Des Plaines, Chicago, IL", name: "Learning is Tubular!", organization_id: 15  
# Event.create category: "grounds maintenance", description: "Dig more holes.", location: "233 S Wacker Dr , Chicago, IL", name: "More Holes Is Better", organization_id: 16  
# Event.create category: "grounds maintenance", description: "Dig holes.", location: "233 S Wacker Dr , Chicago, IL", name: "Holes Are Great", organization_id: 16  
# Event.create category: "event management", description: "Prepare food.", location: "200 S Wacker Dr., Chicago, IL", name: "The Best Gala", organization_id: 17  
# Event.create category: "event management", description: "Wash dishes.", location: "200 S Wacker Dr., Chicago, IL", name: "The Better Than Best Gala", organization_id: 17  
# Event.create category: "event management", description: "Make sure glasses are spotless.", location: "56 E 48Th Street, Chicago, IL", name: "The Bestest Thing", organization_id: 18  
# Event.create category: "event management", description: "Fold napkins fancily.", location: "56 E 48Th Street, Chicago, IL", name: "The Better Than Best Thing", organization_id: 18  
# Event.create category: "tutoring", description: "Teach kids about tricking.", location: "3424 S State St, Chicago, IL", name: "Teach Me Stuff", organization_id: 19  
# Event.create category: "tutoring", description: "Teach kids how to backflip.", location: "3424 S State St, Chicago, IL", name: "Teach Me More Stuff", organization_id: 19  
# Event.create category: "food service", description: "Make mashed potatoes.", location: "2671 E 75th Street , Chicago, IL", name: "Food is Lovely", organization_id: 20  
# Event.create category: "food service", description: "Cut lots of potatoes.", location: "2671 E 75th Street , Chicago, IL", name: "Yummtopia", organization_id: 20 
# Event.create category: "tutoring", description: "Teach people where the little fork goes at fancy dinners.", location: "3052 S Gratten, Chicago, IL", name: "Learnin is Great", organization_id: 21
# Event.create category: "tutoring", description: "Teach people how not to eat soup.", location: "3052 S Gratten, Chicago, IL", name: "Learnin is Dope", organization_id: 21 
# Event.create category: "event management", description: "Give lots of high fives.", location: "1200 W 35th Street, Chicago, IL", name: "Gizalla 2012", organization_id: 22  
# Event.create category: "event management", description: "Host party.", location: "1200 W 35th Street, Chicago, IL", name: "Gizalla 2013", organization_id: 22 
# Event.create category: "elderly care", description: "Knit clothes for elderly.", location: "3148 W 63rd Street, Chicago, IL", name: "Knitting Is Rad!", organization_id: 23
# Event.create category: "elderly care", description: "Sponge baths.", location: "3148 W 63rd Street, Chicago, IL", name: "Sponges Are What Clean", organization_id: 23 
# Event.create category: "manual labor", description: "Don't get scratched. They have rabies.", location: "1650 W 63rd St, Chicago, IL", name: "Rabies Awareness", organization_id: 24 
# Event.create category: "manual labor", description: "Catch squirrels and release them into the wild.", location: "1650 W 63rd St, Chicago, IL", name: "Squirrel Awareness", organization_id: 24 
# Event.create category: "tutoring", description: "Teach stuff to people.", location: "400 W 76th Street, Chicago, IL", name: "Teaching, It's Cool", organization_id: 25
# Event.create category: "tutoring", description: "Teach adults math at Cook County.", location: "400 W 76th Street, Chicago, IL", name: "Teachin, Is Great!", organization_id: 25 
# Event.create category: "manual labor", description: "Carry a bucket so others can put trash in it.", location: "1819 W 99th Street, Chicago, IL", name: "Buckets For All", organization_id: 26 
# Event.create category: "manual labor", description: "Pick up trash.", location: "1819 W 99th Street, Chicago, IL", name: "Clean Up The Neighborhood", organization_id: 26 
# Event.create category: "tutoring", description: "Teach kids what a crumpet is and how to use it.", location: "815 W 63rd Street, Chicago, IL", name: "The Tea Partay", organization_id: 27
# Event.create category: "tutoring", description: "Teach kids about the awesomeness of tea.", location: "815 W 63rd Street, Chicago, IL", name: "The Tea Party", organization_id: 27 
# Event.create category: "food service", description: "Ladel soup.", location: "8918 S Green, Chicago, IL", name: "People Need to Eat Food", organization_id: 28  
# Event.create category: "food service", description: "Make soup.", location: "8918 S Green, Chicago, IL", name: "People Need to Eat", organization_id: 28 
# Event.create category: "tutoring", description: "Teach kids how to survive in the wilderness.", location: "1512 S Pulaski Rd, Chicago, IL", name: "Learnin Me More Things", organization_id: 29
# Event.create category: "tutoring", description: "Teach kids how to hunt.", location: "1512 S Pulaski Rd, Chicago, IL", name: "Learnin Me Some Things", organization_id: 29 
# Event.create category: "event management", description: "Create pamphlets.", location: "5001 W Harrison, Chicago, IL", name: "Galaxia 2", organization_id: 30 
# Event.create category: "event management", description: "Pass out pamphlets.", location: "5001 W Harrison, Chicago, IL", name: "Galaxia", organization_id: 30
