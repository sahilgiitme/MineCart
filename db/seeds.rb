# destroying all user first
User.destroy_all
# populating user table with admin record
User.create! email: 'admin@gmail.com', name: 'Admin', admin: true, password: 'admin123', password_confirmation: 'admin123'
# populating user table with normal user
User.create! email: 'user@gmail.com', name: 'User', admin: false, password: 'user123', password_confirmation: 'user123'

# destroying all vendors first
Vendor.destroy_all

# creating two home appliance vendorers
v1 = Vendor.create! name: 'Reliance Digital'
v2 = Vendor.create! name: 'Croma'

# creating two domestic and groceries vendorers
v3 = Vendor.create! name: 'Reliance Smart Point'
v4 = Vendor.create! name: 'Big Bazaar'

# creating two furniture vendorers
v5 = Vendor.create! name: 'Ikea Furnitures'
v6 = Vendor.create! name: 'Urban Ladder'

# destroying all product type first
ProductType.destroy_all

# creating 6 basic types of consumer products
pt1 = ProductType.create! name: 'Home Appliance'
pt2 = ProductType.create! name: 'Groceries'
pt3 = ProductType.create! name: 'Kitchen Product'
pt4 = ProductType.create! name: 'Domestice Product'
pt5 = ProductType.create! name: 'Furniture'
pt6 = ProductType.create! name: 'Fashion'

# destroying all products first
Product.destroy_all

p1 = Product.create! name: '43" LED TV', price: 45_000, vendor_id: v1.id, product_type_id: pt1.id
p2 = Product.create! name: '280L Refrigerator', price: 35_000, vendor_id: v2.id, product_type_id: pt1.id
p3 = Product.create! name: 'Microwave Oven', price: 15_000, vendor_id: v1.id, product_type_id: pt1.id
p4 = Product.create! name: 'Sound System', price: 25_000, vendor_id: v1.id, product_type_id: pt1.id
p5 = Product.create! name: '8KG Automatic Washing Machine', price: 40_000, vendor_id: v2.id, product_type_id: pt1.id
p6 = Product.create! name: '6KG Washing Machine', price: 35_000, vendor_id: v1.id, product_type_id: pt1.id
p7 = Product.create! name: '55" LED TV', price: 65_000, vendor_id: v2.id, product_type_id: pt1.id
p8 = Product.create! name: 'Computer', price: 55_000, vendor_id: v1.id, product_type_id: pt1.id

p9 = Product.create! name: 'Knife', price: 550, vendor_id: v4.id, product_type_id: pt3.id
p10 = Product.create! name: 'Frying Pan', price: 500, vendor_id: v4.id, product_type_id: pt3.id
p11 = Product.create! name: '15L Oil', price: 350, vendor_id: v3.id, product_type_id: pt2.id
p12 = Product.create! name: 'Rolling Pin', price: 120, vendor_id: v3.id, product_type_id: pt3.id

p13 = Product.create! name: 'All Purpose Cleaner', price: 55, vendor_id: v3.id, product_type_id: pt4.id
p14 = Product.create! name: 'Carpet', price: 300, vendor_id: v4.id, product_type_id: pt4.id
p15 = Product.create! name: 'Tea Set', price: 400, vendor_id: v3.id, product_type_id: pt4.id
p16 = Product.create! name: 'Bed Sheet', price: 430, vendor_id: v4.id, product_type_id: pt4.id

