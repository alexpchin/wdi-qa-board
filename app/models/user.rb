class User < ActiveRecord::Base
  devise :registerable, :database_authenticatable

  def admin?
    user.role == 'admin'
  end

  def instructor?
    user.role == 'instructor'
  end

  def student?
    user.role == 'student'
  end
end
