// ignore_for_file: constant_identifier_names

enum Location {
  RoundtableHold('Крепость Круглого стола', false),
  Limgrave('Замогилье', false),
  Stormhill('Грозовой холм', false),
  WeepingPeninsula('Плачущий полуостров', false),
  LiurniaOfTheLakes('Озёрная Лиурния', false),
  ThreeSisters('Три сестры', false),
  MoonlightAltar('Алтарь лунного света', false),
  BellumHighway('Тракт Беллума', false),
  Caelid('Звёздные пустоши', false),
  GreyollsDragonbarrow('Драконий курган Грейолл', false),
  AltusPlateau('Плато Альтус', false),
  MtGelmir('Вулкан Гельмир', false),
  LeyndellRoyalCapital('Лейнделл, столица королевства', false),
  MountaintopsOfTheGiants('Вершины великанов', false),
  ConsecratedSnowfield('Священное заснеженное поле', false),
  SiofraRiver('Река Сиофра', false),
  MohgwynPalace('Дворец Могвинов', false),
  AinselRiver('Река Ансель', false),
  AinselRiverMain('Основной поток реки Ансель', false),
  LakeOfRot('Озеро Гнили', false),
  DeeprootDepths('Низовье Глубокого Корня', false),
  MiquellasHaligtree('Святое Древо Микеллы', false),
  CrumblingFarumAzula('Разрушающийся Фарум-Азула', false),
  RealmOfShadow('Царство Теней', true),
  GravesitePlain('Равнина Надгробий', true),
  ;

  final String title;
  final bool isDlc;
  const Location(this.title, this.isDlc);
}
