
pet_store = {
    dog_aisle: {
        sign: 'Dog Supplies (food, treats and toys)',
        shelving_details: {
            shelves: 6,
            shelf_weight_max: 100
        },
        inventory: {
            food: 'Purina Dog Chow' ,
            treats: 'rawhide bones',
            toys: ['ropes', 'balls']
        }
    },
    cat_aisle: {
        sign: 'Cat Supplies (food, treats and yarn)',
        shelving_details: {
            shelves: 5,
            shelf_weight_max: 80
        },
        inventory: {
            yarn: 'yarn',
            food: ['Purina Cat Food', 'canned tuna'],
            toys: 'dead mice'
                }
    },
    fish_aisle: {
        sign: 'Fish Supplies (food, tanks and poor decisions)',
        shelving_details: {
            shelves: 2,
            shelf_weight_max: 500
        },
        inventory: ['food flakes', 'tanks', 'self-help guides']
    }
}

p pet_store[:cat_aisle][:inventory][:food][0]
p pet_store[:dog_aisle][:inventory][:toys]
p pet_store[:dog_aisle][:inventory][:toys].last
