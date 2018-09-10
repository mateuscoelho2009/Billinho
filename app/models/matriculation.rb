class Matriculation < ApplicationRecord
	belongs_to :institution
	belongs_to :student
	validates :institution, :student, presence: true
	validates_associated :student, :institution

	def self.up
	      create_table :matriculations do |t|
	         t.column :name, :string, :limit => 50
	         t.column :cnpj, :integer
	         t.column :kind, :kind
	      end
   	end

   	def self.down
      	drop_table :matriculations
   	end

end
