# == Schema Information
#
# Table name: subs
#
#  id          :integer          not null, primary key
#  title       :string           not null
#  description :text
#  moderator   :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Sub < ApplicationRecord
validates :title, :moderator, presence: true





belongs_to :user,
primary_key: :id,
foreign_key: :moderator,
class_name: 'User'

has_many :post,
primary_key: :id,
foreign_key: :title,
class_name: 'Post'

end
