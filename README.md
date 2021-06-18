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

{
  cart(userId: 1) {
      id
    	subTotal
  		itemsCount
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


mutation {
  ChangeItemQuantity(input: { params: { item_id:1 , quantity:77 }}) {
    item {
      id
      quantity
      price
    }
  }
}

mutation{
  ChangeItemQuantity(input: {
    item_id:1  
    quantity:77
  }){
    item {
      id
      quantity
      price
    }
    
  }
}

mutation{
  changeItemQuantity(input: {
    itemId: 1  
    quantity:9
  }){
    item {
      id
      quantity
      price
    }
    
  }
}

mutation{
  removeItemFromCart(input: {
    itemId: 4  

  }) {
    clientMutationId
  }
}