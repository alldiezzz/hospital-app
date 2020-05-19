# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' , created_at: Time.now, updated_at: Time.now}, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Hospital.upsert_all([
  {id: 1, name: 'Hospital A', address: 'Jl Tuanku Imam Bonjol', created_at: Time.now, updated_at: Time.now},
  {id: 2, name: 'Hospital B', address: 'Jl Raya Dago No 6', created_at: Time.now, updated_at: Time.now},
  {id: 3, name: 'Hospital C', address: 'Jl Raya Cimahi Madagascar', created_at: Time.now, updated_at: Time.now},
])

Doctor.upsert_all([
  {id: 1, hospital_id: 1, name: 'Dr. Vega Punk', created_at: Time.now, updated_at: Time.now},
  {id: 2, hospital_id: 1, name: 'Dr. Nico Robin', created_at: Time.now, updated_at: Time.now},
  {id: 3, hospital_id: 1, name: 'Dr. Franky', created_at: Time.now, updated_at: Time.now},
  {id: 4, hospital_id: 1, name: 'Dr. Tony Tony Chopper', created_at: Time.now, updated_at: Time.now},
  {id: 5, hospital_id: 2, name: 'Dr. Leorio', created_at: Time.now, updated_at: Time.now},
  {id: 6, hospital_id: 2, name: 'Dr. Bulma', created_at: Time.now, updated_at: Time.now},
  {id: 7, hospital_id: 2, name: 'Dr. Stone', created_at: Time.now, updated_at: Time.now},
  {id: 8, hospital_id: 2, name: 'Dr. Senku', created_at: Time.now, updated_at: Time.now},
  {id: 9, hospital_id: 3, name: 'Dr. Ujang', created_at: Time.now, updated_at: Time.now},
  {id: 10, hospital_id: 3, name: 'Dr. Asep', created_at: Time.now, updated_at: Time.now},
  {id: 11, hospital_id: 3, name: 'Dr. Epul', created_at: Time.now, updated_at: Time.now},
  {id: 12, hospital_id: 3, name: 'Dr. Suhendar', created_at: Time.now, updated_at: Time.now},
])

Schedule.upsert_all([
  {id: 1, doctor_id: 1, day: 'Monday', start_time: '10', end_time: "17", created_at: Time.now, updated_at: Time.now},
  {id: 2, doctor_id: 1, day: 'Tuesday', start_time: '9', end_time: "17", created_at: Time.now, updated_at: Time.now},
  {id: 3, doctor_id: 1, day: 'Friday', start_time: '9', end_time: '16', created_at: Time.now, updated_at: Time.now},
  {id: 4, doctor_id: 2, day: 'Wednesday', start_time: '10', end_time: '17', created_at: Time.now, updated_at: Time.now},
  {id: 5, doctor_id: 2, day: 'Saturday', start_time: '11', end_time: '18', created_at: Time.now, updated_at: Time.now},
  {id: 6, doctor_id: 2, day: 'Sunday', start_time: '9', end_time: '19', created_at: Time.now, updated_at: Time.now},
  {id: 7, doctor_id: 3, day: 'Thursday', start_time: '9', end_time: '18', created_at: Time.now, updated_at: Time.now},
  {id: 8, doctor_id: 3, day: 'Sunday', start_time: '8', end_time: '18', created_at: Time.now, updated_at: Time.now},
  {id: 9, doctor_id: 3, day: 'Saturday', start_time: '10', end_time: '18', created_at: Time.now, updated_at: Time.now},
  {id: 10, doctor_id: 4, day: 'Friday', start_time: '9', end_time: '18', created_at: Time.now, updated_at: Time.now},
  {id: 11, doctor_id: 4, day: 'Wednesday', start_time: '9', end_time: '18', created_at: Time.now, updated_at: Time.now},
  {id: 12, doctor_id: 5, day: 'Tuesday', start_time: '9', end_time: '18', created_at: Time.now, updated_at: Time.now},
  {id: 13, doctor_id: 5, day: 'Wednesday', start_time: '9', end_time: '18', created_at: Time.now, updated_at: Time.now},
  {id: 14, doctor_id: 6, day: 'Tuesday', start_time: '9', end_time: '18', created_at: Time.now, updated_at: Time.now},
  {id: 15, doctor_id: 6, day: 'Friday', start_time: '9', end_time: '18', created_at: Time.now, updated_at: Time.now},
  {id: 16, doctor_id: 7, day: 'Monday', start_time: '9', end_time: '18', created_at: Time.now, updated_at: Time.now},
  {id: 17, doctor_id: 8, day: 'Thursday', start_time: '9', end_time: '18', created_at: Time.now, updated_at: Time.now},
  {id: 18, doctor_id: 8, day: 'Saturday', start_time: '9', end_time: '18', created_at: Time.now, updated_at: Time.now},
  {id: 19, doctor_id: 9, day: 'Wednesday', start_time: '9', end_time: '18', created_at: Time.now, updated_at: Time.now},
  {id: 20, doctor_id: 9, day: 'Thursday', start_time: '9', end_time: '18', created_at: Time.now, updated_at: Time.now},
  {id: 21, doctor_id: 10, day: 'Monday', start_time: '9', end_time: '18', created_at: Time.now, updated_at: Time.now},
  {id: 22, doctor_id: 10, day: 'Tuesday', start_time: '9', end_time: '18', created_at: Time.now, updated_at: Time.now},
  {id: 23, doctor_id: 11, day: 'Friday', start_time: '9', end_time: '18', created_at: Time.now, updated_at: Time.now},
  {id: 24, doctor_id: 11, day: 'Sunday', start_time: '9', end_time: '18', created_at: Time.now, updated_at: Time.now},
  {id: 25, doctor_id: 12, day: 'Saturday', start_time: '9', end_time: '18', created_at: Time.now, updated_at: Time.now},
  {id: 26, doctor_id: 12, day: 'Thrysday', start_time: '9', end_time: '18', created_at: Time.now, updated_at: Time.now},
  {id: 27, doctor_id: 12, day: 'Monday', start_time: '9', end_time: '18', created_at: Time.now, updated_at: Time.now},
])