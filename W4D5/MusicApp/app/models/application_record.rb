class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def current_user

  end

  def logged_in?

  end

  def log_in_user!(user)

  end
end
