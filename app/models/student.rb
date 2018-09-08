class Student < ApplicationRecord
	has_many :matriculations
	validates_associated :matriculations
end
