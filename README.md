# README

<!-- Queries and Mutations -->

{
  user(id: "1") {
    id
    name
    email

  }
}

{
  users {
    id
    name
    email
   
  }
}


{
  cart(user_id: 1) {
    id
  	items  
	
  }
}

{
  cart(userId: 1) {
    id
    items {
      id
      quantity
      price
      product 
      {
        name
        price
        stock
        imageUrl
      }
      productId
    }
  }
}