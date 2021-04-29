User.create!(name: 'Admin', admin: true)

2.times do
  Collection.create!(
    name: ['Gravity Falls', 'Seedou'].sample,
    user_id: 1 
  )
end

2.times do
  Collection.create!(
    name: ['Mabel', 'Dipper'].sample,
    collection_id: 1 
  )
end

Room.create!(name: 'Teste', user_id: 1, collection_id: 1)