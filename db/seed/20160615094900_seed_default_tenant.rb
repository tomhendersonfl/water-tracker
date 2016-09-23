class TenantSeed < ActiveRecord::Base
  self.table_name = "tenants"
end

TenantSeed.create(
    tenant_name: 'iTHRIVE',
    subdomain: 'app',
    desktop: 'desktop.jpg',
    login: 'login.png',
    logo: 'logo.png'
)

User.create( [
                 {
                     user_id: 'F01235D0287011E6AEA7123HEF2B3BD8',
                     email: 'aaron@buildit.io',
                     password: 'Iliketothrive!',
                     first_name: 'Aaron',
                     last_name: 'Henderson',
                     gender: 'male',
                     confirmed_at: DateTime.now,
                     is_admin: true,
                     subdomain: 'app'
                 },{
                     user_id: 'F02755D384123E6AEA7ATOHEF2B3BD83',
                     email: 'jason@buildit.io',
                     password: "1ro@icons",
                     first_name: 'Jason',
                     last_name: 'Ihaia',
                     gender: 'male',
                     confirmed_at: DateTime.now,
                     is_admin: true,
                     subdomain: 'app'
                 },{
                     user_id: 'F0230545645011E6AEA7ATOHEF2B3BD8',
                     email: 'britt@ithriveplan.com',
                     password: "Iliketothrive!",
                     first_name: 'Britt',
                     last_name: 'Ruhe',
                     gender: 'female',
                     confirmed_at: DateTime.now,
                     is_admin: true,
                     subdomain: 'app'
                 },{
                     user_id: 'F02305D3845011A9OEA7AT567F2B3BD8',
                     email: 'lise@ithriveplan.com',
                     password: "Iliketothrive!",
                     first_name: 'Lise',
                     last_name: 'Alshuler',
                     gender: 'female',
                     confirmed_at: DateTime.now,
                     is_admin: true,
                     subdomain: 'app'
                 },{
                     user_id: 'F0230123845011E6AEA7AHENEF2B3BD8',
                     email: 'karolyn@ithriveplan.com',
                     password: "Iliketothrive!",
                     first_name: 'Karolyn',
                     last_name: 'Gazella',
                     gender: 'female',
                     confirmed_at: DateTime.now,
                     is_admin: true,
                     subdomain: 'app'
                 },{
                     user_id: 'F02305D3845011E6AEA7A123EF2B3BD8',
                     email: 'kimberly@ithriveplan.com',
                     password: "Iliketothrive!",
                     first_name: 'Kimberly',
                     last_name: 'Roth',
                     gender: 'female',
                     confirmed_at: DateTime.now,
                     is_admin: true,
                     subdomain: 'app'
                 },{
                     user_id: 'F023HO20234011E6AEA7AHENEF2B3BD8',
                     email: 'mandisa@ithriveplan.com',
                     password: "Iliketothrive!",
                     first_name: 'Mandisa',
                     last_name: 'Jones',
                     gender: 'female',
                     confirmed_at: DateTime.now,
                     is_admin: true,
                     subdomain: 'app'
                 }])
