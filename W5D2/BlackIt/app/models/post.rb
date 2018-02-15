# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string
#  url        :string           not null
#  content    :text
#  sub        :string           not null
#  author     :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Post < ApplicationRecord
validates :title, :author, :sub, :url, presence: true


belongs_to :sub,
primary_key: :id,
foreign_key: :sub,
class_name: 'Sub'


belongs_to :user,
primary_key: :id,
foreign_key: :author,
class_name: 'User'


# before_validation :assign_author, :create_or_assign_sub
#
# def assign_author
#   @user = User.find_by(session_token: session[:session_token])
#   self.author = @user.name
# end
#
# def assign_sub(subgroup)
#   self.sub = subgroup
# end
#
# def create_or_assign_sub
#   if Sub.find_by(title: self.sub).nil?
#     Sub.new()
#   end
# end

end
