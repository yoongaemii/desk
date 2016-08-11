# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Agenda.create(name: 'thaad')
Post.create(url: 'https://namu.wiki/w/THAAD', agenda_id: 1)
Comment.create(content: 'this is what namu wiki says about thaad', post_id:1)
Post.create(url: 'http://kr.brainworld.com/Opinion/14573', agenda_id: 1)
Comment.create(content: 'introduction of a novel thaad', post_id: 2)

Agenda.create(name: 'sharehouse boom')
Post.create(url: 'http://www.cnews.co.kr/uhtml/read.jsp?idxno=201607061524574950273', agenda_id: 2)
Comment.create(content: 'sharehouse supplying policy of the opposite party', post_id:3)

User.create(email: "user1@snu.ac.kr", password:"12341234", password_confirmation:"12341234")
User.create(email: "user2@snu.ac.kr", password:"12341234", password_confirmation:"12341234")
