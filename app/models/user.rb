class User < ApplicationRecord
  ############################################################################################
  ## PeterGate Roles
  ## The :user role is added by default and shouldn't be included in this list.
  ## The :root_admin can access any page regardless of access settings. Use with caution!
  ## Set multiple: true if users can have multiple roles.
  petergate(roles: [:site_admin], multiple: false)
  ############################################################################################

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, presence: true

  def first_name
    name&.split&.first
  end

  def last_name
    name&.split&.last
  end
end