sources = []

blue = { name: 'Origem Azul', description: 'Origem Azul', color: 'blue', status: 'active' }
sources.push blue

green = { name: 'Origem Verde', description: 'Origem Verde', color: 'green', status: 'active' }
sources.push green

red = { name: 'Origem Vermelho', description: 'Origem Vermelho', color: 'red', status: 'active' }
sources.push red

sources.each do |source|
  Source.find_or_create_by(source)
end
