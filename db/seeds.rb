User.create!(name: 'Admin', admin: true)

Collection.create!(name: 'Gravity Falls', theme: 'cartoon', user_id: 1)

3.times do
  Face.create!(
    name: ['Mabel', 'Dipper', 'Waddles'].sample,
    collection_id: 1 
  )
end

Room.create!(name: 'Teste', user_id: 1, collection_id: 1)