# N+1 Query
Entry.all.each { |e| puts [e.body, e.user.name] }
# 2 queries
Entry.all.includes(:user).each { |e| puts [e.body, e.user.name] }
# 1 query
Entry.all.includes(:user).references(:user).each { |e| puts [e.body, e.user.name] }

# N^2 + N + 1 Query...?
Entry.all.each do |e|
  puts [e.body, e.user.name]
  e.comments.each do |c|
    puts [c.body, c.user.name]
  end
end
# N+1 Query
Entry.all.includes(:user).each do |e|
  puts [e.body, e.user.name]
  e.comments.each do |c|
    puts [c.body, c.user.name]
  end
end
# N+1 Query (comment's user)
Entry.all.includes(:user, :comments).each do |e|
  puts [e.body, e.user.name]
  e.comments.each do |c|
    puts [c.body, c.user.name]
  end
end
# 4 queries
Entry.all.includes(:user, comments: :user).each do |e|
  puts [e.body, e.user.name]
  e.comments.each do |c|
    puts [c.body, c.user.name]
  end
end
