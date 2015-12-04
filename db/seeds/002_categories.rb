categories = []

blue = { name: 'Categoria Azul', description: 'Categoria Azul', color: 'blue' }
categories.push blue

green = { name: 'Categoria Verde', description: 'Categoria Verde', color: 'green' }
categories.push green

red = { name: 'Categoria Vermelho', description: 'Categoria Vermelho', color: 'red' }
categories.push red

categories.each do |category|
  Category.find_or_create_by(category)
end
