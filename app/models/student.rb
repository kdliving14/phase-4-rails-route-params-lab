class Student < ApplicationRecord

  # class method written using a scope (https://www.rubyguides.com/2019/10/
  # scope :by_name, ->(name) { where("first_name LIKE ? OR last_name LIKE ?", "%#{name}%", "%#{name}%") }

  def self.by_name(name)
    Student.where("first_name LIKE ? OR last_name LIKE ?", "%#{name}%", "%#{name}%")
  end

  def to_s
    "#{first_name} #{last_name}"
  end

end
