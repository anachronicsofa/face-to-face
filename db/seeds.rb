User.create!(username: 'Alinezinhadb', admin: true)

Collection.create!(name: 'Gravity Falls', theme: 'cartoon', user_id: 1)

4.times do
  Face.create!(
    name: ['Mabel', 'Dipper', 'Waddles', 'Wendy'].sample,
    collection_id: 1 
  )
end

Room.create!(name: 'Teste 2', user_id: 1, collection_id: 1)