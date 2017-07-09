User.destroy_all
Entry.destroy_all
u1 = User.create name: 'User 1'
e1 = Entry.create user: u1, body: 'Entry 1 of u1'
e2 = Entry.create user: u1, body: 'Entry 2 of u1'
