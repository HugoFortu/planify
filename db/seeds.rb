require 'faker'

puts "Destruction des anciennes seeds..."

List.destroy_all
Element.destroy_all
Type.destroy_all
Task.destroy_all
Idea.destroy_all

puts "Creation des nouvelles seeds..."

liste1 = List.create(title: "courses alimentaires")
liste2 = List.create(title: "inventaire vacances")

15.times do
  element_courses = Element.create(
    name: Faker::Food.ingredient,
    quantity: [1..12].sample,
    checked: false,
    list_id: liste1.id
    )
end

12.times do
  element_courses = Element.create(
    name: Faker::House.furniture,
    quantity: [1..2].sample,
    checked: false,
    list_id: liste2.id
    )
end

type1 = Type.create(name: "ménage", color: "#0381A6")
type2 = Type.create(name: "amis", color: "#02AEB9")
type3 = Type.create(name: "famille", color: "#FDFCDC")
type4 = Type.create(name: "courses", color: "#FED9B6")
type5 = Type.create(name: "loisirs", color: "#F07167")
type6 = Type.create(name: "boulot", color: "#B4A1E5")



task1 = Task.create(
  title: "Laver le sol",
  content:"Faire attention au spécial parquet",
  limited_date: Faker::Date.forward(days: 23),
  type_id: type1.id
)
task2 = Task.create(
  title: "Acheter cadeau pour Marion",
  content:"Soirée chez Marion et Alex, peut être quelquechose en rapport avec le cheval...",
  limited_date: Faker::Date.forward(days: 23),
  type_id: type2.id
)

idea1 = Idea.create(
  title: "acheter une maison à la campagne",
  content: "Il va falloir y réfléchir....",
  project: true,
  project_type: "projet à long terme",
)

idea2 = Idea.create(
  title: "Regarder le reportage intel",
  content: "sur arte",
  project: false,
)





