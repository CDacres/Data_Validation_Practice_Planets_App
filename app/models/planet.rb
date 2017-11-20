class Planet < ApplicationRecord

	validates :name, :population, :flag_url, :lang, :president, presence: true

	validates :population, numericality: { greater_than: 1000, less_than: 5000, message: "- Planet's population must be between 1000 and 5000" }

	validates :president, length: { minimum: 4, maximum: 20, message: "- Sorry your president's name is not quite right" }

	validates :flag_url, format: { with: URI.regexp }

	validates :name, uniqueness: { message: "- There is already a planet with that name!" }

	validates :lang, format: { with: /\A[a-z]+\z/, message: "- Only text characters allowed" }

	# validates :population, numericality: { greater_than: 1000, less_than: 5000}, on: :create
 # 	validates :population, numericality: { greater_than: 1000, less_than: 10000}, on: :update
 # validates :president, exclusion: { in: %w(cheese), message: "Can't use the word Cheese"}



# t.string "name"
# t.integer "population"
# t.string "flag_url"
# t.string "lang"
# t.string "president"
end
