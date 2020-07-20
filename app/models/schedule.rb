class Schedule < ApplicationRecord
  has_many :days

  %w[first_half second_half other].each do |type|
    define_method("#{type}?") do
      name == type
    end
  end
end
