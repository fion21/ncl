# app/models/guest_user.rb
class GuestUser
  include ActiveModel::Model

  attr_accessor :name, :first_name, :last_name, :email, :roles

  def initialize(attributes = {})
    super
    self.name        ||= "Guest User"
    self.first_name  ||= "Guest"
    self.last_name   ||= "User"
    self.email       ||= "guest@example.com"
    self.roles       ||= []  # guests have no roles by default
  end

  # ---- Petergate compatibility ----
  # Does this user have ANY of the given roles?
  def has_roles?(*query_roles)
    return false if roles.blank? || query_roles.blank?
    wanted = query_roles.flatten.map { |r| r.to_s }
    roles.map(&:to_s).any? { |r| wanted.include?(r) }
  end

  # Common helpers some apps use
  def role?(role)
    roles&.map(&:to_s)&.include?(role.to_s)
  end

  def persisted?; false; end
  def id; nil; end
end
