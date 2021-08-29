class BlogNewsModel {
  // Identificador
  String id = '';

  //Descrição
  String description = '';

  //Grupo
  String group = '';

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
      "group": group,
      "image": image,
      "link": link,
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
      if (value['group'] != null) {
        group = value['group'];
      }
      if (value['image'] != null) {
        image = value['image'];
      }
      if (value['link'] != null) {
        link = value['link'];
      }
      if (value['title'] != null) {
        title = value['title'];
      }
    }
  }

  @override
  String toString() {
    return 'Instance of BlogNewsModel(_id:$id, description:$description, group:$group, image:$image, link:$link, title:$title)';
  }
}
