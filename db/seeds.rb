# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
CanvasItemType.destroy_all

canvas_item_types = [
  { name: "Problem", position: 1, description: "", question: "What is the problem you are solving with your business idea?" },
  { name: "Customer Segment", position: 2, description: "", question: "Who specifically are you solving the problem for (your target group)?" },
  { name: "Solution", position: 3, description: "", question: "What is the solution you are offering?" },
  { name: "Unique Value Proposition", position: 4, description: "", question: "How is your solution different from existing solutions to the same problem?" },
  { name: "Unfair Advantage", position: 5, description: "", question: "What is your asset or specific knowledge than cannot be easily copied by someone else?" },
  { name: "Revenue Stream", position: 6, description: "", question: "How are you going to make money?" },
  { name: "Sales Channel", position: 7, description: "", question: "How are you going to sell your product?" },
  { name: "Key Metric", position: 8, description: "", question: "What are the key numbers that indicate that your business idea is working?" },
  { name: "Cost", position: 9, description: "", question: "What are your fixed and variable costs?" }
]

canvas_item_types.each do |type|
  type = CanvasItemType.create!(name: type[:name], position: type[:position], description: type[:description], question: type[:question])
  puts "Type created: " + type.name
end
