class MyPost {
  final int id;
  final String title;
  final String description;
  final String image;



  MyPost({
    required this.id,
    required this.title,
    required this.description,
    required this.image,


  });

  factory MyPost.fromJson(Map<String, dynamic> json) {
    return MyPost(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      image: json['image'],

    );
  }
}

List<MyPost> lstMyPost = [
  MyPost(
    id: 1,
    title: "Scotland of India",
    description: 'Scotland of India because of the striking similarities between the two places in terms of geography, terrain,',
    image: 'https://s30876.pcdn.co/wp-content/uploads/Switzerland-e1634207571492.jpg.optimal.jpg',

  ),
  MyPost(
    id: 2,
    title: "Switzerland of UK",
    description: 'Surrounded on he the Western',

    image: 'https://cdn.britannica.com/80/155980-050-3A532B36/Restaurant-village-Alpine-Grindelwald-Switzerland.jpg',

  ), MyPost(
    id: 3,
    title: "Toyosaka, Japan of Fram",
    description: 'Range of the Western Ghats,',
    image: 'https://onlyluxe.com.au/media/catalog/category/brienz-lake-interlaken-switzerland_.jpeg',

  ),
  MyPost(
    id: 4,
    title: "Coorg, India of shi",
    description: 'Western Ghats, Coorg.',
    image: 'https://images.travelandleisureasia.com/wp-content/uploads/sites/4/2023/11/29134037/bern-1.jpeg',
  ),
  MyPost(
    id: 5,
    title: "Switzerland of UK",
    description: 'Surrounded on he the Western',
    image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7eLAxjz6m38FEoIMqUcdkFr2__mmR5XShJQ&s',
  ),  MyPost(
    id: 6,
    title: "Switzerland of UK",
    description: 'Surrounded on he the Western',
    image: 'https://static01.nyt.com/images/2024/04/04/multimedia/04sp-travel-swiss-inyt-04-khbm/04sp-travel-swiss-inyt-04-khbm-articleLarge.jpg?quality=75&auto=webp&disable=upscale',
  ),

];
