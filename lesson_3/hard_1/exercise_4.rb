def uuid()
  uuid = []

  32.times do
    uuid << rand(16)
  end

  uuid.map! do |item|
    item.to_s(16)
  end

  uuid = uuid.join('')

  uuid.insert(8, '-').insert(13, '-').insert(18, '-').insert(23, '-')

end

p uuid

