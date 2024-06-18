class Story {
  final int id;
  final String name;
  final String imageUrl;


  Story({
    required this.id,
    required this.name,
    required this.imageUrl,
  });

  factory Story.fromJson(Map<String, dynamic> json) {
    return Story(
      id: json['id'],
      name: json['name'],
      imageUrl: json['image'],
    );
  }
}

List<Story> lstStory = [
  Story(
    id: 1,
    name: "Sreymom",
    imageUrl:
    "https://i.pinimg.com/236x/97/0f/38/970f38bb92d0b2bdeb236f7ba697a625.jpg",
  ),
  Story(
    id: 2,
    name: "Sakna Orl",
    imageUrl:
    "https://media.worldnomads.com/Travel-Safety/Australia/Tamarama-Federico%20Stevanin-EyeEm.jpg",
  ),
  Story(
    id: 3,
    name: "Yany Hak",
    imageUrl:
    "https://miro.medium.com/v2/resize:fit:1400/1*P3WP2KjaJeiZb3g0OQgELQ.jpeg",
  ),
  Story(
    id: 4,
    name: "Tong Vong",
    imageUrl:
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkypnBdZuB4N_4t6JvZKkr4frTLkccml43jozM0CcpmMzfDDziZnaRrLjDufdHETZptq4&usqp=CAU",
  ),
  Story(
    id: 5,
    name: "Resey",
    imageUrl:
    "https://ocean.panda.org/img/Malaysia-girl_260316.jpg",
  ),
  Story(
    id: 6,
    name: "Sophorn Ut",
    imageUrl:
    "https://facts.net/wp-content/uploads/2024/01/15-bajau-people-facts-1704780434.jpg",
  ),

];
