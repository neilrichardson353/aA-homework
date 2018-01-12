class Cat < ActiveRecord::Base
    before_save :capitalize
    before_save :find_age
validates :birth_date, :color, :name, :sex, presence: true
validates :name, uniqueness: true
validates_inclusion_of :color, in: %w(orange black/white black blue
  white green brown mix mutt tiger striped ugly damm!), message: "cat
  color is not an option, you probably missed spelled it, you idiot"
validates_inclusion_of :sex, in: %w(M F T)


def capitalize
  self.sex = sex.camelcase
  self.name = name.camelcase
  self.color = color.camelcase
end

def find_age
self.age = Time.now.year - self.birth_date.year
end
end
