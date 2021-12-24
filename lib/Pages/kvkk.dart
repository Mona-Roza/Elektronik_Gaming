import 'package:elektronik_gaming/Decoration/decoration.dart';
import 'package:elektronik_gaming/Decoration/sayfa_basi.dart';
import 'package:elektronik_gaming/Header-Footer/footer.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Kvkk extends StatefulWidget {
  const Kvkk({Key? key}) : super(key: key);

  @override
  _KvkkState createState() => _KvkkState();
}

class _KvkkState extends State<Kvkk> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, info) {
      return info.deviceScreenType == DeviceScreenType.desktop
          ? desktop()
          : mobile();
    });
  }

  Widget desktop() {
    return SingleChildScrollView(
      child: SizedBox(
        child: Column(
          children: [
            const SayfaBasi(),
            Row(
              children: [
                const Expanded(flex: 1, child: SizedBox()),
                Expanded(
                    flex: 4,
                    child: Container(
                      decoration: boxesdecorations(Colors.grey.shade200),
                      child: metin(),
                    )),
                const Expanded(flex: 1, child: SizedBox()),
              ],
            ),
            const SizedBox(height: 20),
            const Footer(),
          ],
        ),
      ),
    );
  }

  Widget mobile() {
    return SingleChildScrollView(
      child: metin(),
    );
  }

  Widget metin() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Center(
            child: Text(
              'AURORA GİYİM TİCARET ANONİM ŞİRKETİ  KİŞİSEL VERİLERİN KORUNMASI VE İŞLENMESİ POLİTİKASI',
              style: TextStyle(fontSize: 12, color: Colors.black),
            ),
          ),
          SizedBox(height: 5),
          Text(
            '1.       BÖLÜM 1 - GİRİŞ \n\n  1.1   Giriş',
            style: TextStyle(color: Colors.black87, fontSize: 16),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Kişisel verilerin korunması, Aurora Giyim Ticaret Anonim Şirketi’nin (“Şirket”) en önemli öncelikleri arasında olup, bu hususta yürürlükte bulunan tüm mevzuata uygun davranmak için azami gayret göstermektedir. Bu konunun en önemli ayağını ise işbu Aurora Giyim Ticaret Anonim Şirketi Kişisel Verilerin Korunması ve İşlenmesi Politikası (“Politika”) oluşturmaktadır. \n\n İşbu Politika çerçevesinde, Şirketimiz tarafından gerçekleştirilen kişisel veri işleme faaliyetlerinin yürütülmesinde benimsenen ilkeler ve Şirketimizin veri işleme faaliyetlerinin 6698 sayılı Kişisel Verilerin Korunması Kanunu’nda (“Kanun”) yer alan düzenlemelere uyumu bakımından benimsenen temel prensipler açıklanmakta ve böylelikle Şirketimiz, kişisel veri sahiplerini bilgilendirerek gerekli şeffaflığı sağlamaktadır. Bu kapsamdaki sorumluluğumuzun tam bilinci ile kişisel verileriniz işbu Politika kapsamında işlenmekte ve korunmaktadır.',
            style: TextStyle(color: Colors.black87, fontSize: 10),
          ),
          SizedBox(height: 5),
          Text(
            '1.2   Kapsam',
            style: TextStyle(color: Colors.black87, fontSize: 16),
          ),
          SizedBox(height: 5),
          Text(
            'İşbu Politika, Şirketimiz çalışanları (Şirketimiz’in çalışanları, stajyerleri, expatları, hissedarları, yetkilileri) haricindeki kişilerin otomatik olan ya da herhangi bir veri kayıt sisteminin parçası olmak kaydıyla otomatik olmayan yollarla işlenen tüm kişisel verilerine ilişkindir. \n\n\n Söz konusu kişisel veri sahiplerine ilişkin detaylı bilgilere işbu Politika’nın EK-2 (“EK 2- Kişisel Veri Sahipleri”) dokümanından, işbu Politikada kullanılan ve bütünlük açısından açıklanması gereken tanımlara ise işbu Politika’nın EK-1 (“EK 1- Tanımlar”) dokümanından ulaşılması mümkündür.\n\n\n Çalışanlarımızın kişisel verilerinin korunmasına ilişkin Şirketimizin yürüttüğü faaliyetler ise, işbu Politika’daki esaslarla paralel olarak kaleme alınan Aurora Giyim Ticaret Anonim Şirketi Çalışan Kişisel Verilerinin Korunması ve İşlenmesi Politikası altında yönetilmektedir. \n',
            style: TextStyle(color: Colors.black87, fontSize: 10),
          ),
          SizedBox(height: 5),
          Text(
            '2.       BÖLÜM 2 - KİŞİSEL VERİLERİN İŞLENMESİNE İLİŞKİN HUSUSLAR \n',
            style: TextStyle(color: Colors.black87, fontSize: 16),
          ),
          SizedBox(height: 5),
          Text(
            '2.1    Kişisel Verileri İşleme Prensipleri \n',
            style: TextStyle(color: Colors.black87, fontSize: 14),
          ),
          SizedBox(height: 5),
          Text(
            'Şirketimiz kişisel verileri, Kanun’da ve ilgili diğer mevzuatlarda öngörülen usul ve esaslara uygun olarak işlenmektedir. Bu doğrultuda Şirketimiz kişisel verileri, \n\n\n hukuka ve dürüstlük kurallarına uygun,doğru ve gerektiğinde güncel, belirli, açık ve meşru amaçlar için, işlendikleri amaçla bağlantılı, sınırlı ve ölçülü olarak,ilgili mevzuatta öngörülen veya işlendikleri amaç için gerekli olan süre kadarişlemektedir.',
            style: TextStyle(color: Colors.black87, fontSize: 10),
          ),
          SizedBox(height: 5),
          Text(
            '2.2    Kişisel Verilerin İşlenmesi \n',
            style: TextStyle(color: Colors.black87, fontSize: 14),
          ),
          Text(
            '2.2.1         Kişisel Verilerin İşlenmesi \n',
            style: TextStyle(color: Colors.black87, fontSize: 12),
          ),
          Text(
            'Kişisel veri sahibinin açık rıza vermesi, kişisel verilerin hukuka uygun olarak işlenmesini mümkün kılan hukuki dayanaklardan yalnızca bir tanesi olup, aşağıda yer alan şartlardan birinin varlığı durumunda kişisel veriler, veri sahibinin açık rızası aranmaksızın Şirketimiz tarafından işlenmektedir.\n\n\n Açık rıza haricinde kişisel veri işleme faaliyetinin dayanağı aşağıda belirtilen şartlardan yalnızca biri olabileceği gibi birden fazla şart da aynı kişisel veri işleme faaliyetinin dayanağı olabilmektedir. İşlenen verilerin özel nitelikli kişisel veri olması halinde, işbu Politika’nın 2.2.2 başlığı (“Özel Nitelikli Kişisel Verilerin İşlenmesi”) içerisinde yer alan şartlar uygulanacaktır.',
            style: TextStyle(color: Colors.black87, fontSize: 10),
          ),
          SizedBox(height: 10),
          Text(
            '     i.            Kanunlarda Açıkça Öngörülmesi \n',
            style: TextStyle(color: Colors.black, fontSize: 12),
          ),
          Text(
            'Kanunlarda açıkça öngörülen hallerde kişisel veriler işlenebilecektir. Bu durumda Şirketimiz, ilgili hukuki düzenlemeler çerçevesinde kişisel verileri işlemektedir.',
            style: TextStyle(color: Colors.black87, fontSize: 10),
          ),
          SizedBox(height: 10),
          Text(
            '    ii.            Fiili İmkansızlık Sebebiyle İlgilinin Açık Rızasının Alınamaması \n',
            style: TextStyle(color: Colors.black, fontSize: 12),
          ),
          SizedBox(height: 10),
          Text(
            'Fiili imkansızlık nedeniyle rızasını açıklayamayacak durumda olan veya rızasına geçerlilik tanınamayacak olan kişinin kendisinin ya da başka bir kişinin hayatı veya beden bütünlüğünü korumak için kişisel verisinin işlenmesinin zorunlu olması halinde veri sahibinin kişisel verileri işlenebilecektir.\n',
            style: TextStyle(color: Colors.black87, fontSize: 10),
          ),
          SizedBox(height: 10),
          Text(
            '   iii.            Sözleşmenin Kurulması veya İfasıyla Doğrudan İlgili Olması\n',
            style: TextStyle(color: Colors.black, fontSize: 12),
          ),
          SizedBox(height: 10),
          Text(
            'Bir sözleşmenin kurulması veya ifasıyla doğrudan doğruya ilgili olması kaydıyla, sözleşmenin taraflarına ait kişisel verilerin işlenmesinin gerekli olması halinde kişisel verilerin işlenmesi mümkündür.\n',
            style: TextStyle(color: Colors.black87, fontSize: 10),
          ),
          SizedBox(height: 10),
          Text(
            '   iv.            Şirket’in Hukuki Yükümlülüğünü Yerine Getirmesi\n',
            style: TextStyle(color: Colors.black, fontSize: 12),
          ),
          SizedBox(height: 10),
          Text(
            'Şirketimizin veri sorumlusu olarak hukuki yükümlülüklerini yerine getirmesi için işlemenin zorunlu olması halinde veri sahibinin kişisel verileri işlenebilecektir.\n',
            style: TextStyle(color: Colors.black87, fontSize: 10),
          ),
          SizedBox(height: 10),
          Text(
            '   v.            Kişisel Veri Sahibinin Kişisel Verisini Alenileştirmesi\n',
            style: TextStyle(color: Colors.black, fontSize: 12),
          ),
          SizedBox(height: 10),
          Text(
            'Veri sahibi tarafından herhangi bir şekilde kamuoyuna açıklanmış olan ve alenileştirilme sonucu herkesin bilgisine açılmış olan kişisel veriler alenileştirme amacı ile sınırlı olarak Şirketimiz tarafından işlenebilecektir.\n',
            style: TextStyle(color: Colors.black87, fontSize: 10),
          ),
          SizedBox(height: 10),
          Text(
            '  vi.            Bir Hakkın Tesisi veya Korunması için Veri İşlemenin Zorunlu Olması\n',
            style: TextStyle(color: Colors.black, fontSize: 12),
          ),
          SizedBox(height: 10),
          Text(
            'Bir hakkın tesisi, kullanılması veya korunması için veri işlemenin zorunlu olması halinde veri sahibinin kişisel verileri işlenebilecektir.\n',
            style: TextStyle(color: Colors.black87, fontSize: 10),
          ),
          SizedBox(height: 10),
          Text(
            '  vii.            Şirketimizin Meşru Menfaati için Veri İşlemenin Zorunlu Olması\n',
            style: TextStyle(color: Colors.black, fontSize: 12),
          ),
          SizedBox(height: 10),
          Text(
            'Şirketimiz ile veri sahibinin menfaat dengesinin gözetilmesi şartıyla Şirketimiz tarafından kişisel veriler işlenebilecektir. Bu kapsamda, meşru menfaate dayanarak verilerin işlenmesinde Şirketimiz öncelikle işleme faaliyeti sonucunda elde edeceği meşru menfaati belirler ve kişisel verilerin işlenmesinin veri sahibinin hak ve özgürlükleri üzerindeki olası etkisini değerlendirir ve dengenin bozulmadığı kanaatindeyse işleme faaliyetini gerçekleştirir.\n',
            style: TextStyle(color: Colors.black87, fontSize: 10),
          ),
          SizedBox(height: 10),
          Text(
            '2.2.2         Özel Nitelikli Kişisel Verilerin İşlenmesi \n',
            style: TextStyle(color: Colors.black87, fontSize: 10),
          ),
          SizedBox(height: 10),
          Text(
            'Kişisel verilerin bir kısmı, ‘özel nitelikli kişisel veriler’ olarak ayrı şekilde düzenlenmekte ve özel bir korumaya tabi olmaktadır. Hukuka aykırı olarak işlendiğinde kişilerin mağduriyetine sebep olma veya ayrımcılığa maruz kalma riski nedeniyle, bu verilere özel önem atfedilmiştir.\n\n\n (i)      Sağlık ve cinsel hayat dışındaki özel nitelikli kişisel veriler, veri sahibinin açık rıza vermesi halinde veya açık rıza aranmaksızın kanunlarda açıkça öngörülen hallerde işlenebilmektedir.\n\n\n (ii)    Sağlık ve cinsel hayata ilişkin özel nitelikli kişisel veriler, veri sahibinin açık rıza vermesi halinde veya açık rıza aranmaksızın kamu sağlığının korunması, koruyucu hekimlik, tıbbi teşhis, tedavi ve bakım hizmetlerinin yürütülmesi, sağlık hizmetleri ile finansmanının planlanması ve yönetimi amacıyla, sır saklama yükümlülüğü altında bulunan kişiler veya yetkili kurum ve kuruluşlar tarafından işlenebilmektedir.\n',
            style: TextStyle(color: Colors.black87, fontSize: 12),
          ),
          SizedBox(height: 10),
          Text(
            '2.3   Kişisel Verilerin İşlenme Amaçları \n',
            style: TextStyle(color: Colors.black, fontSize: 14),
          ),
          SizedBox(height: 10),
          Text(
            'Kanun ve ilgili diğer mevzuatlara uygun şekilde işbu Politika’da detaylandırılan kişisel veriler ve özel nitelikli kişisel verilerin işlenme şartları kapsamında Şirketimizin kişisel veri işleme amaçları aşağıdaki gibidir: \n',
            style: TextStyle(color: Colors.black87, fontSize: 10),
          ),
          SizedBox(height: 19),
          Text(
            '1.Şirketimizin insan kaynakları politikalarının ve süreçlerinin planlanması ve/veya icra edilmesi,\n2.Şirketimizin ve Şirketimizle iş ilişkisi içerisinde olan ilgili kişilerin hukuki ve teknik güvenliğinin temini faaliyetlerinin planlanması ve/veya icrası,\n3.Şirketimiz tarafından ve/veya Şirketimiz nam ve hesabına sunulan ürün ve hizmetlerin ilgili kişilerin beğeni, kullanım alışkanlıkları ve ihtiyaçlarına göre özelleştirilerek ilgili kişilere önerilmesi ve tanıtılması için gerekli olan aktivitelerin planlanması ve/veya icrası,\n4.Şirketimiz tarafından ve/veya Şirketimiz nam ve hesabına sunulan ürün ve/veya hizmetlerden ilgili kişileri faydalandırmak için gerekli çalışmaların yapılması ve ilgili iş süreçlerinin yürütülmesi,\n5.Şirketimiz tarafından yürütülen ticari ve/veya operasyonel faaliyetlerin gerçekleştirilmesi için ilgili iş birimlerimiz tarafından gerekli çalışmaların yapılması ve buna bağlı iş süreçlerinin yürütülmesi,\n6.Şirketimizin ticari ve/veya iş stratejilerinin planlanması ve/veya icrası.\n\n\nSöz konusu kişisel veri işleme amaçlarına ilişkin detaylı bilgilere işbu Politika’nın EK-3 (“EK 3- Kişisel Veri İşleme Amaçları”) dokümanından ulaşılması mümkündür.\n',
            style: TextStyle(color: Colors.black87, fontSize: 10),
          ),
          SizedBox(height: 10),
          Text(
            '2.4   Şirketimiz Tarafından İşlenen Kişisel Veri Kategorileri \n',
            style: TextStyle(color: Colors.black, fontSize: 14),
          ),
          SizedBox(height: 10),
          Text(
            'Şirketimiz tarafından Kanun’a ve ilgili diğer mevzuat hükümlerine uygun olarak işbu Politika’da belirtilen amaçlar ve şartlar çerçevesinde kişisel veri sahiplerinin kimlik, iletişim, finansal, müşteri, müşteri işlem, işlem güvenliği, risk yönetimi, fiziksel mekan güvenlik, denetim ve teftiş, hukuki işlem ve uyum, itibar yönetimi, talep/şikayet yönetimi, aile bireyleri ve yakın, görsel ve işitsel, pazarlama, araç, çalışan adayı, çalışan, çalışan işlem, çalışan performans ve kariyer gelişim, yan hak ve menfaatler, sigorta ve özel nitelikli kişisel veri kategorilerine dahil kişisel verileri işlenmektedir. \n\n\nSöz konusu kişisel veri kategorilerine ilişkin detaylı bilgilere işbu Politika’nın EK-4 (“EK 4 - Kişisel Veri Kategorileri”) dokümanından ulaşılması mümkündür.\n',
            style: TextStyle(color: Colors.black87, fontSize: 10),
          ),
          SizedBox(height: 16),
          Text(
            '3.       BÖLÜM 3 - KİŞİSEL VERİLERİN AKTARILMASINA İLİŞKİN HUSUSLAR \n',
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          SizedBox(height: 16),
          Text(
            'Şirketimiz hukuka uygun olan kişisel veri işleme amaçları doğrultusunda gerekli güvenlik önlemlerini alarak kişisel verileri ve özel nitelikli kişisel verileri yurt içinde ve/veya yurt dışındaki üçüncü kişilere (“Üçüncü Kişiler”) aktarabilmektedir. Şirketimiz, bu doğrultuda Kanun’un 8’inci ve 9’uncu maddesinde öngörülen düzenlemelere uygun hareket etmektedir. \n',
            style: TextStyle(color: Colors.black87, fontSize: 10),
          ),
          SizedBox(height: 10),
          Text(
            '3.1   Kişisel Verilerin Aktarılması \n',
            style: TextStyle(color: Colors.black, fontSize: 14),
          ),
          SizedBox(height: 10),
          Text(
            'Veri sahibinin açık rızasının bulunması durumunda ve aşağıda sayılı şartların varlığı halinde veri sahibinin açık rızası aranmaksızın gerekli özen gösterilerek ve Kurul tarafından öngörülen yöntemler de dahil gerekli tüm güvenlik önlemleri alınarak kişisel veriler Üçüncü Kişiler’e aktarılabilmektedir: \n',
            style: TextStyle(color: Colors.black87, fontSize: 10),
          ),
          SizedBox(height: 10),
          Text(
            '1.Kişisel verilerin aktarılmasına ilişkin ilgili faaliyetin kanunlarda açıkça öngörülmesi,\n2.Kişisel verilerin Şirket tarafından aktarılmasının bir sözleşmenin kurulması veya ifasıyla doğrudan doğruya ilgili ve gerekli olması,\n3.Kişisel verilerin aktarılmasının Şirket’in hukuki yükümlülüğünü yerine getirebilmesi için zorunlu olması,\n3.Kişisel verilerin veri sahibi tarafından alenileştirilmiş olması şartıyla, alenileştirme amacıyla sınırlı bir şekilde Şirket tarafından aktarılması,\n4.Kişisel verilerin Şirket tarafından aktarılmasının Şirket’in veya veri sahibinin veya üçüncü kişilerin haklarının tesisi, kullanılması veya korunması için zorunlu olması,\n5.Veri sahibinin temel hak ve özgürlüklerine zarar vermemek kaydıyla Şirket meşru menfaatleri için kişisel veri aktarımı faaliyetinde bulunulmasının zorunlu olması,\n6.Veri sahibinin temel hak ve özgürlüklerine zarar vermemek kaydıyla Şirket meşru menfaatleri için kişisel veri aktarımı faaliyetinde bulunulmasının zorunlu olması,\n7.Fiili imkansızlık nedeniyle rızasını açıklayamayacak durumda bulunan veya rızasına hukuki geçerlilik tanınmayan kişinin kendisinin ya da bir başkasının hayatı veya beden bütünlüğünü koruması için zorunlu olması.\n',
            style: TextStyle(color: Colors.black87, fontSize: 11),
          ),
          SizedBox(height: 10),
          Text(
            'Kişisel veriler yurt dışına aktarılacak ise yukarıda yer alan şartlara ek olarak Şirketimiz tarafından kişisel veriler, Kurul tarafından yeterli korumaya sahip olduğu ilan edilen yabancı ülkelere (“Yeterli Korumaya Sahip Yabancı Ülke”) veya yeterli korumanın bulunmaması durumunda Türkiye’deki ve ilgili yabancı ülkedeki veri sorumlularının yeterli bir korumayı yazılı olarak taahhüt ettiği ve Kurul’un izninin bulunduğu yabancı ülkelere (“Yeterli Korumayı Taahhüt Eden Veri Sorumlusunun Bulunduğu Yabancı Ülke”) aktarılmaktadır. \n',
            style: TextStyle(color: Colors.black87, fontSize: 10),
          ),
          SizedBox(height: 10),
          Text(
            '3.2   Özel Nitelikli Kişisel Verilerin Aktarılması \n',
            style: TextStyle(color: Colors.black, fontSize: 14),
          ),
          SizedBox(height: 10),
          Text(
            'Şirketimiz, özel nitelikli kişisel verileri hukuka uygun veri işleme amaçları doğrultusunda, gerekli özeni göstererek ve Kurul tarafından öngörülen yöntemler de dahil gerekli güvenlik önlemlerini alarak ve aşağıdaki şartların varlığı halinde yurt içinde veya yurt dışına aktarabilmektedir: \n\n(i)      Sağlık ve cinsel hayat dışındaki özel nitelikli kişisel veriler, veri sahibinin açık rıza vermesi halinde veya açık rıza aranmaksızın kanunlarda açıkça öngörülen hallerde aktarılabilmektedir.\n\n(ii)    Sağlık ve cinsel hayata ilişkin özel nitelikli kişisel veriler, veri sahibinin açık rıza vermesi halinde veya açık rıza aranmaksızın kamu sağlığının korunması, koruyucu hekimlik, tıbbi teşhis, tedavi ve bakım hizmetlerinin yürütülmesi, sağlık hizmetleri ile finansmanının planlanması ve yönetimi amacıyla, sır saklama yükümlülüğü altında bulunan kişiler veya yetkili kurum ve kuruluşlar tarafından aktarılabilmektedir.\n\n\nEğer özel nitelikli kişisel veriler yurt dışına aktarılacak ise yukarıda yer alan şartlara ek olarak Şirketimiz, Yeterli Korumaya Sahip Yabancı Ülkeler’e veya Yeterli Korumayı Taahhüt Eden Veri Sorumlusunun Bulunduğu Yabancı Ülkeler’e özel nitelikli kişisel verileri aktarılabilmektedir.\n',
            style: TextStyle(color: Colors.black87, fontSize: 10),
          ),
          SizedBox(height: 10),
          Text(
            '3.3   Kişisel Verilerin Aktarıldığı Kişi Kategorizasyonları \n',
            style: TextStyle(color: Colors.black, fontSize: 14),
          ),
          SizedBox(height: 10),
          Text(
            'Şirketimiz, Kanun’un 8’inci ve 9’uncu maddelerine uygun olarak kişisel verileri aşağıda sıralanan alıcı grubu kategorilerine aktarabilmektedir: \n\n\n(i)                  Kanunen Yetkili Kamu Kurumu,\n\n(ii)                Kanunen Yetkili Özel,\n\n(iii)               İştirak,\n\n(iv)              Tedarikçi,\n\nSöz konusu kişisel verilerin aktarıldığı üçüncü kişilere ilişkin detaylı bilgilere işbu Politika’nın EK-5 (“EK 5 - Kişisel Verilerin Aktarıldığı Üçüncü Kişi Kategorileri”) dokümanından ulaşılması mümkündür.',
            style: TextStyle(color: Colors.black87, fontSize: 10),
          ),
          SizedBox(height: 16),
          Text(
            '4.       BÖLÜM 4 - KİŞİSEL VERİLERİN SAKLANMASI VE İMHASI \n',
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          SizedBox(height: 10),
          Text(
            'Türk Ceza Kanunu, Kanun ve ilgili diğer mevzuatta öngörülen kişisel verilerin silinmesi, yok edilmesi veya anonim hale getirilmesi yükümlülüğü gereği, Şirketimiz tarafından Kanun ve diğer mevzuat hükümlerine uygun olarak işlenmiş olmasına rağmen işlenmesini gerektiren sebeplerin ortadan kalkması halinde kişisel veriler Şirketimizin re’sen vermiş olduğu karara veya kişisel veri sahibinin talebine istinaden silinir, yok edilir veya anonim hale getirilir. \n',
            style: TextStyle(color: Colors.black87, fontSize: 10),
          ),
          SizedBox(height: 16),
          Text(
            '5.       BÖLÜM 5 - KİŞİSEL VERİLERİN GÜVENLİĞİNİN VE GİZLİLİĞİNİN SAĞLANMASI \n',
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          SizedBox(height: 10),
          Text(
            'Şirketimiz tarafından, kişisel verilerin hukuka aykırı olarak açıklanmasını, erişimini, aktarılmasını veya başka şekillerde meydana gelebilecek güvenlik eksikliklerini önlemek için, imkanlar dahilinde, korunacak verinin niteliğine göre gerekli her türlü tedbir alınmaktadır. \n\nBu kapsamda Şirketimiz tarafından gerekli her türlü (i) idari ve (ii) teknik tedbirler alınmakta, (iii) Şirketimiz bünyesinde denetim sistemi kurulmakta ve (iv) kişisel verilerin kanuni olmayan yollarla ifşası durumunda Kanun’da öngörülen tedbirlere uygun olarak hareket edilmektedir.',
            style: TextStyle(color: Colors.black87, fontSize: 10),
          ),
          SizedBox(height: 10),
          Text(
            '5.1   Kişisel Verilerin Hukuka Uygun İşlenmesini Sağlamak ve Kişisel Verilere Hukuka Aykırı Erişilmesini Önlemek için Şirketimiz Tarafından Alınan İdari Tedbirler \n',
            style: TextStyle(color: Colors.black, fontSize: 14),
          ),
          SizedBox(height: 16),
          Text(
            '-      Şirketimiz kişisel verilerin işlenmesi ve korunmasına ilişkin olarak çalışanlarını eğitmekte ve bilinçlendirilmelerini sağlamaktadır.\n-      Kişisel verilerin aktarıma konu olduğu durumlarda, Şirketimiz tarafından kişisel verilerin aktarıldığı kişiler ile akdedilmiş olan sözleşmelere, kişisel verilerin aktarıldığı tarafın veri güvenliğini sağlamaya yönelik yükümlülükleri yerine getireceğine ilişkin kayıtlar eklenmesini temin edilmektedir.\n-      Şirketimiz tarafından yürütülen kişisel veri işleme faaliyetleri detaylı olarak incelenmekte, bu kapsamda, Kanun’da öngörülen kişisel veri işleme şartlarına uygunluğunun sağlanması için atılması gereken adımlar tespit edilmektedir.\n-      Şirketimiz, Kanun’a uyumun sağlanması için yerine getirilmesi gereken uygulamaları tespit ederek, bu uygulamaları iç politikalar ile düzenlenmektedir.\n',
            style: TextStyle(color: Colors.black, fontSize: 11),
          ),
          SizedBox(height: 10),
          Text(
            '5.2   Verilerin Hukuka Uygun İşlenmesini Sağlamak ve Kişisel Verilere Hukuka Aykırı Erişilmesini Önlemek için Şirketimiz Tarafından Alınan Teknik Tedbirler\n',
            style: TextStyle(color: Colors.black, fontSize: 14),
          ),
          SizedBox(height: 10),
          Text(
            '-      Şirketimiz tarafından kişisel verilerin işlenmesine ve korunmasına ilişkin olarak, teknolojinin imkan verdiği ölçüde teknik önlemler alınmakta ve alınan önlemler gelişmelere paralel olarak güncellenmekte ve iyileştirilmektedir.\n-      Teknik konularda, uzman personel istihdam edilmektedir.\n-      Alınan önlemlerin uygulanmasına yönelik düzenli aralıklarla denetim yapılmaktadır.\n-      Güvenliği temin edecek yazılım ve sistemler kurulmaktadır.\n-      Şirketimiz bünyesinde işlenmekte olan kişisel verilere erişim yetkisi, belirlenen işleme amacı doğrultusunda ilgili çalışanlar ile sınırlandırılmaktadır.\n-      Özel nitelikli kişisel veriler korunmasında Kanun ve ilgili diğer mevzuat hükümlerinde yer alan önlemlere uygun hareket edilmektedir.\n',
            style: TextStyle(color: Colors.black, fontSize: 11),
          ),
          SizedBox(height: 10),
          Text(
            '5.3   Kişisel Verilerin Kanuni Olmayan Yollarla İfşası Durumunda Alınacak Tedbirler\n',
            style: TextStyle(color: Colors.black, fontSize: 14),
          ),
          SizedBox(height: 10),
          Text(
            'Şirketimiz tarafından yürütülen kişisel veri işleme faaliyeti kapsamında, kişisel verilerin hukuka aykırı olarak yetkisiz kimseler tarafından elde edilmesi durumunda, vakit kaybedilmeksizin durum Kurul’a ve ilgili veri sahiplerine bildirilecektir.\n',
            style: TextStyle(color: Colors.black, fontSize: 11),
          ),
          SizedBox(height: 16),
          Text(
            '6.       BÖLÜM 6 - KİŞİSEL VERİ SAHİPLERİNİN AYDINLATILMASI \n',
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          SizedBox(height: 10),
          Text(
            'Şirketimiz, Kanun’un 10’uncu maddesine uygun olarak, kişisel verilerin elde edilmesi sırasında kişisel veri sahiplerini aydınlatmaktadır. Bu kapsamda Şirketimiz ve varsa temsilcisinin kimliği, kişisel verilerin hangi amaçla işleneceği, işlenen kişisel verilerin kimlere ve hangi amaçla aktarılabileceği, kişisel veri toplamanın yöntemi ve hukuki sebebi ile kişisel veri sahibinin sahip olduğu hakları konusunda aydınlatma yapmaktadır.\n\nT.C. Anayasası’nın 20’nci maddesinde herkesin, kendisiyle ilgili kişisel veriler hakkında bilgilendirilme hakkına sahip olduğu ortaya konulmuştur. Bu doğrultuda Kanun’un 11’nci maddesinde kişisel veri sahibinin hakları arasında “bilgi talep etme” hakkı da yer almaktadır. Şirketimiz, bu kapsamda, T.C. Anayasası’nın 20’nci ve Kanun’un 11’inci maddelerine uygun olarak kişisel veri sahibinin bilgi talep etmesi durumunda gerekli bilgilendirmeyi yapmaktadır. Kişisel veri sahibinin hakları ile ilgili detaylı bilgilere işbu Politika’nın 7.1’inci bölümünde (“Kişisel Veri Sahibinin Hakları”) yer verilmiştir.',
            style: TextStyle(color: Colors.black87, fontSize: 10),
          ),
          SizedBox(height: 16),
          Text(
            '7.       BÖLÜM 7 - KİŞİSEL VERİ SAHİBİNİN HAKLARI VE BU HAKLARIN KULLANILMASI\n',
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          SizedBox(height: 10),
          Text(
            '7.1   Kişisel Veri Sahibinin Hakları\n',
            style: TextStyle(color: Colors.black, fontSize: 14),
          ),
          SizedBox(height: 10),
          Text(
            'Kişisel verilere ilişkin olarak veri sahibinin kullanabileceği kanuni haklar aşağıda sayılmaktadır:\n\n',
            style: TextStyle(color: Colors.black87, fontSize: 10),
          ),
          SizedBox(height: 10),
          Text(
            '(1) Kişisel verilerinin işlenip işlenmediğini öğrenme,\n\n(2) Kişisel verileri işlenmişse buna ilişkin bilgi talep etme,\nv(3) Kişisel verilerinin işlenme amacını ve bunların amacına uygun kullanılıp kullanılmadığını öğrenme,\n(4) Kişisel verilerinin yurt içinde veya yurt dışında aktarıldığı üçüncü kişileri öğrenme,\n\n(5) Kişisel verilerinin eksik veya yanlış işlenmiş olması halinde bunların düzeltilmesini isteme ve bu kapsamda yapılan işlemin kişisel verilerinin aktarıldığı üçüncü kişilere bildirilmesini isteme,\n\n(6) Kanun ve ilgili diğer kanun hükümlerine uygun olarak işlenmiş olmasına rağmen, işlenmesini gerektiren sebeplerin ortadan kalkması halinde kişisel verilerinin silinmesini veya yok edilmesini  isteme ve bu kapsamda yapılan işlemin kişisel verilerinin aktarıldığı üçüncü kişilere bildirilmesini isteme,\n\n(7) İşlenen verilerinin münhasıran otomatik sistemler vasıtasıyla analiz edilmesi suretiyle aleyhine bir sonucun ortaya çıkmasına itiraz etme,\n\n(8) Kişisel verilerinin kanuna aykırı olarak işlenmesi sebebiyle zarara uğraması halinde zararın giderilmesini talep etme.\n',
            style: TextStyle(color: Colors.black87, fontSize: 10),
          ),
          SizedBox(height: 10),
          Text(
            '7.2   Veri Sahibinin Haklarını İleri Süremeyeceği Haller\n',
            style: TextStyle(color: Colors.black, fontSize: 14),
          ),
          SizedBox(height: 10),
          Text(
            'Kanun’un 28’inci maddesinde sayılı hallerde, kişisel veri sahipleri bölüm 7.1’de (“Kişisel Veri Sahibinin Hakları”) sayılan haklarını ileri süremeyeceklerdir. Zira bu durumlar Kanun’da belirtilen veri koruma kapsamı dışında tutulmaktadır.\n\nAnılan madde kapsamında sayılı haller aşağıda sıralanmaktadır:\n\n(1)      Kişisel verilerin resmi istatistik ile anonim hale getirilmek suretiyle araştırma, planlama ve istatistik gibi amaçlarla işlenmesi,\n\n(2)      Kişisel verilerin milli savunmayı, milli güvenliği, kamu güvenliğini, kamu düzenini, ekonomik güvenliği, özel hayatın gizliliğini veya kişilik haklarını ihlal etmemek ya da suç teşkil etmemek kaydıyla, sanat, tarih, edebiyat veya bilimsel amaçlarla ya da ifade özgürlüğü kapsamında işlenmesi,\n\n(3)      Kişisel verilerin milli savunmayı, milli güvenliği, kamu güvenliğini, kamu düzenini veya ekonomik güvenliği sağlamaya yönelik olarak kanunla görev ve yetki verilmiş kamu kurum ve kuruluşları tarafından yürütülen önleyici, koruyucu ve istihbari faaliyetler kapsamında işlenmesi,\n\n(4)      Kişisel verilerin soruşturma, kovuşturma, yargılama veya infaz işlemlerine ilişkin olarak yargı makamları veya infaz mercileri tarafından işlenmesi.\n\n\nKanun’un 28’inci maddesinin 2’nci fıkrası gereği, aşağıda sıralanan hallerde kişisel veri sahipleri zararın giderilmesini talep etme hakkı hariç, bölüm 7.1’de (“Kişisel Veri Sahibinin Hakları”) sayılan diğer haklarını ileri süremezler:\n\n(1)      Kişisel veri işlemenin suç işlenmesinin önlenmesi veya suç soruşturması için gerekli olması,\n\n(2)      Kişisel veri sahibi tarafından alenileştirilmiş kişisel verilerin işlenmesi,\n\n(3)      Kişisel veri işlemenin kanunun verdiği yetkiye dayanılarak görevli ve yetkili kamu kurum ve kuruluşları ile kamu kurumu niteliğindeki meslek kuruluşlarınca, denetleme veya düzenleme görevlerinin yürütülmesi ile disiplin soruşturma veya kovuşturması için gerekli olması,\n\n(4)      Kişisel veri işlemenin bütçe, vergi ve mali konulara ilişkin olarak devletin ekonomik ve mali çıkarlarının korunması için gerekli olması.\n',
            style: TextStyle(color: Colors.black87, fontSize: 10),
          ),
          SizedBox(height: 10),
          Text(
            '7.3   Kişisel Veri Sahiplerinin Haklarını Kullanması\n',
            style: TextStyle(color: Colors.black, fontSize: 14),
          ),
          SizedBox(height: 10),
          Text(
            'Kişisel veri sahipleri bölüm 7.1’de (“Kişisel Veri Sahibinin Hakları”) sayılı haklarına ilişkin taleplerini “Aurora Giyim Ticaret Anonim Şirketi Veri Sahibi Başvuru Formu”nu doldurarak yazılı olarak veya kayıtlı elektronik posta (KEP) adresi, güvenli elektronik imza, mobil İmza ya da önceden Şirketimize bildirmiş olduğunuz ve sistemimizde kayıtlı bulunan elektronik posta adresinizi kullanmak suretiyle Şirketimize iletebileceklerdir.\n',
            style: TextStyle(color: Colors.black87, fontSize: 10),
          ),
          SizedBox(height: 10),
          Text(
            '7.4   Şirketimizin Başvurulara Cevap Vermesi\n',
            style: TextStyle(color: Colors.black, fontSize: 14),
          ),
          SizedBox(height: 10),
          Text(
            'Şirketimiz, kişisel veri sahibi tarafından yapılacak başvuruları etkin, hukuka ve dürüstlük kuralına uygun olarak sonuçlandırmak üzere gerekli her türlü idari ve teknik tedbirleri almaktadır.\n\n\nŞirketimiz kişisel veri sahibinin başvurularını kabul edebileceği gibi gerekçesini açıklayarak reddedebilecektir. Şirketimiz ilgili cevabını kişisel veri sahibine yazılı olarak veya elektronik ortamda bildirebilecektir.\n\n\nKişisel veri sahibinin, bölüm 7.1’de (“Kişisel Veri Sahibinin Hakları”) altında yer alan haklara ilişkin talebini bölüm 7.3’de (“Kişisel Veri Sahiplerinin Haklarını Kullanması”) anılan usullere uygun olarak Şirketimize iletmesi durumunda, Şirketimiz talebin niteliğine göre en kısa sürede ve en geç 30 (otuz) gün içinde ilgili talebi ücretsiz olarak sonuçlandıracaktır. Ancak, işlemin ayrıca bir maliyeti gerektirmesi halinde, aşağıda belirtilen ücret alınabilecektir.\n\n\nKişisel veri sahibinin, bölüm 7.1’de (“Kişisel Veri Sahibinin Hakları”) altında yer alan haklara ilişkin talebini bölüm 7.3’de (“Kişisel Veri Sahiplerinin Haklarını Kullanması”) anılan usullere uygun olarak Şirketimize iletmesi durumunda, Şirketimiz talebin niteliğine göre en kısa sürede ve en geç 30 (otuz) gün içinde ilgili talebi ücretsiz olarak sonuçlandıracaktır. Ancak, işlemin ayrıca bir maliyeti gerektirmesi halinde, aşağıda belirtilen ücret alınabilecektir.\n',
            style: TextStyle(color: Colors.black87, fontSize: 10),
          ),
          SizedBox(height: 25),
          Center(
            child: Text(
              'EK 1 - Tanımlar\n',
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Açık Rıza:           Belirli bir konuya ilişkin, bilgilendirilmeye dayanan ve özgür iradeyle açıklanan rıza anlamına gelmektedir.\n\n\nKişisel Veri Sahibi:           Kişisel verisi işlenen gerçek kişi anlamına gelmektedir.\n\n\nKişisel Veri:           Kimliği belirli veya belirlenebilir gerçek kişiye ilişkin her türlü bilgi anlamına gelmektedir (örn. ad-soyad, TCKN, e-posta, adres, doğum tarihi, kredi kartı numarası). Dolayısıyla, tüzel kişilere ilişkin bilgilerin işlenmesi Kanun kapsamında değildir.\n\n\nÖzel Nitelikli Kişisel Veri:           Irk, etnik köken, siyasi düşünce, felsefi inanç, din, mezhep veya diğer inançlar, kılık kıyafet, dernek vakıf ya da sendika üyeliği, sağlık, cinsel hayat, ceza mahkumiyeti ve güvenlik tedbirleriyle ilgili veriler ile biyometrik ve genetik veriler anlamına gelmektedir.\n\n\nKişisel Verilerin İşlenmesi:           Kişisel verilerin tamamen veya kısmen otomatik olan ya da herhangi bir veri kayıt sisteminin parçası olmak kaydıyla otomatik olmayan yollarla elde edilmesi, kaydedilmesi, depolanması, muhafaza edilmesi, değiştirilmesi, yeniden düzenlenmesi, açıklanması, aktarılması, devralınması, elde edilebilir hale getirilmesi, sınıflandırılması ya da kullanılmasının engellenmesi gibi veriler üzerinde gerçekleştirilen her türlü işlem anlamına gelmektedir.\n\n\nVeri İşleyen:           Veri sorumlusunun verdiği yetkiye dayanarak onun adına kişisel veri işleyen gerçek veya tüzel kişi anlamına gelmektedir (örn. Şirketimizin verilerini tutan bulut bilişim firması, müşterilere formları imzalatan anketörler, scriptler çerçevesinde arama yapan çağrı merkezi firmaları).\n\n\nVeri Sorumlusu:           Kişisel verilerin işlenme amaçlarını ve vasıtalarını belirleyen, veri kayıt sisteminin kurulmasından ve yönetilmesinden sorumlu olan gerçek veya tüzel kişi anlamına gelmektedir.\n\n\nKayıtlı Elektronik Posta (KEP) Adresi:          Elektronik iletilerin, gönderimi ve teslimatı da dahil olmak üzere kullanımına ilişkin olarak hukuki delil sağlayan, elektronik postanın nitelikli şeklini ifade etmektedir.\n\n\nMobil İmza:           Mobil bir cihaz kullanılarak oluşturulan elektronik imzayı ifade etmektedir.\n\n\nGüvenli Elektronik İmza:           Münhasıran imza sahibine bağlı olan, sadece imza sahibinin tasarrufunda bulunan güvenli elektronik imza oluşturma aracı ile oluşturulan, nitelikli elektronik sertifikaya dayanarak imza sahibinin kimliğinin tespitini sağlayan, imzalanmış, elektronik veride sonradan herhangi bir değişiklik yapılıp yapılmadığının tespitini sağlayan elektronik imzayı ifade etmektedir.\n',
            style: TextStyle(color: Colors.black, fontSize: 11),
          ),
          SizedBox(height: 25),
          Center(
            child: Text(
              'EK 2 - Kişisel Veri Sahipleri\n',
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Çalışan / Stajyer Adayı:           Şirketimize herhangi bir yolla iş başvurusunda bulunmuş ya da özgeçmiş ve ilgili bilgilerini Şirketimizin incelemesine açmış olan gerçek kişiler anlamına gelmektedir.\n',
            style: TextStyle(color: Colors.black, fontSize: 11),
          ),
          SizedBox(height: 10),
          Text(
            'Eski Çalışan:           Şirketimiz ile arasındaki iş sözleşmesi herhangi bir nedenle (işten ayrılma, işten çıkarılma, emeklilik, vb.) son bulmuş gerçek kişiler anlamına gelmektedir.\n',
            style: TextStyle(color: Colors.black, fontSize: 11),
          ),
          SizedBox(height: 10),
          Text(
            'Müşteri:           Şirketimizin sunmuş olduğu ürün ve hizmetleri kullanan veya kullanmış olan gerçek kişiler anlamına gelmektedir.\n\nTüzel Kişi Müşteri Çalışanı / Yetkilisi / Hissedarı:           Şirketimizin sunmuş olduğu ürün ve hizmetleri kullanan veya kullanmış tüzel kişi müşterilerimizin hissedarları, yetkilileri veya çalışanları olan gerçek kişiler anlamına gelmektedir.\n\n\nŞirketimizin internet sitesi üyesi:           Şirketimizin ürün ve hizmetlerinden faydalanmak ve alışveriş kolaylığı sağlamak amacıyla Şirketimizin internet sitelerine üye olan gerçek kişiler anlamına gelmektedir.\n\n\nSadakat programı üyeleri:           Şirketimizin sunmuş olduğu ürün ve hizmetlerden faydalanmak ve kendisine özel ayrıcalıklı avantajlardan yararlanmak için Şirketimizin sadakat programlarına üye olan gerçek kişiler anlamına gelmektedir.\n\n\nAdına Fatura Tanzim Edilen Kişi veya Teslimat Yapılacak Kişi (Müşteri Olmayan):           Şirketimizin sunmuş olduğu ürünlerden müşterilerimizin yararlanması sırasında faturanın başka bir geçek kişi adına düzenlenmesini veya teslimatın başka biri adına gerçekleştirilmesini istemesi halinde işbu talebe konu gerçek kişiler anlamına gelmektedir.\n\n\nKampanya / Yarışma Katılımcısı:           Şirketimiz kampanyalarına veya yarışmalarına katılım sağlayan gerçek kişiler anlamına gelmektedir.\n\n\nTalep / Şikayet Sahibi:           Şirketimiz ürün ve hizmetlerinden yararlanmış olsun veya olmasın görüşlerini/şikayetlerini/önerilerini veya bilgi ve diğer taleplerini Şirketimize ileten gerçek kişiler anlamına gelmektedir.\n\n\nAile Üyeleri:           \n\n\nŞirketimizin ürün veya hizmetlerinden yararlanan veya yaralanmış olan kişilerin aile üyeleri veya yakınları anlamına gelmektedir.\n\n\nZiyaretçi:           Şirketimiz yerleşkelerini veya internet sitelerini ziyaret eden veya şirketimizin misafir internet ağına katılmış gerçek kişiler anlamına gelmektedir.\n\n\nKiraya Veren:           Şirketimiz lokasyonları için kiralanan gayrimenkulleri kiraya veren gerçek kişiler anlamına gelmektedir.\n\n\nGrup Şirketi Hissedarı / Yetkilisi/ Çalışanı:            Şirketimizin hakim ortak veya ortakları tarafından doğrudan veya dolaylı olarak kontrol edilen şirketlerin ortakları/yetkilileri/çalışanları.\n\n\nİş Ortağı Hissedarı / Yetkilisi / Çalışanı:           Şirketimizin iş birliği, iş ortaklığı veya program ortaklığı kurduğu veya ileride kurma niyetinde olduğu tüzel kişi şirketlerin hissedarları, yetkilileri veya çalışanları olan gerçek kişiler anlamına gelmektedir.\n\n\nTedarikçi:           	Şirketimiz ile arasındaki mevcut veya ilerde kurulması muhtemel sözleşmeye istinaden Şirketimize mal ve/veya hizmet sağlayan şirketlerin hissedarları, yetkilileri veya çalışanları olan gerçek kişiler anlamına gelmektedir.\n\n\nŞirketimiz ile arasında mevcut veya ileride kurulması muhtemel sözleşmeye istinaden ürünlerimizin bir kısmını veya tamamını belirli bir bölgede satmak ve diğer işlemleri gerçekleştirmek üzere iş birliği içerisinde bulunduğumuz şirketlerin hissedarları, yetkilileri veya çalışanları anlamına gelmektedir.\n\n\n3. Kişiler:          İşbu Politika ve Aurora Çalışan Kişisel Verilerinin Korunması ve İşlenmesi Politikası dışındaki 3’üncü kişiler anlamına gelmektedir.\n\n\n ',
            style: TextStyle(color: Colors.black, fontSize: 11),
          ),
          SizedBox(height: 25),
          Center(
            child: Text(
              'EK 3 - Kişisel Veri İşleme Amaçları\n',
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
          ),
          SizedBox(height: 10),
          Center(
            child: Text(
              'Şirketimizin insan kaynakları politikalarının ve süreçlerinin planlanması ve/veya icra edilmesi\n',
              style: TextStyle(color: Colors.black, fontSize: 12),
            ),
          ),
          SizedBox(height: 15),
          Text(
            'Çalışanların işe başlama ve /veya özlük süreçlerinin planlanması ve/veya yürütülmesi\n\nÇalışan adaylarının başvuru, seçme ve değerlendirme süreçlerinin planlaması ve/veya yürütülmesi\n\nÇalışan adayı ve/veya öğrenci ve/veya stajyer yerleştirilmesi için gerekli iç/dış iletişim aktivitelerinin planlanması ve/veya icrası\n\nPersonel temini faaliyetlerinde referans ve/veya istihbarat aktivitelerinin planlanması ve/veya icrası\n\nÇalışan bilgi/belge taleplerinin karşılanması faaliyetlerinin planlanması ve/veya icrası\n\nŞirket içi oryantasyon aktivitelerinin planlanması ve/veya icrası\n\nPersonel atama/terfi süreçlerinin planlanması ve/veya icrası\n\nYetenek/kariyer gelişimi faaliyetlerinin planlanması ve/veya icrası\n\nİş sağlığı ve/veya güvenliği çerçevesinde gerçekleştirilmesi gereken faaliyetlerin planlanması ve/veya icrası\n\nÇalışanların performans/yetenek değerlendirme süreçlerinin planlanması ve/veya icrası\n\nŞirket içi/dışı eğitim faaliyetlerinin planlanması ve/veya icrası\n\nÇalışanlara yönelik yan haklar ve/veya menfaatlerin planlanması ve/veya icrası\n\nÇalışan memnuniyeti ve/veya bağlılığı süreçlerinin planlanması ve/veya icrası\n\nÇalışanların iş süreçlerinin iyileştirilmesine ve/veya çalışan verimliliğinin arttırılmasına yönelik önerilerin alınması ve değerlendirilmesi süreçlerinin planlanması ve/veya icrası\n\nÇalışanlara yönelik kurumsal iletişim ve/veya çalışanların katılım sağladığı kurumsal sosyal sorumluluk ve/veya sivil toplum kuruluşları faaliyetlerinin planlanması ve/veya icrası\n\nÇalışanların yurt içi / yurt dışı seyahatlerinin (etkinlik)\n\nÇalışanların ücretlerinin planlanması ve/veya icrası\n\nÇalışanlara teşvik ve ödüllendirme hizmetlerinin sunulmasına yönelik süreçlerin planlanması ve/veya icrası\n\nİşe giriş, atama, terfi, özel günler ve/veya çıkış hallerinde Şirket içi bilgilendirme duyurularının yapılması\n\nÇalışanlar için iş akdi ve/veya mevzuattan kaynaklı yükümlülüklerin yerine getirilmesi',
            style: TextStyle(color: Colors.black, fontSize: 10),
          ),
          SizedBox(height: 15),
          Center(
            child: Text(
              'Şirketimizin ve Şirketimizle iş ilişkisi içerisinde olan ilgili kişilerin hukuki ve teknik güvenliğinin temini faaliyetlerinin planlanması ve/veya icrası\n',
              style: TextStyle(color: Colors.black, fontSize: 12),
            ),
          ),
          SizedBox(height: 15),
          Text(
            'Şirket faaliyetlerinin Şirket prosedürleri ve/veya ilgili mevzuata uygun olarak yürütülmesinin temini için gerekli operasyonel faaliyetlerinin planlanması ve/veya icrası\n\nŞirketler ve ortaklık hukuku işlemlerinin gerçekleştirilmesi faaliyetlerinin planlanması ve/veya icrası\n\nAVM güvenlik politikalarına ve prosedürlerine uyumluluk için gerekli faaliyetlerin planlanması ve/veya icrası\n\nHukuk işlerinin takibi\n\nResmi kurum ve/veya kuruşlara mevzuattan kaynaklı yükümlülükler kapsamında bilgi verilmesi, talep edilen bilgi ve belgelerin sunulması ve/veya yanıtların kayıt altına alınması\n\nVerilerin doğru ve/veya güncel olmasının sağlanması\n\nŞirket operasyonlarının güvenliğinin temini\n\nBilgi güvenliği süreçlerinin planlanması, denetimi ve/veya icrası\n\nBilgi teknolojileri alt yapısının oluşturulması ve/veya yönetilmesi\n\nŞirketimizin yasal uyumluluk faaliyetlerinin planlanması ve/veya icrası\n\nKimlik doğrulama faaliyetlerinin planlanması ve/veya icrası\n\nŞirketimizin iç/dış denetim, teftiş ve/veya kontrol faaliyetlerinin planlanması ve/veya icrası\n\nSuistimal vakalarının önlenmesi, tespiti, soruşturulması ve/veya sonuçlandırılmasına ilişkin faaliyetlerin planlanması ve/veya icrası\n\nSözleşme süreçlerinin ve/veya hukuki taleplerin takibi\n\nŞirket demirbaşlarının ve/veya kaynaklarının güvenliğinin temini\n\nAcil durum ve/veya olay yönetimi süreçlerinin planlanması ve/veya icrası\n\nŞirket yerleşkeleri ve/veya tesislerinin güvenliğinin temini\n\nZiyaretçi kayıtlarının oluşturulması ve/veya takibi\n\nŞebeke (network) ağı takibi ve yönetimi faaliyetlerinin planlanması ve/veya icrası\n\n',
            style: TextStyle(color: Colors.black, fontSize: 10),
          ),
          SizedBox(height: 15),
          Center(
            child: Text(
              'Şirket tarafından ve/veya Şirketimiz nam ve hesabına sunulan ürün ve hizmetlerin ilgili kişilerin beğeni, kullanım alışkanlıkları ve ihtiyaçlarına göre özelleştirilerek ilgili kişilere önerilmesi ve tanıtılması için gerekli olan aktivitelerin planlanması ve/veya icrası\n',
              style: TextStyle(color: Colors.black, fontSize: 12),
            ),
          ),
          SizedBox(height: 15),
          Text(
            'Müşteri memnuniyeti ve/veya tecrübesine yönelik aktivitelerin planlanması ve/veya icrası\n\nKampanya ve/veya promosyon ve/veya tanıtım süreçlerinin planlanması ve/veya icrası\n\nPazarlama faaliyetlerine konu yapılacak kişilerin tüketici davranışı kriterleri doğrultusunda tespiti ve/veya değerlendirilmesi\n\nKişiye özel pazarlama (segmentasyon, profilleme vb.) ve/veya tanıtım aktivitelerinin tasarlanması ve/veya icrası\n\nDijital ve/veya diğer mecralarda reklam ve/veya tanıtım ve/veya pazarlama aktivitelerinin tasarlanması ve/veya icrası\n\nDijital ve/veya diğer mecralarda müşteri kazanım ve/veya mevcut müşterilerde değer yaratımı üzerine geliştirilecek aktivitelerin tasarlanması ve/veya icrası\n\nPazarlama amacıyla veri analitiği ve/veya veri zenginleştirme çalışmalarının planlanması ve/veya icrası\n\nŞirketimizce sunulan diğer ürünlerle ilgili çapraz satış aktivitelerinin planlanması ve/veya icrası\n\nÜrün ve hizmetlerin satış ve/veya pazarlaması için pazar araştırması faaliyetlerinin planlanması ve/veya icrası\n\nŞirketimizin sunduğu ürün ve/veya hizmetlere bağlılık oluşturulması ve/veya arttırılması süreçlerinin planlanması ve/veya icrası\n\nKampanya performanslarının ölçümü ve raporlanması faaliyetlerinin planlanması ve/veya icrası\n\nÜrün ve/veya hizmetlerin pazarlama süreçlerinin planlanması ve/veya icrası\n\nÇekiliş/yarışma aktivitelerinin planlanması ve/veya icrası\n\nŞirketimiz tarafından gerçekleştirilen anket çalışmalarına ilişkin faaliyetlerin planlanması ve/veya icrası\n',
            style: TextStyle(color: Colors.black, fontSize: 10),
          ),
          Center(
            child: Text(
              'Şirketimiz tarafından ve/veya Şirketimiz nam ve hesabına sunulan ürün ve/veya hizmetlerden ilgili kişileri faydalandırmak için gerekli çalışmaların yapılması ve ilgili iş süreçlerinin yürütülmesi\n',
              style: TextStyle(color: Colors.black, fontSize: 12),
            ),
          ),
          SizedBox(height: 15),
          Text(
            'Ürün ve/veya hizmetlere başvuru ve/veya satış süreçlerinin oluşturulması ve/veya takibi\n\nSatış sonrası destek (tamir, bakım, onarım vb.) faaliyetlerinin planlanması ve/veya icrası\n\nMüşteri ilişkileri yönetimi süreçlerinin planlanması ve/veya icrası\n\nSanal pos/nakit tahsilat işlemlerinin planlanması ve/veya icrası\n\nÜrünlerin teslimatına ilişkin faaliyetlerin planlanması ve/veya icrası\n\nDijital ve/veya diğer mecralarda toplanan müşteri talep ve/veya şikayetlerinin değerlendirilmesi\n\nSadakat programlarına üyelik oluşturulması\n\nÜrünlerin/hizmetlerin ödeme işlemlerinin gerçekleştirilmesi ve/veya takibi\n\nFatura tanzimi, doğrulama ve/veya iptali işlemlerine ilişkin faaliyetlerin planlanması ve/veya icrası\n\nÜrünlerin iadesine/yenilenmesine ilişkin faaliyetlerin planlanması ve/veya icrası\n',
            style: TextStyle(color: Colors.black, fontSize: 10),
          ),
          SizedBox(height: 15),
          Center(
            child: Text(
              'Şirketimiz tarafından yürütülen ticari ve/veya operasyonel faaliyetlerin gerçekleştirilmesi için ilgili iş birimlerimiz tarafından gerekli çalışmaların yapılması ve buna bağlı iş süreçlerinin yürütülmesi\n',
              style: TextStyle(color: Colors.black, fontSize: 12),
            ),
          ),
          SizedBox(height: 15),
          Text(
            'Finans ve/veya muhasebe işlerinin takibi\n\nİş faaliyetlerinin etkinlik/verimlilik ve/veya yerindelik analizlerinin gerçekleştirilmesi faaliyetlerinin planlanması ve/veya icrası\n\nİş faaliyetlerinin etkinlik/verimlilik ve/veya yerindelik analizlerinin gerçekleştirilmesi faaliyetlerinin planlanması ve/veya icrası\n\nKurumsal yönetim faaliyetlerinin planlanması ve/veya icrası\n\nİş sürekliliğinin sağlanması faaliyetlerinin planlanması ve/veya icrası\n\nİş sürekliliğinin sağlanması faaliyetlerinin planlanması ve/veya icrası\n\nŞirketimiz ürünlerinin stok ve/veya sevkiyat işlemlerinin planlanması ve/veya icrası\n\nSatın alma süreçlerinin planlanması ve/veya icrası\n\nİş faaliyetlerinin planlanması ve/veya icrası\n\nTedarik zinciri yönetimi süreçlerinin planlanması ve/veya icrası\n\nOperasyon ve/veya verimlilik süreçlerinin planlanması ve/veya icrası\n\nÇalışanlarımızın ve Şirket dışındaki kişilerin bilgiye erişim yetkisinin tanımlanması ve/veya denetimi\n\nŞirketimizle iş ilişkisi içerisindeki 3. kişi şahıs çalışanlarının iş takibinin sağlanması faaliyetlerinin planlanması ve/veya icrası\n\nİş ortağı/tedarikçi çalışanlarına/yetkililerine/hissedarlarına yönelik memnuniyet ve bağlılık faaliyetlerinin planlanması ve/veya icrası\n\nŞirket içi / dışı raporlama faaliyetlerinin planlanması ve/veya icrası\n\nMimari projelerin / mağaza açılışlarının planlanması ve/veya icrası\n',
            style: TextStyle(color: Colors.black, fontSize: 10),
          ),
          SizedBox(height: 15),
          Center(
            child: Text(
              'Şirketimizin ticari ve/veya iş stratejilerinin planlanması ve/veya icrası\n',
              style: TextStyle(color: Colors.black, fontSize: 12),
            ),
          ),
          SizedBox(height: 15),
          Text(
            'İş ortakları ve/veya tedarikçilerle olan ilişkilerin yönetimi\n\nStratejik planlama faaliyetlerinin planlanması ve/veya icrası\n\nBütçe çalışmalarının yapılması ve/veya icrası\n\nŞirketin finansal risk süreçlerinin planlanması ve/veya icrası\n\nPotansiyel iş ortağı/tedarikçi seçimi için risk değerlendirme faaliyetlerinin ve/veya fizibilite çalışmalarının planlanması ve/veya icrası\n\n',
            style: TextStyle(color: Colors.black, fontSize: 10),
          ),
          SizedBox(height: 25),
          Center(
            child: Text(
              'EK 4 - Kişisel Veri Kategorileri\n',
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
          ),
          SizedBox(height: 15),
          Text(
            'Kimlik Bilgisi:           Kimliği belirli veya belirlenebilir bir gerçek kişiye ait olduğu açık olan ehliyet, nüfus cüzdanı, pasaport, mesleki kimlikler ve benzeri dokümanlarda yer alan tüm bilgiler anlamına gelmektedir.\n\nİletişim Bilgisi:          Kimliği belirli veya belirlenebilir bir gerçek kişiye ait olduğu açık olan telefon numarası, adres, e-posta ve benzeri iletişim bilgileri anlamına gelmektedir.\n\nFinansal Bilgi:           Kimliği belirli veya belirlenebilir bir gerçek kişiye ait olduğu açık olan, kısmen veya tamamen otomatik şekilde veya veri kayıt sisteminin bir parçası olarak otomatik olmayan şekilde işlenen, her türlü finansal sonucu gösteren bilgi, belge ve kayıtlara ilişkin işlenen kişisel veriler anlamına gelmektedir.\n\nMüşteri Bilgisi:           Kimliği belirli veya belirlenebilir bir gerçek kişiye ait olduğu açık olan, ticari faaliyetlerimizin gerçekleştirilmesi esnasında müşteriye ilişkin elde edilen veriler anlamına gelmektedir.\n\nMüşteri İşlem Bilgisi:           Kimliği belirli veya belirlenebilir bir gerçek kişiye ait olduğu açık olan, ürün ve hizmetlerimizin kullanımına yönelik kayıtlar ile müşterimizin ürün ve hizmetlerimize ilişkin kullanımına yönelik talimatları ve talepleri gibi bilgiler anlamına gelmektedir.\n\nİşlem Güvenliği Bilgisi:           Kimliği belirli veya belirlenebilir bir gerçek kişiye ait olduğu açık olan, Şirketimiz ticari faaliyetleri yürütülürken, Şirketimizin teknik, idari, hukuki ve ticari güvenliğini sağlamak için işlenen kişisel veriler anlamına gelmektedir.\n\nRisk Yönetimi Bilgisi:           Kimliği belirli veya belirlenebilir bir gerçek kişiye ait olduğu açık olan, Şirketimiz politikaları ve mevzuatsal yükümlülükler gereği risklerini minimize edebilmek adına işlenen kişisel veriler anlamına gelmektedir.\n\nFiziksel Mekan Güvenlik Bilgisi:           Kimliği belirli veya belirlenebilir bir gerçek kişiye ait olduğu açık olan, fiziksel mekana girişte, fiziksel mekanın içerisinde kalış sırasında alınan kayıtlar ve belgelere ilişkin kişisel veriler anlamına gelmektedir.\n\nDenetim ve Teftiş Bilgisi:           Kimliği belirli veya belirlenebilir bir gerçek kişiye ait olduğu açık olan, Şirketimizin kanuni yükümlülükleri ve Şirket politikalarına uyum ve denetim kapsamında işlenen kişisel veriler anlamına gelmektedir.\n\nHukuki İşlem ve Uyum Bilgisi:          Kimliği belirli veya belirlenebilir bir gerçek kişiye ait olduğu açık olan, hukuki alacak ve haklarımızın tespiti, takibi ve borçlarımızın ifası ile kanuni yükümlülüklerimiz ve Şirketimizin politikalarına uyum kapsamında işlenen kişisel veriler anlamına gelmektedir.\n\nİtibar Yönetimi Bilgisi:           Kimliği belirli veya belirlenebilir bir gerçek kişiye ait olduğu açık olan, Şirketimizin ticari itibarını korumak maksatlı toplanan bilgiler ve buna ilişkin oluşturulan değerlendirme raporları ile alınan aksiyonlarla ilgili bilgiler anlamına gelmektedir.\n\nTalep/Şikayet Yönetimi Bilgisi:           Kimliği belirli veya belirlenebilir bir gerçek kişiye ait olduğu açık olan, Şirketimize yöneltilmiş olan her türlü talep ve/veya şikayetin alınması ve değerlendirilmesine ilişkin kişisel veriler anlamına gelmektedir.\n\nAile Bireyleri ve Yakın Bilgisi:           Kimliği belirli veya belirlenebilir bir gerçek kişiye ait olduğu açık olan, müşterilerimizin veya çalışanlarımızın aile bireyleri ve yakınları hakkındaki bilgiler anlamına gelmektedir\n\nGörsel ve İşitsel Veri:           Kimliği belirli veya belirlenebilir bir gerçek kişiye ait olduğu açık olan fotoğraf-video vb. görsel veya işitsel niteliğe haiz veriler anlamına gelmektedir.\n\nPazarlama Bilgisi:           Kimliği belirli veya belirlenebilir bir gerçek kişiye ait olduğu açık olan, ürün ve hizmetlerimizin kişisel veri sahibinin kullanım alışkanlıkları, beğenisi ve ihtiyaçları doğrultusunda özelleştirilerek pazarlamasının yapılmasına yönelik işlenen kişisel veriler ve bu işleme sonuçları neticesinde yaratılan rapor ve değerlendirmeler anlamına gelmektedir.\n\nAraç Bilgisi:           Kimliği belirli veya belirlenebilir bir gerçek kişiye ait olduğu açık olan, veri sahibi ile ilişkilendirilen araçlar ile ilgili bilgiler anlamına gelmektedir.\n\nÇalışan Adayı Bilgisi:          Şirketimize herhangi bir yolla iş başvurusunda bulunmuş ya da çalışan ve/veya stajyer adaylarımızın özgeçmiş bilgileri anlamına gelmektedir.\n\nÇalışan Bilgisi:            Kimliği belirli veya belirlenebilir bir gerçek kişiye ait olduğu açık olan çalışanlarımızın ve/veya iş birliği içinde olduğumuz firma çalışanlarının özlük haklarının ve dosyalarının oluşturulmasına temel olacak bilgiler anlamına gelmektedir.\n\nÇalışan İşlem Bilgisi:           Kimliği belirli veya belirlenebilir bir gerçek kişiye ait olduğu açık olan, çalışanlarımızın ve/veya iş ve işlemlerine yönelik kişisel veriler anlamına gelmektedir.\n\nÇalışan Performans ve Kariyer Gelişim Bilgisi:           Kimliği belirli veya belirlenebilir bir gerçek kişiye ait olduğu açık olan çalışanlarımızı performanslarının ölçülmesi ile kariyer gelişimlerinin Şirketimizin insan kaynakları politika ve prosedürleri kapsamında planlanması ve yürütülmesi amacıyla işlenen kişisel veriler anlamına gelmektedir.\n\nYan Hak ve Menfaatler Bilgisi:           Kimliği belirli veya belirlenebilir bir gerçek kişiye ait olduğu açık olan, çalışanlarımıza sunduğumuz ve sunacağımız yan-haklar ve menfaatlerin planlanması, bunlara hak kazanılması ile ilgili objektif kriterlerin belirlenmesi ve bunları hak edişlerin takibi için işlenen kişisel veriler anlamına gelmektedir.\n\nSigorta Bilgisi:           Kimliği belirli veya belirlenebilir bir gerçek kişiye ait olduğu açık olan, Şirketimizin çalışanları lehine sağlamış olduğu sigortalara ilişkin kişisel veriler anlamına gelmektedir.\n\nÖzel Nitelikli Kişisel Veri:           Kimliği belirli veya belirlenebilir bir gerçek kişiye ait olduğu açık olan, kişilerin ırkı, etnik kökeni, siyasi düşüncesi, felsefi inancı, dini, mezhebi veya diğer inançları, kılık ve kıyafeti, dernek, vakıf ya da sendika üyeliği, sağlığı, cinsel hayatı, ceza mahkûmiyeti ve güvenlik tedbirleriyle ilgili verileri ile biyometrik ve genetik verileri anlamına gelmektedir.\n',
            style: TextStyle(color: Colors.black, fontSize: 11),
          ),
          SizedBox(height: 25),
          Center(
            child: Text(
              'EK 5 - Kişisel Verilerin Aktarıldığı Üçüncü Kişi Kategorileri\n',
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
          ),
          SizedBox(height: 15),
          Text(
            'Kanunen Yetkili Kamu Kurumu:           Hukuken Şirketimizden bilgi ve belge almaya yetkili kamu kurum ve kuruluşları anlamına gelmektedir.\n\nKanunen Yetkili Özel Kurum:           Kanunen Yetkili Özel Kurum\n\nİştirak:           Şirketimizin iştiraki tüzel kişiler anlamına gelmektedir.\n\nTedarikçiler:           Şirket’ten aldığı talimatlar doğrultusunda ve Şirketimiz ile arasındaki sözleşmeye istinaden Şirketimizin ticari faaliyetlerini sürdürmesine yönelik mal veya hizmet sunan taraflar anlamına gelmektedir.\n',
            style: TextStyle(color: Colors.black, fontSize: 11),
          ),
        ],
      ),
    );
  }
}
