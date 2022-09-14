class DigiAppsModel {
  final String title, image;

  DigiAppsModel(
    this.title,
    this.image,
  );
  static final List<DigiAppsModel> items = [
    DigiAppsModel("دیجی کالا جت", "assets/images/apps/digikala_jet.png"),
    DigiAppsModel(
        "حراج دیجی استایل", "assets/images/apps/haraj_digi_style.png"),
    DigiAppsModel("دیجی پی", "assets/images/apps/digi_pay.png"),
    DigiAppsModel("دیجی کالا مهر", "assets/images/apps/digikala_mehr.png"),
    DigiAppsModel("دیجی پلاس", "assets/images/apps/digi_plus.png"),
    DigiAppsModel("ماموریت ها", "assets/images/apps/mamoriyat_ha.png"),
    DigiAppsModel("دیجی کلاب", "assets/images/apps/digi_club.png"),
  ];
}
