

class Items {
  String? title; 
  String? Catigoriy; 
  String? image_url; 
  String? location;
  double? price; 

  Items({ 
     this.title, 
     this.Catigoriy,
     this.image_url, 
     this.location, 
     this.price, 
  }); 


static List<Items> recomiation_houses = [
  Items(
    title: "Modern House For Renting", Catigoriy: "House", 
    image_url:"https://images.pexels.com/photos/106399/pexels-photo-106399.jpeg?auto=compress&cs=tinysrgb&w=600",
    location: "Gorgia USA", 
    price:  3502
  ), 
  Items(
    title: "Modern big House For Renting", Catigoriy: "House", 
    image_url:"https://images.pexels.com/photos/453201/pexels-photo-453201.jpeg?auto=compress&cs=tinysrgb&w=600",
    location: "Miami USA", 
    price:  5252.36
  ), 
  Items(
    title: "Modern Small House For Renting", Catigoriy: "House", 
    image_url:"https://images.pexels.com/photos/323776/pexels-photo-323776.jpeg?auto=compress&cs=tinysrgb&w=600",
    location: "New Yourk City USA", 
    price:  2586.36
  ),

  Items(
    title: "Big Villa For Renting", Catigoriy: "Villa", 
    image_url:"https://images.pexels.com/photos/1396132/pexels-photo-1396132.jpeg?auto=compress&cs=tinysrgb&w=600",
    location: "Miami USA", 
    price:  2586.36
  ), 

  Items(
    title: "Luxury house For Renting", Catigoriy: "Luxury", 
    image_url:"https://images.pexels.com/photos/53610/large-home-residential-house-architecture-53610.jpeg?auto=compress&cs=tinysrgb&w=600",
    location: "Miami USA", 
    price:  2586.36
  ), 
  
]; 

}