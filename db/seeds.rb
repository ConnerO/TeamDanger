College.destroy_all

colleges = College.create([{name: "University of Texas at Austin", city: "Austin", state: "Texas", contact_info: "Sandra Lee 512-777-7890", address: "123 Main Street", tuition: 33842, financial_aid: true, scholarship: true},
							{name: "Baylor University", city: "Waco", state: "Texas", contact_info: "Bob Danger 254-777-7890", address: "123 Main Street", tuition: 34480, financial_aid: true, scholarship: false},
							{name: "Texas A&M", city: "College Station", state: "Texas", contact_info: "Connor O'Danger 123-456-7890", address: "123 Main Street", tuition: 26356, financial_aid: false, scholarship: false},
							{name: "Texas State", city: "San Marcos", state: "Texas", contact_info: "Kyle T-Man Danger 234-567-8901", address: "123 Main Street", tuition: 31808, financial_aid: true, scholarship: false},
							{name: "Southern Methodist University", city: "Dallas", state: "Texas", contact_info: "Lauren Danger 345-678-9123", address: "123 Main Street", tuition: 41820, financial_aid: true, scholarship: true},
							{name: "Rice University", city: "Houston", state: "Texas", contact_info: "Bruce Wayne 456-789-0123", address: "123 Main Street", tuition: 38941, financial_aid: true, scholarship: false},
							{name: "Trinity University", city: "San Antonio", state: "Texas", contact_info: "Clark Kent 567-890-1234", address: "123 Main Street", tuition: 36214, financial_aid: false, scholarship: true},
							{name: "University of North Texas", city: "Denton", state: "Texas", contact_info: "Bill Murray 678-901-2345", address: "123 Main Street", tuition: 26794, financial_aid: true, scholarship: true},
							{name: "St. Edwards University", city: "Austin", state: "Texas", contact_info: "Bruce Willis 901-234-5678", address: "123 Main Street", tuition: 53200, financial_aid: true, scholarship: false},
							{name: "University of Texas at San Antonio", city: "San Antonio", state: "Texas", contact_info: "Elvis Presley 888-987-5432", address: "123 Main Street", tuition: 21835, financial_aid: true, scholarship: true}])



# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
