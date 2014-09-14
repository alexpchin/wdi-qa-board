class User < ActiveRecord::Base
  devise :registerable, :database_authenticatable

  has_many :questions

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def admin?
    self.role == 'admin'
  end

  def instructor?
    self.role == 'instructor'
  end

  def student?
    self.role == 'student'
  end

end
