# destroying all user first
User.destroy_all
# populating user table with admin record
User.create! email: 'admin@gmail.com', name: 'Admin', admin: true, password: 'admin123', password_confirmation: 'admin123'
# populating user table with normal user
User.create! email: 'user@gmail.com', name: 'User', admin: false, password: 'user123', password_confirmation: 'user123'
