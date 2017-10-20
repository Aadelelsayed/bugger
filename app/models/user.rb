class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :projects
  has_many :bugs

  # list of roles staticly typed
  # in real world this would return from another table with a set of privilages
  enum roles: {
  	Manager: 1,
  	QA: 2,
  	Developer: 3	
  }

end
