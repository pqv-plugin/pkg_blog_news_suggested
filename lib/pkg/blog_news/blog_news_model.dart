class BlogNewsModel {
  // Identificador
  String id = '';

  //Descrição
  String description = '';

  //Imagem
  String image = '';

  //Endereço url da notícia
  String link = '';

  //Título
  String title = '';

  dynamic get data {
    return {
      "id": id,
      "description": description,
      "link": link,
      "image": image,
      "title": title,
    };
  }

  set data(dynamic value) {
    if (value != null) {
      if (value['_id'] != null) {
        id = value['_id'];
      }
      if (value['description'] != null) {
        description = value['description'];
      }
      if (value['link'] != null) {
        link = value['link'];
      }
      if (value['image'] != null) {
        image = value['image'];
      }
      if (value['title'] != null) {
        title = value['title'];
      }
    }
  }
}
