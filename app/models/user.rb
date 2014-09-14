class User < ActiveRecord::Base
  devise :registerable, :database_authenticatable

  ROLES = [:student, :admin, :instructor]

  has_many :questions

  def full_name
    "#{self.first_name} #{self.last_name}"
  end


  ROLES.each do |role|
    define_method "#{role}?" do 
      self.role == role.to_s
    end
  end


  

end
