# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# User = attr_accessible :email, :password, :password_confirmation, :remember_me, :uid, :provider, :name, :user_type
# Business = attr_accessible :description, :name, :user_id
# Appointment Slot = attr_accessible :end_at, :name, :start_at, :user_id, :appointment_type_id, :business_id
# Appointment Type = attr_accessible :business_id, :duration, :title
# Dashboard = attr_accessible :user_id

users = User.create([{ email: 'business1@ex.com', password: 'hockey', password_confirmation: 'hockey', name: 'Naruto Uzumaki', user_type: 'business' }, 
	                 { email: 'business2@ex.com', password: 'hockey', password_confirmation: 'hockey', name: 'Sasuke Uchiha', user_type: 'business'}, 
	                 { email: 'customer1@ex.com', password: 'hockey', password_confirmation: 'hockey', name: 'Neji Hyuuga', user_type: 'customer'},
	                 { email: 'customer2@ex.com', password: 'hockey', password_confirmation: 'hockey', name: 'Itachi Uchiha', user_type: 'customer'}])

# businesses = Business.create([{ user_id: users[0], description: "A full shop for the top people in the Leaf Village", name: "Naruto's Barbershop"},
# 	                          { user_id: users[1], description: "A full shop for the top people in the Akatsuki", name: "Sasuke's Barbershop"}])

