# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

address = Address.new(street: 'Rua Padre Joao Batista Reus',number: 1877,complement: '01',state: 'RS',city: 'Porto Alegre',neighborhood: 'Tristeza',country: 'Brazil');
addressB = Address.new(street: 'Rua Padre Joao Batista Reus',number: 1877,complement: '01',state: 'RS',city: 'Porto Alegre',neighborhood: 'Tristeza',country: 'Brazil');
addressC = Address.new(street: 'Rua Padre Joao Batista Reus',number: 1877,complement: '01',state: 'RS',city: 'Porto Alegre',neighborhood: 'Tristeza',country: 'Brazil');
addressD = Address.new(street: 'Rua Padre Joao Batista Reus',number: 1877,complement: '01',state: 'RS',city: 'Porto Alegre',neighborhood: 'Tristeza',country: 'Brazil');
addressE = Address.new(street: 'Rua Padre Joao Batista Reus',number: 1877,complement: '01',state: 'RS',city: 'Porto Alegre',neighborhood: 'Tristeza',country: 'Brazil');
addressF = Address.new(street: 'Rua Padre Joao Batista Reus',number: 1877,complement: '01',state: 'RS',city: 'Porto Alegre',neighborhood: 'Tristeza',country: 'Brazil');


# Users
person = Person.new(address:address,name: 'Ivonei',phone:'51 91879477',webpage:'www.mypage.com/ivoneijr', sex:'M')
user = User.new(party:person,email:'ivoneijr@gmail.com',password:'ERROR')
pupil = Pupil.create(user:user)

personB = Person.new(address:addressB,name: 'Samir',phone:'51 91379332',webpage:'www.mypage.com/samir', sex:'M')
userB = User.new(party:personB,email:'samir@gmail.com',password:'ERROR')
pupilB = Pupil.create(user:userB)

personC = Person.new(address:addressC,name: 'Daniel',phone:'51 91338951',webpage:'www.mypage.com/daniel', sex:'M')
userC = User.new(party:personC,email:'daniel@gmail.com',password:'ERROR')
pupilC = Pupil.create(user:userC)

personD = Person.new(address:addressD,name: 'Juliana',phone:'51 99182777',webpage:'www.mypage.com/juju', sex:'F')
userD = User.new(party:personD,email:'jujusalimeni@gmail.com',password:'ERROR')
pupilD = Pupil.create(user:userD)

personE = Person.new(address:addressE,name: 'Paulo',phone:'51 882738890',webpage:'www.mypage.com/Paulo', sex:'M')
userE = User.new(party:personE,email:'paulo@gmail.com',password:'ERROR')
pupilE = Pupil.create(user:userE)

personF = Person.new(address:addressF,name: 'Gustavo',phone:'51 88371794',webpage:'www.mypage.com/gustavo', sex:'M')
userF = User.new(party:personF,email:'gustavo@gmail.com',password:'ERROR')
pupilF = Pupil.create(user:userF)



# Coaches
coachAdd = Address.new(street: 'Rua Otto',number: 117,complement: '101',state: 'RS',city: 'Porto Alegre',neighborhood: 'Tristeza',country: 'Brazil');
personCoach = Person.new(address:coachAdd,name: 'Dereck',phone:'51 91879477',webpage:'facebook/dereckpersonal',sex:'M')
userCoach = User.new(party:personCoach,email:'coachDereck@gmail.com',password:'ERROR' )
coach = Coach.create(user: userCoach)
coach.pupils<<pupil
coach.pupils<<pupilB
coach.pupils<<pupilC

# Coaches
personCoachB = Person.new(address:coachAdd,name: 'Vinicius',phone:'51 91879477',webpage:'facebook/vinipersonal',sex:'M')
userCoachB = User.new(party:personCoachB,email:'coachVini@gmail.com',password:'ERROR' )
coachB = Coach.create(user: userCoachB)
coachB.pupils<<pupilD
coachB.pupils<<pupilE

personCoachC = Person.new(address:coachAdd,name: 'Diego',phone:'51 882391092',webpage:'facebook/dipersonal',sex:'M')
userCoachC = User.new(party:personCoachC,email:'coachDiego@gmail.com',password:'ERROR' )
coachC = Coach.create(user: userCoachC)
coachC.pupils<<pupilF



#Assessments

assessment = Assessment.create(subscapularis: 10, 
							triceps: 3, 
							chest: 23,
							axilar: 34,
							supra: 44,
							abs: 98,
							thigh: 59, 
							height: 1.98, 
							weight: 114, 
							coach: coachB, 
							pupil: pupilF )







