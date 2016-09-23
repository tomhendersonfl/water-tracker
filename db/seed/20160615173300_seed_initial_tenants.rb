class TenantSeed < ActiveRecord::Base
  self.table_name = "tenants"
end

    TenantSeed.create([{
      tenant_name: 'Cancer Navigator',
      subdomain: 'cancercenter',
      desktop: 'desktop.jpg',
      login: 'login.png',
      logo: 'logo.png'
    }, {
      tenant_name: 'Mission Hope',
      subdomain: 'missionhope',
      desktop: 'desktop.jpg',
      login: 'login.png',
      logo: 'logo.png'
    }])

    User.create(
        user_id: 'E23445D0284561E6AEA7A8667F2AABC9',
        email: 'admin@missionhope.com',
        password: 'Iliketothrive!',
        first_name: 'Mission Hope',
        last_name: 'Administrator',
        gender: 'female',
        confirmed_at: DateTime.now,
        is_admin: true,
        subdomain: 'missionhope'
    )
    User.create(
        user_id: 'EE272340255011E345A7A8667F2AABC9',
        email: 'admin@cancercenter.com',
        password: 'Iliketothrive!',
        first_name: 'Cancer Center',
        last_name: 'Administrator',
        gender: 'female',
        confirmed_at: DateTime.now,
        is_admin: true,
        subdomain: 'cancercenter'
    )

