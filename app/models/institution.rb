class Institution < ApplicationRecord
  validates :name, :cnpj, :kind, presence: true
  validates :cnpj, numericality: { only_integer: true, greater_than: 0 }
  validates :name, :cnpj, length: { maximum: 50, too_long: "%{count} characters is the maximum allowed" }
  validates :name, :cnpj, uniqueness: { case_sensitive: false }

  enum kind: {
    university: 'university',
    school: 'school',
    nursery: 'nursery'
  }

  def self.up
      create_table :institutions do |t|
         t.column :name, :string, :limit => 50
         t.column :cnpj, :integer
         t.column :kind, :kind
      end
   end

   def self.down
      drop_table :institutions
   end
end
