# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

unit = Unit.create(name: "Admin", address: "Admin")
sector = Sector.create(name: "Admin", unit: unit)

admin_employee = Employee.create(name: "Higor", sector: sector)
attend_employee = Employee.create(name: "Breno", sector: sector)
employee_employee = Employee.create(name: "Thiago", sector: sector)

User.create(email: "higor@gmail.com", password: "123123", password_confirmation: "123123", role: "admin", employee_id: admin_employee.id)
User.create(email: "breno@gmail.com", password: "123123", password_confirmation: "123123", role: "attend", employee_id: attend_employee.id)
User.create(email: "thiago@gmail.com", password: "123123", password_confirmation: "123123", role: "employee", employee_id: employee_employee.id)
