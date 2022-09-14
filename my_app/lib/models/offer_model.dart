class OfferModel {
  final String title, image, price, previosPrice, discount;
  final bool isAvailable;

  OfferModel({
    required this.title,
    required this.image,
    required this.price,
    required this.previosPrice,
    required this.discount,
    required this.isAvailable,
  });

  static final List<OfferModel> items = [
    OfferModel(
        title: "ست هدیه چرم عطارد مدل A12",
        image:
            "https://dkstatics-public.digikala.com/digikala-products/6491983536e01cf967fc8a8560a781957a9e61c5_1654948304.jpg?x-oss-process=image/resize,m_lfit,h_800,w_800/quality,q_90",
        price: "۴۸۴,۰۰۰",
        previosPrice: "۱,۴۸۰,۰۰۰",
        discount: "۶۷٪",
        isAvailable: true),
    OfferModel(
        title: "واکس کرمی کفش کلنیل مدل 79540030050",
        image:
            "https://dkstatics-public.digikala.com/digikala-products/880cb4056960ad5910efe3405cff9b19b1661865_1595826348.jpg?x-oss-process=image/resize,m_lfit,h_800,w_800/quality,q_90",
        price: "۴۸۴,۰۰۰",
        previosPrice: "۲۷۰,۰۰۰",
        discount: "۶۷٪",
        isAvailable: true),
    OfferModel(
        title: "فلش مموری کوئین تک مدل marvel-G ظرفیت 64 گیگابایت",
        image:
            "https://dkstatics-public.digikala.com/digikala-products/2de74d886a89d3f54d86515c3a99397160be281a_1633361519.jpg?x-oss-process=image/resize,m_lfit,h_800,w_800/quality,q_90",
        price: "۱۲۴,۵۰۰",
        previosPrice: "۱۴۹,۰۰۰",
        discount: "۱۶٪",
        isAvailable: true),
    OfferModel(
        title: "گوشواره زنانه پایتخت مدل PS539_A",
        image:
            "https://dkstatics-public.digikala.com/digikala-products/8851a1dd2afecb6141559b64e09fe3cbcfa56bcf_1633287875.jpg?x-oss-process=image/resize,m_lfit,h_800,w_800/quality,q_90",
        price: "۵۴,۰۰۰",
        previosPrice: "",
        discount: "",
        isAvailable: true),
    OfferModel(
        title: "کفش مردانه مدل k.baz.114",
        image:
            "https://dkstatics-public.digikala.com/digikala-products/bbcea57b340eee80c02df706987d222e2a7c5ea8_1614432866.jpg?x-oss-process=image/resize,m_lfit,h_800,w_800/quality,q_90",
        price: "۱۵۱,۴۱۰",
        previosPrice: "",
        discount: "",
        isAvailable: true),
    OfferModel(
        title: "هدفون بی‌ سیم اپل مدل AirPods New Generation",
        image:
            "https://dkstatics-public.digikala.com/digikala-products/6491983536e01cf967fc8a8560a781957a9e61c5_1654948304.jpg?x-oss-process=image/resize,m_lfit,h_800,w_800/quality,q_90",
        price: "۳,۴۶۷,۰۰۰",
        previosPrice: "۳,۶۵۰,۰۰۰",
        discount: "۵٪",
        isAvailable: true),
    OfferModel(
        title: "اسپیکر بلوتوثی لیتو مدل BOOM BOX 1000",
        image:
            "https://dkstatics-public.digikala.com/digikala-products/3b5d8555eb83a438a3e81b048605cf34f10302a7_1659277886.jpg?x-oss-process=image/resize,m_lfit,h_800,w_800/quality,q_90",
        price: "۴,۲۹۹,۰۰۰",
        previosPrice: "۸,۰۰۰,۰۰۰",
        discount: "۴۶٪",
        isAvailable: true),
  ];
}
