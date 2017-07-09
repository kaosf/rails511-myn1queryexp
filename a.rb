User.destroy_all
Entry.destroy_all
Comment.destroy_all
u1 = User.create name: 'User 1'
u2 = User.create name: 'User 2'
e1 = Entry.create user: u1, body: 'Entry 1 of u1'
e2 = Entry.create user: u1, body: 'Entry 2 of u1'
c1 = Comment.create user: u1, entry: e1, body: 'Comment 1 to e1 of u1'
c2 = Comment.create user: u2, entry: e1, body: 'Comment 2 to e1 of u2'
c3 = Comment.create user: u1, entry: e2, body: 'Comment 3 to e2 of u1'
c4 = Comment.create user: u2, entry: e2, body: 'Comment 4 to e2 of u2'
