# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.new(
      name: "testUser",
      email: "test1@example.com",
      password: "password",
)
user.save
user.promises.build do |promise|
  promise.user_id = user.id,
  promise.promise_time = Time.now,
  promise.limit_time = Time.now + 1,
  promise.content = "高尾山に登ろう",
  promise.title = "test",
  promise.save
end
