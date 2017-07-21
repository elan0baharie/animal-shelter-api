class Seed
  def self.begin
    seed = Seed.new
    seed.generate_animals
  end

  def generate_animals
    15.times do |i|
      animal = Animal.create!(
        name: Faker::Name.first_name,
        age: Faker::Number.between(1, 10),
        adopted: Faker::Boolean.boolean
      )
      puts "Created listing for: #{animal.name} at position #{i}"
    end
  end
end

Seed.begin
