class Day < ApplicationRecord
  self.inheritance_column = nil

  belongs_to :schedule

  %w[break class holiday weekend conferences planning].each do |type|
    scope :"#{type}", ->{ where(type: type) }
  end
end
