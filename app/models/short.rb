class Short < ApplicationRecord
  def shorten_link
    rand(36**8).to_s(36)
  end
end
