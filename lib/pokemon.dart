class PokeHub {
  List<Pokemon> pokemon;

  PokeHub({required this.pokemon});

  PokeHub.fromJson(Map<String, dynamic> json)
      : pokemon =
            (json['pokemon'] as List).map((v) => Pokemon.fromJson(v)).toList();

  Map<String, dynamic> toJson() {
    return {
      'pokemon': pokemon.map((v) => v.toJson()).toList(),
    };
  }
}

class Pokemon {
  int id;
  String num;
  String name;
  String img;
  List<String> type;
  String height;
  String weight;
  String candy;
  int candyCount;
  String egg;
  String spawnChance;
  String avgSpawns;
  String spawnTime;
  List<double>? multipliers;
  List<String> weaknesses;
  List<NextEvolution>? nextEvolution;

  Pokemon(
      {required this.id,
      required this.num,
      required this.name,
      required this.img,
      required this.type,
      required this.height,
      required this.weight,
      required this.candy,
      required this.candyCount,
      required this.egg,
      required this.spawnChance,
      required this.avgSpawns,
      required this.spawnTime,
      this.multipliers,
      required this.weaknesses,
      this.nextEvolution});

  Pokemon.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        num = json['num'],
        name = json['name'],
        img = json['img'],
        type = List<String>.from(json['type']),
        height = json['height'],
        weight = json['weight'],
        candy = json['candy'],
        candyCount = json['candy_count'] ?? 0,
        egg = json['egg'],
        spawnChance = json['spawn_chance'].toString(),
        avgSpawns = json['avg_spawns'].toString(),
        spawnTime = json['spawn_time'],
        multipliers = (json['multipliers'] as List?)?.cast<double>(),
        weaknesses = List<String>.from(json['weaknesses']),
        nextEvolution = (json['next_evolution'] as List?)
            ?.map((v) => NextEvolution.fromJson(v))
            .toList();

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'num': num,
      'name': name,
      'img': img,
      'type': type,
      'height': height,
      'weight': weight,
      'candy': candy,
      'candy_count': candyCount,
      'egg': egg,
      'spawn_chance': spawnChance,
      'avg_spawns': avgSpawns,
      'spawn_time': spawnTime,
      'multipliers': multipliers,
      'weaknesses': weaknesses,
      'next_evolution': nextEvolution?.map((v) => v.toJson()).toList(),
    };
  }
}

class NextEvolution {
  String num;
  String name;

  NextEvolution({required this.num, required this.name});

  NextEvolution.fromJson(Map<String, dynamic> json)
      : num = json['num'],
        name = json['name'];

  Map<String, dynamic> toJson() {
    return {
      'num': num,
      'name': name,
    };
  }
}
