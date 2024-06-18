class Post {
  final int id;
  final String title;
  final String description;
  final String imageProfile;
  final String image;
  final String name;
  final String time;


  Post({
    required this.id,
    required this.title,
    required this.description,
    required this.imageProfile,
    required this.image,
    required this.name,
    required this.time,

  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      imageProfile: json['imageProfile'],
      image: json['image'],
      name: json['name'],
      time: json['time'],
    );
  }
}

List<Post> lstPost = [
  Post(
    id: 1,
    title: "The Acolyte now guys",
    description: 'Scotland of India because of the striking similarities between the two places in terms of geography, terrain,',
    imageProfile: 'https://reductress.com/wp-content/uploads/2019/06/petite-woman-1-820x500.jpg',
    image: 'https://s30876.pcdn.co/wp-content/uploads/Switzerland-e1634207571492.jpg.optimal.jpg',
    name: 'Sreymom',
    time: '1 hour ago',
  ),
  Post(
    id: 2,
    title: "known for its gloomy climate and the scenery above is a testament to the same.",
    description: 'Surrounded on all sides by the Brahmagiri mountain range of the Western Ghats, Coorg is known to have a tropical wet climate.',
    imageProfile: 'https://www.themodernman.com/wp-content/uploads/how-to-impress-a-girl-you-like.jpg',
    image: 'https://www.holidify.com/images/cmsuploads/compressed/lake-village-pond-reflection-reservoir-waterway-967002-pxhere.com_20200306174429.jpg',
    name: 'Nuthern',
    time: '2:30 hour ago',
  ), Post(
    id: 3,
    title: "known for its gloomy climate and the scenery above is a testament to the same.",
    description: 'Surrounded on all sides by the Brahmagiri mountain range of the Western Ghats, Coorg is known to have a tropical wet climate.',
    imageProfile: 'https://c8.alamy.com/comp/2JG0DWH/45867-handsome-stylish-boy-pictures-download-cute-boy-attitude-images-beautiful-boy-free-wallpaper-2JG0DWH.jpg',
    image: 'https://onlyluxe.com.au/media/catalog/category/brienz-lake-interlaken-switzerland_.jpeg',
    name: 'Vong Dara',
    time: '3:33 hour ago',
  ),
  Post(
    id: 4,
    title: "known for its gloomy climate and the scenery above is a testament to the same.",
    description: 'Surrounded on all sides by the Brahmagiri mountain range of the Western Ghats, Coorg is known to have a tropical wet climate.',
    imageProfile: 'https://photosnow.org/wp-content/uploads/2024/04/beautiful-girl-photo_13.jpg',
    image: 'https://images.travelandleisureasia.com/wp-content/uploads/sites/4/2023/11/29134037/bern-1.jpeg',
    name: 'Sreypich',
    time: '3:33 hour ago',
  ),

];
