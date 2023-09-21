//create collections
db.createCollection('users')
db.createCollection('admin')
db.createCollection('category')
db.createCollection('released')
db.createCollection('Availability')
db.createCollection('artist')
db.createCollection('product')

//insert data into users
db.users.insertOne({
    _id : 1,
    name:"Adesoji",
    subscription : "premium",
    gender: 'Male',
    createdAt: Date(),
    role: "Admin",
    email: "adesoji@example.com"
})

//update user table data

db.users.update(
    {_id:1,},
    {$set:{name:"Daniel", gender:"Female"}}
);

// delete data from user table

db.user.deleteOne(
    {_id:1,}
)

//insert data into product table
db.product.insertOne({
    _id : 1,
    name:"I dont like you",
    price : 500,
    category: "Afrobeat" 
})

//update product table data

db.product.update(
    {_id:1,},
    {$set:{name:"Come form", price:250}}
);

// delete data from product table

db.product.deleteOne(
    {_id:1,}
)

