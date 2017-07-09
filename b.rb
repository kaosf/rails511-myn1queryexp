# N+1 Query
Entry.all.each { |e| puts [e.body, e.user.name] }
# 2 queries
Entry.all.includes(:user).each { |e| puts [e.body, e.user.name] }
# 1 query
Entry.all.includes(:user).references(:user).each { |e| puts [e.body, e.user.name] }
