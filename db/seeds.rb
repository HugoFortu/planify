

puts "Destruction des anciennes seeds..."

Element.delete_all
List.delete_all
Task.delete_all
Type.delete_all
Idea.delete_all

puts "Creation des nouvelles seeds..."

admin = User.find_by(email: "hfortunier@gmail.com")

liste1 = List.create(title: "Courses alimentaires", user: admin)
liste2 = List.create(title: "Inventaire vacances", user: admin)

15.times do
  element_courses = Element.create(
    name: Faker::Food.ingredient,
    quantity: (1..12).to_a.sample,
    list: liste1
    )
end


12.times do
  element_courses = Element.create(
    name: Faker::House.furniture,
    quantity: (1..3).to_a.sample,
    list: liste2
    )
end

type1 = Type.create(name: "Ménage", color: "#0381A6")
type2 = Type.create(name: "Amis", color: "#02AEB9")
type3 = Type.create(name: "Famille", color: "#FDFCDC")
type4 = Type.create(name: "Courses", color: "#FED9B6")
type5 = Type.create(name: "Loisirs", color: "#F07167")
type6 = Type.create(name: "Boulot", color: "#B4A1E5")



task1 = Task.create(
  title: "Laver le sol",
  content:"Faire attention au spécial parquet",
  limited_date: Faker::Date.forward(days: 23),
  type: type1,
  user: admin
)

task2 = Task.create(
  title: "Acheter cadeau pour Marion",
  content:"Peut être quelquechose en rapport avec le cheval...",
  limited_date: Faker::Date.forward(days: 23),
  type: type2,
  user: admin
)

idea1 = Idea.create(
  title: "Acheter une maison à la campagne",
  content: "Il va falloir y réfléchir....",
  project: true,
  project_type: "projet à long terme",
  user: admin
)

idea2 = Idea.create(
  title: "Regarder le reportage intel",
  content: "Sur arte",
  project: false,
  user: admin
)

puts "Les seeds sont faites !"



