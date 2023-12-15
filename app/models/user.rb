class User < ApplicationRecord
  has_many :tasks
  enum role: {'worker' =>'worker','contractor' => 'contractor'}
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
