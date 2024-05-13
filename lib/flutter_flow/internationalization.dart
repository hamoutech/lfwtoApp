import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['fr', 'en', 'ar'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? frText = '',
    String? enText = '',
    String? arText = '',
  }) =>
      [frText, enText, arText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Test1
  {
    'j1vhpqxu': {
      'fr': 'Home',
      'ar': 'بيت',
      'en': 'Home',
    },
  },
  // articles
  {
    'xd3cbkk9': {
      'fr': 'ARTICLES ',
      'ar': 'مقالات معلوماتية',
      'en': 'INFORMATION ARTICLES',
    },
    'j1zr0xu1': {
      'fr': 'Home',
      'ar': 'بيت',
      'en': 'Home',
    },
  },
  // calendrier
  {
    '0oha72q8': {
      'fr': 'HONNEUR',
      'ar': 'شرف',
      'en': 'HONOR',
    },
    'jsny2mhm': {
      'fr': 'PRE-HONNEUR',
      'ar': 'ما قبل الشرف',
      'en': 'PRE-HONOR',
    },
    'htdp08eb': {
      'fr': 'JEUNES',
      'ar': 'شباب',
      'en': 'YOUTH',
    },
    'l31u3f0e': {
      'fr': 'ÉCOLES',
      'ar': 'المدارس',
      'en': 'SCHOOLS',
    },
    'oegpahzq': {
      'fr': 'HONNEUR',
      'ar': 'شرف',
      'en': 'HONOR',
    },
    'y5ga1zz3': {
      'fr': 'GROUPE 01',
      'ar': 'المجموعة 01',
      'en': 'GROUP 01',
    },
    'il44yupj': {
      'fr': 'GROUPE 02',
      'ar': 'المجموعة 02',
      'en': 'GROUP 02',
    },
    '127dqbx2': {
      'fr': 'GROUPE 03',
      'ar': 'المجموعة 03',
      'en': 'GROUP 03',
    },
    'csu6qkps': {
      'fr': 'GROUPE 04',
      'ar': 'المجموعة 04',
      'en': 'GROUP 04',
    },
    'hbgl8oap': {
      'fr': 'GROUPE 05',
      'ar': 'المجموعة 05',
      'en': 'GROUP 05',
    },
    'xorx7ajy': {
      'fr': 'GROUPE 06',
      'ar': 'المجموعة 06',
      'en': 'GROUP 06',
    },
    'm1d9syn0': {
      'fr': 'GROUPE 01',
      'ar': 'المجموعة 01',
      'en': 'GROUP 01',
    },
    'ua3gdxdt': {
      'fr': 'GROUPE 01',
      'ar': 'المجموعة 01',
      'en': 'GROUP 01',
    },
    'y1c7iu2n': {
      'fr': 'GROUPE 02',
      'ar': 'المجموعة 02',
      'en': 'GROUP 02',
    },
    'vnnq71e1': {
      'fr': 'GROUPE 03',
      'ar': 'المجموعة 03',
      'en': 'GROUP 03',
    },
    'mxtiv5k4': {
      'fr': 'GROUPE 04',
      'ar': 'المجموعة 04',
      'en': 'GROUP 04',
    },
    'hi1p1oyw': {
      'fr': 'GROUPE 01',
      'ar': 'المجموعة 01',
      'en': 'GROUP 01',
    },
    'qj6z5phs': {
      'fr': 'SENIOR',
      'ar': 'كبير',
      'en': 'SENIOR',
    },
    'zqixr9df': {
      'fr': 'U19',
      'ar': 'تحت 19',
      'en': 'U19',
    },
    'rhxfz64y': {
      'fr': 'U17',
      'ar': 'تحت 17',
      'en': 'U17',
    },
    'x7osa5ts': {
      'fr': 'U15',
      'ar': 'تحت 15',
      'en': 'U15',
    },
    'c4szssez': {
      'fr': 'U13',
      'ar': 'تحت 13',
      'en': 'U13',
    },
    '72m8qzjo': {
      'fr': 'SENIOR',
      'ar': 'كبير',
      'en': 'SENIOR',
    },
    '8r28gqxh': {
      'fr': 'SENIOR',
      'ar': 'كبير',
      'en': 'SENIOR',
    },
    '1ygvtw7c': {
      'fr': 'U19',
      'ar': 'تحت 19',
      'en': 'U19',
    },
    'awufy06d': {
      'fr': 'U17',
      'ar': 'تحت 17',
      'en': 'U17',
    },
    '6timfmht': {
      'fr': 'U15',
      'ar': 'تحت 15',
      'en': 'U15',
    },
    'jy91jfmj': {
      'fr': 'U13',
      'ar': 'تحت 13',
      'en': 'U13',
    },
    'as0xtg8c': {
      'fr': 'SENIOR',
      'ar': 'كبير',
      'en': 'SENIOR',
    },
    'u1k8beek': {
      'fr': 'U19',
      'ar': 'تحت 19',
      'en': 'U19',
    },
    'j2o9ytkx': {
      'fr': 'U17',
      'ar': 'تحت 17',
      'en': 'U17',
    },
    'a6kbkoj4': {
      'fr': 'U15',
      'ar': 'تحت 15',
      'en': 'U15',
    },
    'ojnjaz3t': {
      'fr': 'U13',
      'ar': 'تحت 13',
      'en': 'U13',
    },
    'mwmeyb8t': {
      'fr': 'U19',
      'ar': 'تحت 19',
      'en': 'U19',
    },
    'p1jkpjbk': {
      'fr': 'CALENDRIER',
      'ar': 'تقويم',
      'en': 'CALENDAR',
    },
    '2vabekls': {
      'fr': 'Home',
      'ar': 'بيت',
      'en': 'Home',
    },
  },
  // championnat
  {
    'a2wv7v3m': {
      'fr': 'CLASSEMENT',
      'ar': 'تصنيف',
      'en': 'RANKING',
    },
    'u7bbl85o': {
      'fr': 'RESULTATS',
      'ar': 'نتائج',
      'en': 'RESULTS',
    },
    'ckws86yr': {
      'fr': 'coupe de la wilaya/ligue',
      'ar': 'كأس الولاية / الدوري',
      'en': 'wilaya cup/league',
    },
    '92gsb2sm': {
      'fr': 'calendrier',
      'ar': 'تقويم',
      'en': 'calendar',
    },
    'qgnkn8d1': {
      'fr': 'CHAMPIONNAT',
      'ar': 'بطولة',
      'en': 'CHAMPIONSHIP',
    },
    'i6mpxn3d': {
      'fr': 'Home',
      'ar': 'بيت',
      'en': 'Home',
    },
  },
  // coupe
  {
    'buqnelnd': {
      'fr': 'equipe a',
      'ar': 'الفريق لديه',
      'en': 'team has',
    },
    'qk3iib25': {
      'fr': 'equipe a',
      'ar': 'الفريق لديه',
      'en': 'team has',
    },
    '322cjbwr': {
      'fr': '2:1',
      'ar': '2:1',
      'en': '2:1',
    },
    'jomzc2nz': {
      'fr': '01/05/2024',
      'ar': '01/05/2024',
      'en': '01/05/2024',
    },
    'cresjh43': {
      'fr': '16h:00',
      'ar': '4:00 م.',
      'en': '4:00 p.m.',
    },
    't9jf7etp': {
      'fr': 'equipe a',
      'ar': 'الفريق لديه',
      'en': 'team has',
    },
    'yah6ye7v': {
      'fr': 'equipe a',
      'ar': 'الفريق لديه',
      'en': 'team has',
    },
    'hcwtr34z': {
      'fr': '2:1',
      'ar': '2:1',
      'en': '2:1',
    },
    '2ec9znmf': {
      'fr': '01/05/2024',
      'ar': '01/05/2024',
      'en': '01/05/2024',
    },
    'af57sqyv': {
      'fr': '16h:00',
      'ar': '4:00 م.',
      'en': '4:00 p.m.',
    },
    'we8d53js': {
      'fr': 'equipe a',
      'ar': 'الفريق لديه',
      'en': 'team has',
    },
    '6ek0j0jr': {
      'fr': 'equipe a',
      'ar': 'الفريق لديه',
      'en': 'team has',
    },
    'l21vka2o': {
      'fr': '2:1',
      'ar': '2:1',
      'en': '2:1',
    },
    'e2lelcg6': {
      'fr': '01/05/2024',
      'ar': '01/05/2024',
      'en': '01/05/2024',
    },
    'cfp2motb': {
      'fr': '16h:00',
      'ar': '4:00 م.',
      'en': '4:00 p.m.',
    },
    'w1ykm99l': {
      'fr': 'equipe a',
      'ar': 'الفريق لديه',
      'en': 'team has',
    },
    'vy79pivw': {
      'fr': 'equipe a',
      'ar': 'الفريق لديه',
      'en': 'team has',
    },
    'wcsdmci9': {
      'fr': '2:1',
      'ar': '2:1',
      'en': '2:1',
    },
    'h265nkbl': {
      'fr': '01/05/2024',
      'ar': '01/05/2024',
      'en': '01/05/2024',
    },
    '54knq6se': {
      'fr': '16h:00',
      'ar': '4:00 م.',
      'en': '4:00 p.m.',
    },
    'c9omrxn2': {
      'fr': 'equipe a',
      'ar': 'الفريق لديه',
      'en': 'team has',
    },
    'vhmoqz70': {
      'fr': 'equipe a',
      'ar': 'الفريق لديه',
      'en': 'team has',
    },
    '6vhmllog': {
      'fr': '2:1',
      'ar': '2:1',
      'en': '2:1',
    },
    'mmj3gh0v': {
      'fr': '01/05/2024',
      'ar': '01/05/2024',
      'en': '01/05/2024',
    },
    'x2pssqj7': {
      'fr': '16h:00',
      'ar': '4:00 م.',
      'en': '4:00 p.m.',
    },
    'dga2y6bs': {
      'fr': 'equipe a',
      'ar': 'الفريق لديه',
      'en': 'team has',
    },
    '5hkv93o8': {
      'fr': 'equipe a',
      'ar': 'الفريق لديه',
      'en': 'team has',
    },
    'k49q8we7': {
      'fr': '2:1',
      'ar': '2:1',
      'en': '2:1',
    },
    'gwjmex3i': {
      'fr': '01/05/2024',
      'ar': '01/05/2024',
      'en': '01/05/2024',
    },
    'btb9y4om': {
      'fr': '16h:00',
      'ar': '4:00 م.',
      'en': '4:00 p.m.',
    },
    't3ts7vpw': {
      'fr': 'equipe a',
      'ar': 'الفريق لديه',
      'en': 'team has',
    },
    'jnhkxjqq': {
      'fr': 'equipe a',
      'ar': 'الفريق لديه',
      'en': 'team has',
    },
    'hv6xhx3s': {
      'fr': '2:1',
      'ar': '2:1',
      'en': '2:1',
    },
    'f2j7979j': {
      'fr': '01/05/2024',
      'ar': '01/05/2024',
      'en': '01/05/2024',
    },
    'uujsvkir': {
      'fr': '16h:00',
      'ar': '4:00 م.',
      'en': '4:00 p.m.',
    },
    '8liw1mn9': {
      'fr': 'equipe a',
      'ar': 'الفريق لديه',
      'en': 'team has',
    },
    'opxtq0g5': {
      'fr': 'equipe a',
      'ar': 'الفريق لديه',
      'en': 'team has',
    },
    'f6nkitla': {
      'fr': '2:1',
      'ar': '2:1',
      'en': '2:1',
    },
    '541056n9': {
      'fr': '01/05/2024',
      'ar': '01/05/2024',
      'en': '01/05/2024',
    },
    'rgw8v7n5': {
      'fr': '16h:00',
      'ar': '4:00 م.',
      'en': '4:00 p.m.',
    },
    'ak01ikh7': {
      'fr': 'equipe a',
      'ar': 'الفريق لديه',
      'en': 'team has',
    },
    'k9tuak5u': {
      'fr': 'equipe a',
      'ar': 'الفريق لديه',
      'en': 'team has',
    },
    'v4c60qp5': {
      'fr': '2:1',
      'ar': '2:1',
      'en': '2:1',
    },
    '300412zo': {
      'fr': '01/05/2024',
      'ar': '01/05/2024',
      'en': '01/05/2024',
    },
    'azyjxm65': {
      'fr': '16h:00',
      'ar': '4:00 م.',
      'en': '4:00 p.m.',
    },
    '79jbn67p': {
      'fr': 'equipe a',
      'ar': 'الفريق لديه',
      'en': 'team has',
    },
    'd65oh5u1': {
      'fr': 'equipe a',
      'ar': 'الفريق لديه',
      'en': 'team has',
    },
    'nkw9xu9j': {
      'fr': '2:1',
      'ar': '2:1',
      'en': '2:1',
    },
    '07j4yv9h': {
      'fr': '01/05/2024',
      'ar': '01/05/2024',
      'en': '01/05/2024',
    },
    'lakdjdfi': {
      'fr': '16h:00',
      'ar': '4:00 م.',
      'en': '4:00 p.m.',
    },
    'mhcbgths': {
      'fr': 'equipe a',
      'ar': 'الفريق لديه',
      'en': 'team has',
    },
    'kp8e0pdf': {
      'fr': 'equipe a',
      'ar': 'الفريق لديه',
      'en': 'team has',
    },
    'c3j8d06c': {
      'fr': '2:1',
      'ar': '2:1',
      'en': '2:1',
    },
    'zbvhs739': {
      'fr': '01/05/2024',
      'ar': '01/05/2024',
      'en': '01/05/2024',
    },
    'v7n7z8jm': {
      'fr': '16h:00',
      'ar': '4:00 م.',
      'en': '4:00 p.m.',
    },
    'rxqb5jzs': {
      'fr': 'equipe a',
      'ar': 'الفريق لديه',
      'en': 'team has',
    },
    'rhss8261': {
      'fr': 'equipe a',
      'ar': 'الفريق لديه',
      'en': 'team has',
    },
    'gptuidxu': {
      'fr': '2:1',
      'ar': '2:1',
      'en': '2:1',
    },
    '082m06nb': {
      'fr': '01/05/2024',
      'ar': '01/05/2024',
      'en': '01/05/2024',
    },
    '2jfsd7lr': {
      'fr': '16h:00',
      'ar': '4:00 م.',
      'en': '4:00 p.m.',
    },
    'vqy5o6hk': {
      'fr': 'equipe a',
      'ar': 'الفريق لديه',
      'en': 'team has',
    },
    'zxww8eu2': {
      'fr': 'equipe a',
      'ar': 'الفريق لديه',
      'en': 'team has',
    },
    '0b2oej2n': {
      'fr': '2:1',
      'ar': '2:1',
      'en': '2:1',
    },
    'pe06r1ou': {
      'fr': '01/05/2024',
      'ar': '01/05/2024',
      'en': '01/05/2024',
    },
    'piufgmrd': {
      'fr': '16h:00',
      'ar': '4:00 م.',
      'en': '4:00 p.m.',
    },
    '2xqqz0z7': {
      'fr': 'equipe a',
      'ar': 'الفريق لديه',
      'en': 'team has',
    },
    'ukc8haj2': {
      'fr': 'equipe a',
      'ar': 'الفريق لديه',
      'en': 'team has',
    },
    '5d71r9r1': {
      'fr': '2:1',
      'ar': '2:1',
      'en': '2:1',
    },
    '3jasjlxg': {
      'fr': '01/05/2024',
      'ar': '01/05/2024',
      'en': '01/05/2024',
    },
    'vgqks6r9': {
      'fr': '16h:00',
      'ar': '4:00 م.',
      'en': '4:00 p.m.',
    },
    'nj0nvhf5': {
      'fr': 'equipe a',
      'ar': 'الفريق لديه',
      'en': 'team has',
    },
    'de47xf6c': {
      'fr': 'equipe a',
      'ar': 'الفريق لديه',
      'en': 'team has',
    },
    '49xlvm70': {
      'fr': '2:1',
      'ar': '2:1',
      'en': '2:1',
    },
    'ubun31do': {
      'fr': '01/05/2024',
      'ar': '01/05/2024',
      'en': '01/05/2024',
    },
    'f5vuk93v': {
      'fr': '16h:00',
      'ar': '4:00 م.',
      'en': '4:00 p.m.',
    },
    '3p80vrrl': {
      'fr': 'COUPE',
      'ar': 'يقطع',
      'en': 'CUT',
    },
    '5wlqsnah': {
      'fr': 'Home',
      'ar': 'بيت',
      'en': 'Home',
    },
  },
  // homePage
  {
    'x2mvxdbk': {
      'fr': 'LIRE L\'ARTICLE',
      'ar': 'اقرأ المقال',
      'en': 'READ THE ARTICLE',
    },
    'kz94lj6z': {
      'fr': 'BULLETINS OFFICIELS',
      'ar': 'النشرات الرسمية',
      'en': 'OFFICIAL BULLETINS',
    },
    'qnkagg19': {
      'fr': 'VOIR PLUS',
      'ar': 'شاهد المزيد',
      'en': 'SEE MORE',
    },
    'ssjc1xoi': {
      'fr': 'BULLETINS OFFICIELS',
      'ar': 'النشرات الرسمية',
      'en': 'OFFICIAL BULLETINS',
    },
    'cwgquvf2': {
      'fr': 'PV DE DISCIPLINE',
      'ar': 'الانضباط الكهروضوئية',
      'en': 'DISCIPLINE PV',
    },
    'lucoglie': {
      'fr': 'VOIR PLUS',
      'ar': 'شاهد المزيد',
      'en': 'SEE MORE',
    },
    'kycbz3zb': {
      'fr': 'PV DISCIPLINE',
      'ar': 'الانضباط الكهروضوئية',
      'en': 'DISCIPLINE PV',
    },
    '09vgxybg': {
      'fr': 'DERNIÈRES NOUVELLES',
      'ar': 'أحدث الأخبار',
      'en': 'LATEST NEWS',
    },
    'l04j0amy': {
      'fr': 'LIRE L\'ARTICLE',
      'ar': 'اقرأ المقال',
      'en': 'READ THE ARTICLE',
    },
    'kc167ufe': {
      'fr': 'LIRE L\'ARTICLE',
      'ar': 'اقرأ المقال',
      'en': 'READ THE ARTICLE',
    },
    '2q06z2jl': {
      'fr': 'Voir plus',
      'ar': 'شاهد المزيد',
      'en': 'See more',
    },
    'rlkfzty5': {
      'fr': 'ACCUEIL',
      'ar': 'الشاشة الرئيسية',
      'en': 'HOMEPAGE',
    },
    's6w0d410': {
      'fr': 'Home',
      'ar': 'بيت',
      'en': 'Home',
    },
  },
  // langue
  {
    'd0p2jn8h': {
      'fr': 'LANGUE',
      'ar': 'لغة',
      'en': 'LANGUAGE',
    },
    '6vn47z69': {
      'fr': 'FRANÇAIS ',
      'ar': 'فرنسي',
      'en': 'FRENCH',
    },
    'wqxdnf2g': {
      'fr': 'LANGUE PAR DÉFAUT',
      'ar': 'اللغة الافتراضية',
      'en': 'DEFAULT LANGUAGE',
    },
    '37ay51e5': {
      'fr': 'ANGLAIS',
      'ar': 'إنجليزي',
      'en': 'ENGLISH',
    },
    '3cvq2zm4': {
      'fr': 'ENGLISH',
      'ar': 'إنجليزي',
      'en': 'ENGLISH',
    },
    '02l76jjk': {
      'fr': 'ARABE',
      'ar': 'عرب',
      'en': 'ARAB',
    },
    'ez4xd2ij': {
      'fr': 'العربية',
      'ar': 'العربية',
      'en': 'العربية',
    },
    'x445kkm6': {
      'fr': 'PARAMETRES',
      'ar': 'الإعدادات',
      'en': 'SETTINGS',
    },
    's5s2bm61': {
      'fr': 'Home',
      'ar': 'بيت',
      'en': 'Home',
    },
  },
  // ligue
  {
    'w0gvcg8z': {
      'fr': 'SECRÉTAIRE GÉNÉRAL',
      'ar': 'السكرتير العام',
      'en': 'GENERAL SECRETARY',
    },
    'm58iirye': {
      'fr': 'LARAB Sadek',
      'ar': 'لاراب صادق',
      'en': 'LARAB Sadek',
    },
    'db3irvhj': {
      'fr': 'PRÉSIDENT',
      'ar': 'رئيس',
      'en': 'PRESIDENT',
    },
    'p6k33utm': {
      'fr': 'NAIB Sid-al',
      'ar': 'NAIB سيد آل',
      'en': 'NAIB Sid-al',
    },
    'zarehbso': {
      'fr': 'DIRECTION ADMINISTRATIVE\nET FINANCES',
      'ar': 'التنظيم الإداري\nوالشؤون المالية',
      'en': 'ADMINISTRATIVE MANAGEMENT\nAND FINANCES',
    },
    'v3kx0gd4': {
      'fr': 'HACHOUR KHALED',
      'ar': 'حشور خالد',
      'en': 'HACHOUR KHALED',
    },
    'tanm3wjq': {
      'fr': 'STITI RAMDANE - OUAGUENOUNI.L',
      'ar': 'ستيتي رمضان - OUAGUENOUNI.L',
      'en': 'STITI RAMDANE - OUAGUENOUNI.L',
    },
    '3om2qoq0': {
      'fr': 'C.MEDICALE',
      'ar': 'ج.الطبية',
      'en': 'C.MEDICAL',
    },
    'ecqrnxzd': {
      'fr': 'ATMANI MED',
      'ar': 'أتماني ميد',
      'en': 'ATMANI MED',
    },
    'cq8tw4j0': {
      'fr': 'SEBTI MED-AREZKI',
      'ar': 'سبتي ميد أرزقي',
      'en': 'SEBTI MED-AREZKI',
    },
    'a9j9ywo5': {
      'fr': 'C.D',
      'ar': 'قرص مضغوط',
      'en': 'CD',
    },
    'squmkf4q': {
      'fr': 'KABI AISSA',
      'ar': 'كابي عيسى',
      'en': 'KABI AISSA',
    },
    'fsxmh4ch': {
      'fr': 'HACHEROUF ABDENOUR',
      'ar': 'حشوروف عبد النور',
      'en': 'HACHEROUF ABDENOUR',
    },
    'x69kw1af': {
      'fr': 'SAAD AMAR',
      'ar': 'سعد عمار',
      'en': 'SAAD AMAR',
    },
    '6eb8k5jj': {
      'fr': 'CHERGHUI AMAR',
      'ar': 'شرقوي عمار',
      'en': 'CHERGHUI AMAR',
    },
    'kg4z5pqf': {
      'fr': 'C.A.W',
      'ar': 'C.A.W.',
      'en': 'C.A.W.',
    },
    'bd45pdww': {
      'fr': 'ACHIR SLIMANE',
      'ar': 'أشير سليمان',
      'en': 'ACHIR SLIMANE',
    },
    'ildy53jo': {
      'fr': 'BELAID MADJID',
      'ar': 'بلعيد مجيد',
      'en': 'BELAID MADJID',
    },
    'vszm5kgz': {
      'fr': 'ZAIDAT BRAHIM',
      'ar': 'زيدات ابراهيم',
      'en': 'ZAIDAT BRAHIM',
    },
    '0gxdnjb4': {
      'fr': 'D.T.W',
      'ar': 'دي تي دبليو',
      'en': 'D.T.W.',
    },
    '5jc46wvt': {
      'fr': 'KARDI ALI',
      'ar': 'كاردي علي',
      'en': 'KARDI ALI',
    },
    'b68his0e': {
      'fr': 'KHERROUBI ISSAM',
      'ar': 'الخروبي عصام',
      'en': 'KHERROUBI ISSAM',
    },
    'armmy9s4': {
      'fr': 'MEFTAH RAHIM',
      'ar': 'مفتاح رحيم',
      'en': 'MEFTAH RAHIM',
    },
    'sdmumgo3': {
      'fr': 'SEDIKI THANINA',
      'ar': 'سيديكي ثانينا',
      'en': 'SEDIKI THANINA',
    },
    'xx68sr5m': {
      'fr': 'C.O.C',
      'ar': 'CO.C.',
      'en': 'C.O.C.',
    },
    '22awl3vo': {
      'fr': 'DJEBOURI MEHIEDINE',
      'ar': 'جيبوري محيي الدين',
      'en': 'DJEBOURI MEHIEDINE',
    },
    'dhh3929v': {
      'fr': 'TERRAH AHMED',
      'ar': 'تراح احمد',
      'en': 'TERRAH AHMED',
    },
    '152ddi9g': {
      'fr': 'ABASSENE SOFIANE',
      'ar': 'عباس سفيان',
      'en': 'ABASSENE SOFIANE',
    },
    'cv8jfe73': {
      'fr': 'C.LICENCES',
      'ar': 'ج. التراخيص',
      'en': 'C.LICENSES',
    },
    'o3acdcke': {
      'fr': 'LAHCENE SEDDIK',
      'ar': 'لحسن الصديق',
      'en': 'LAHCENE SEDDIK',
    },
    '5nkn4kkh': {
      'fr': 'Home',
      'ar': 'بيت',
      'en': 'Home',
    },
  },
  // matchDay
  {
    '5n8p23wx': {
      'fr': 'HONNEUR',
      'ar': 'شرف',
      'en': 'HONOR',
    },
    '92y0zn0y': {
      'fr': 'PRE-HONNEUR',
      'ar': 'ما قبل الشرف',
      'en': 'PRE-HONOR',
    },
    'lu68wkya': {
      'fr': 'JEUNES',
      'ar': 'شباب',
      'en': 'YOUTH',
    },
    '78ycit3q': {
      'fr': 'ÉCOLES',
      'ar': 'المدارس',
      'en': 'SCHOOLS',
    },
    '6se67o6l': {
      'fr': 'HONNEUR',
      'ar': 'شرف',
      'en': 'HONOR',
    },
    '6kqd3gy1': {
      'fr': 'LIVE',
      'ar': 'يعيش',
      'en': 'LIVE',
    },
    '9q98jtag': {
      'fr': 'COMMENTÉ',
      'ar': 'تم التعليق',
      'en': 'COMMENTED',
    },
    'dsvo6om6': {
      'fr': 'REGARDER',
      'ar': 'شاهد',
      'en': 'LOOK',
    },
    'roiergou': {
      'fr': '-',
      'ar': '-',
      'en': '-',
    },
    'lzfotgpv': {
      'fr': '-',
      'ar': '-',
      'en': '-',
    },
    'it9oelpz': {
      'fr': '-',
      'ar': '-',
      'en': '-',
    },
    '6huofq6r': {
      'fr': '-',
      'ar': '-',
      'en': '-',
    },
    'atr1bc1q': {
      'fr': 'MATCH DAY',
      'ar': 'يوم المباراة',
      'en': 'MATCH DAY',
    },
    'g3q5cy6n': {
      'fr': 'Home',
      'ar': 'بيت',
      'en': 'Home',
    },
  },
  // matchDayLive
  {
    'urpwdhhh': {
      'fr': 'web view',
      'ar': 'عرض الويب',
      'en': 'web view',
    },
    '9u8xgifm': {
      'fr': 'youtube',
      'ar': 'موقع YouTube',
      'en': 'Youtube',
    },
    'sdq2mob9': {
      'fr': 'MATCH DAY',
      'ar': 'يوم المباراة',
      'en': 'MATCH DAY',
    },
    'foql2axa': {
      'fr': 'Home',
      'ar': 'بيت',
      'en': 'Home',
    },
  },
  // notifications
  {
    '32xi0mlb': {
      'fr': 'NOTIFICATIONS',
      'ar': 'إشعارات',
      'en': 'NOTIFICATIONS',
    },
    'x5upls8z': {
      'fr': 'MATCHS ',
      'ar': 'اعواد الكبريت',
      'en': 'MATCHES',
    },
    'ehyng5mf': {
      'fr': 'compos,buts,resultats,resumes video',
      'ar': 'المؤلفات، الأهداف، النتائج، ملخصات الفيديو',
      'en': 'compositions, goals, results, video summaries',
    },
    'z91mser7': {
      'fr': 'l\'actu au quotidien',
      'ar': 'أخبار يومية',
      'en': 'daily news',
    },
    'bojoin0c': {
      'fr': 'compos,buts,resultats,resumes video',
      'ar': 'المؤلفات، الأهداف، النتائج، ملخصات الفيديو',
      'en': 'compositions, goals, results, video summaries',
    },
    '0fy4kjrr': {
      'fr': 'PARAMETRES',
      'ar': 'الإعدادات',
      'en': 'SETTINGS',
    },
    'd3g2yfgs': {
      'fr': 'Home',
      'ar': 'بيت',
      'en': 'Home',
    },
  },
  // parametres
  {
    '6rkp38e1': {
      'fr': 'NOTIFICATIONS',
      'ar': 'إشعارات',
      'en': 'NOTIFICATIONS',
    },
    'g8wot1zl': {
      'fr': 'ACTIVEES',
      'ar': 'مفعل',
      'en': 'ACTIVATED',
    },
    '60xc4m7d': {
      'fr': 'LANGUE',
      'ar': 'لغة',
      'en': 'LANGUAGE',
    },
    '062twi6w': {
      'fr': 'FRANÇAIS ',
      'ar': 'العربية',
      'en': 'ENGLISH',
    },
    'pqv3095m': {
      'fr': 'CONDITIONS GENERALES DE VENTE',
      'ar': 'الشروط العامة للبيع',
      'en': 'TERMS OF SALES',
    },
    'vk9yu1y0': {
      'fr': 'NOS PARTENAIRE OFFICIELS',
      'ar': 'شركاؤنا الرسميون',
      'en': 'OUR OFFICIAL PARTNERS',
    },
    'ipeb0yua': {
      'fr': 'PARAMETRES',
      'ar': 'الإعدادات',
      'en': 'SETTINGS',
    },
    'f4eoe2eh': {
      'fr': 'Home',
      'ar': 'بيت',
      'en': 'Home',
    },
  },
  // resultats
  {
    'xhumihqu': {
      'fr': 'HONNEUR',
      'ar': 'شرف',
      'en': 'HONOR',
    },
    'jkxk487l': {
      'fr': 'PRE-HONNEUR',
      'ar': 'ما قبل الشرف',
      'en': 'PRE-HONOR',
    },
    'e2vauotd': {
      'fr': 'JEUNES',
      'ar': 'شباب',
      'en': 'YOUTH',
    },
    '2fzf3hiy': {
      'fr': 'ÉCOLES',
      'ar': 'المدارس',
      'en': 'SCHOOLS',
    },
    'nnalyqej': {
      'fr': 'HONNEUR',
      'ar': 'شرف',
      'en': 'HONOR',
    },
    '5t3b5g73': {
      'fr': '1 ÉRE JOURNÉE',
      'ar': 'اليوم الأول',
      'en': '1ST DAY',
    },
    'g70tzpm2': {
      'fr': '1 ÉRE JOURNÉE',
      'ar': 'اليوم الأول',
      'en': '1ST DAY',
    },
    'oug44222': {
      'fr': '2 ÉME JOURNÉE',
      'ar': 'اليوم الثاني',
      'en': '2ND DAY',
    },
    's6p241m3': {
      'fr': '3 ÉME JOURNÉE',
      'ar': 'اليوم الثالث',
      'en': '3RD DAY',
    },
    'bqjpkxa9': {
      'fr': '4 ÉME JOURNÉE',
      'ar': 'اليوم الرابع',
      'en': '4TH DAY',
    },
    'ypo5z6wt': {
      'fr': '5 ÉME JOURNÉE',
      'ar': 'اليوم الخامس',
      'en': '5TH DAY',
    },
    'a6arj3yk': {
      'fr': '6 ÉME JOURNÉE',
      'ar': 'اليوم السادس',
      'en': '6TH DAY',
    },
    'fu2a0abh': {
      'fr': '7 ÉME JOURNÉE',
      'ar': 'اليوم السابع',
      'en': '7TH DAY',
    },
    'dhi7cbx7': {
      'fr': '8 ÉME JOURNÉE',
      'ar': 'اليوم الثامن',
      'en': '8TH DAY',
    },
    'zxid8ccb': {
      'fr': '9 ÉME JOURNÉE',
      'ar': 'اليوم التاسع',
      'en': '9TH DAY',
    },
    'oxlb2b4c': {
      'fr': '10 ÉME JOURNÉE',
      'ar': 'اليوم العاشر',
      'en': '10TH DAY',
    },
    '22nftvv6': {
      'fr': '11 ÉME JOURNÉE',
      'ar': 'اليوم الحادي عشر',
      'en': '11TH DAY',
    },
    '24uq3it3': {
      'fr': '12 ÉME JOURNÉE',
      'ar': 'اليوم الثاني عشر',
      'en': '12TH DAY',
    },
    'd2xd6abk': {
      'fr': '13 ÉME JOURNÉE',
      'ar': 'اليوم الثالث عشر',
      'en': '13TH DAY',
    },
    '6pvdurdk': {
      'fr': '14 ÉME JOURNÉE',
      'ar': 'اليوم الرابع عشر',
      'en': '14TH DAY',
    },
    'dzcsebps': {
      'fr': '15 ÉME JOURNÉE',
      'ar': 'اليوم الخامس عشر',
      'en': '15TH DAY',
    },
    'fwu8s38e': {
      'fr': '16 ÉME JOURNÉE',
      'ar': 'اليوم السادس عشر',
      'en': '16TH DAY',
    },
    'fx3kt57s': {
      'fr': '17 ÉME JOURNÉE',
      'ar': 'اليوم السابع عشر',
      'en': '17TH DAY',
    },
    'st4bolpr': {
      'fr': '18 ÉME JOURNÉE',
      'ar': 'اليوم الثامن عشر',
      'en': '18TH DAY',
    },
    'xma63vy7': {
      'fr': '19 ÉME JOURNÉE',
      'ar': 'اليوم التاسع عشر',
      'en': '19TH DAY',
    },
    'h665ej29': {
      'fr': '20 ÉME JOURNÉE',
      'ar': 'اليوم العشرين',
      'en': '20TH DAY',
    },
    'g9fy0vp2': {
      'fr': '22 ÉME JOURNÉE',
      'ar': 'اليوم الثاني والعشرون',
      'en': '22ND DAY',
    },
    'yuelee4d': {
      'fr': '23 ÉME JOURNÉE',
      'ar': 'اليوم الثالث والعشرون',
      'en': '23RD DAY',
    },
    'guqvoyik': {
      'fr': '24 ÉME JOURNÉE',
      'ar': 'اليوم الرابع والعشرون',
      'en': '24TH DAY',
    },
    'gobsu1qa': {
      'fr': 'JOURNÉE',
      'ar': 'النهار',
      'en': 'DAYTIME',
    },
    'pg2mok45': {
      'fr': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
      'en': 'Search for an item...',
    },
    'dqtf7jta': {
      'fr': 'SENIOR',
      'ar': 'كبير',
      'en': 'SENIOR',
    },
    '54ekhmgd': {
      'fr': '-',
      'ar': '-',
      'en': '-',
    },
    '5fg0hjut': {
      'fr': 'U19',
      'ar': 'تحت 19',
      'en': 'U19',
    },
    '2sgpixxk': {
      'fr': '-',
      'ar': '-',
      'en': '-',
    },
    'lqoc5wml': {
      'fr': 'U17',
      'ar': 'تحت 17',
      'en': 'U17',
    },
    's7zbhae8': {
      'fr': '-',
      'ar': '-',
      'en': '-',
    },
    'uxi16gf3': {
      'fr': 'U15',
      'ar': 'تحت 15',
      'en': 'U15',
    },
    '5471okf2': {
      'fr': '-',
      'ar': '-',
      'en': '-',
    },
    '4o8onim7': {
      'fr': 'RESULTATS DE LA SEMAINE',
      'ar': 'نتائج الأسبوع',
      'en': 'RESULTS OF THE WEEK',
    },
    'at5vw394': {
      'fr': 'Home',
      'ar': 'بيت',
      'en': 'Home',
    },
  },
  // pvDiscipline
  {
    'eeb5cr02': {
      'fr': 'PV DiSCIPLINE',
      'ar': 'الانضباط الكهروضوئي',
      'en': 'PV DiSCIPLINE',
    },
    '393b6i6p': {
      'fr': 'Home',
      'ar': 'بيت',
      'en': 'Home',
    },
  },
  // Bulletins
  {
    '8xkq4ocn': {
      'fr': 'BULLETIN OFFICIEL',
      'ar': 'النشرة الرسمية',
      'en': 'OFFICIAL BULLETIN',
    },
    'q11u1jp9': {
      'fr': 'Home',
      'ar': 'بيت',
      'en': 'Home',
    },
  },
  // beginpage
  {
    '8c2uyj9f': {
      'fr': 'Home',
      'ar': 'بيت',
      'en': 'Home',
    },
  },
  // partenaireOfficiels
  {
    '17sdbboq': {
      'fr': 'Demander a devenir partenaire',
      'ar': 'اطلب أن تصبح شريكا',
      'en': 'Ask to become a partner',
    },
    'yt2qjjqz': {
      'fr': 'PARTENAIRES OFFICIELS',
      'ar': 'الشركاء الرسميون',
      'en': 'OFFICIAL PARTNERS',
    },
    '0vf71xai': {
      'fr': 'Home',
      'ar': 'بيت',
      'en': 'Home',
    },
  },
  // beginpageloggedin
  {
    '0yllqyo1': {
      'fr': 'Home',
      'ar': 'بيت',
      'en': 'Home',
    },
  },
  // matchdayAds
  {
    '6orfn9w7': {
      'fr': 'Home',
      'ar': 'بيت',
      'en': 'Home',
    },
  },
  // championnatClassement
  {
    'bcfjav6v': {
      'fr': 'HONNEUR',
      'ar': 'شرف',
      'en': 'HONOR',
    },
    '66wjkoql': {
      'fr': 'PRE-HONNEUR',
      'ar': 'ما قبل الشرف',
      'en': 'PRE-HONOR',
    },
    'vcz6pf4e': {
      'fr': 'RÉGIONALE',
      'ar': 'إقليمي',
      'en': 'REGIONAL',
    },
    'b2fxjhpd': {
      'fr': 'JEUNES',
      'ar': 'شباب',
      'en': 'YOUTH',
    },
    '9irewynl': {
      'fr': 'ÉCOLES',
      'ar': 'المدارس',
      'en': 'SCHOOLS',
    },
    'im9awivw': {
      'fr': 'HONNEUR',
      'ar': 'شرف',
      'en': 'HONOR',
    },
    'dnjx2m52': {
      'fr': 'GROUPE 01',
      'ar': 'المجموعة 01',
      'en': 'GROUP 01',
    },
    '6nsh7yxx': {
      'fr': 'GROUPE 02',
      'ar': 'المجموعة 02',
      'en': 'GROUP 02',
    },
    'errpyox2': {
      'fr': 'GROUPE 03',
      'ar': 'المجموعة 03',
      'en': 'GROUP 03',
    },
    'qq5a9lyb': {
      'fr': 'GROUPE 04',
      'ar': 'المجموعة 04',
      'en': 'GROUP 04',
    },
    '1a8ewan6': {
      'fr': 'GROUPE 05',
      'ar': 'المجموعة 05',
      'en': 'GROUP 05',
    },
    'cytpjhig': {
      'fr': 'GROUPE 06',
      'ar': 'المجموعة 06',
      'en': 'GROUP 06',
    },
    'lvae7jpt': {
      'fr': 'GROUPE 01',
      'ar': 'المجموعة 01',
      'en': 'GROUP 01',
    },
    'zaasauq9': {
      'fr': 'GROUPE 01',
      'ar': 'المجموعة 01',
      'en': 'GROUP 01',
    },
    '9jwmvzex': {
      'fr': 'GROUPE 02',
      'ar': 'المجموعة 02',
      'en': 'GROUP 02',
    },
    'zd8y9vwx': {
      'fr': 'GROUPE 03',
      'ar': 'المجموعة 03',
      'en': 'GROUP 03',
    },
    'f0spx9qt': {
      'fr': 'GROUPE 04',
      'ar': 'المجموعة 04',
      'en': 'GROUP 04',
    },
    'e7fmpmh0': {
      'fr': 'GROUPE 05',
      'ar': 'المجموعة 05',
      'en': 'GROUP 05',
    },
    '6sddzwzq': {
      'fr': 'GROUPE 01',
      'ar': 'المجموعة 01',
      'en': 'GROUP 01',
    },
    '05fr0jvo': {
      'fr': 'SENIOR',
      'ar': 'كبير',
      'en': 'SENIOR',
    },
    'cdp517rg': {
      'fr': 'U19',
      'ar': 'تحت 19',
      'en': 'U19',
    },
    'ifxuztoi': {
      'fr': 'U17',
      'ar': 'تحت 17',
      'en': 'U17',
    },
    '7qrer5pb': {
      'fr': 'U15',
      'ar': 'تحت 15',
      'en': 'U15',
    },
    'ww7qnpie': {
      'fr': 'U13',
      'ar': 'تحت 13',
      'en': 'U13',
    },
    'n9bc4yt8': {
      'fr': 'SENIOR',
      'ar': 'كبير',
      'en': 'SENIOR',
    },
    'jklstz4z': {
      'fr': 'SENIOR',
      'ar': 'كبير',
      'en': 'SENIOR',
    },
    'qtymw2zz': {
      'fr': 'U19',
      'ar': 'تحت 19',
      'en': 'U19',
    },
    '5qi3ryaf': {
      'fr': 'U17',
      'ar': 'تحت 17',
      'en': 'U17',
    },
    '3k8bkqws': {
      'fr': 'U15',
      'ar': 'تحت 15',
      'en': 'U15',
    },
    'lrwr1gir': {
      'fr': 'U13',
      'ar': 'تحت 13',
      'en': 'U13',
    },
    '130sdt1x': {
      'fr': 'SENIOR',
      'ar': 'كبير',
      'en': 'SENIOR',
    },
    '986j3p25': {
      'fr': 'U19',
      'ar': 'تحت 19',
      'en': 'U19',
    },
    'qo6auswy': {
      'fr': 'U17',
      'ar': 'تحت 17',
      'en': 'U17',
    },
    '436zow4t': {
      'fr': 'U15',
      'ar': 'تحت 15',
      'en': 'U15',
    },
    'fpwg1qkp': {
      'fr': 'U13',
      'ar': 'تحت 13',
      'en': 'U13',
    },
    '89lxfgf5': {
      'fr': 'U19',
      'ar': 'تحت 19',
      'en': 'U19',
    },
    '0zsxz4yg': {
      'fr': '',
      'ar': '',
      'en': '',
    },
    'v6xb9fc6': {
      'fr': '1 ÈRE JOURNÉE',
      'ar': 'اليوم الأول',
      'en': '1ST DAY',
    },
    'ev0z2r25': {
      'fr': '2 ÈME JOURNÉE',
      'ar': 'اليوم الثاني',
      'en': '2ND DAY',
    },
    'gnrubo35': {
      'fr': '3 ÈME JOURNÉE',
      'ar': 'اليوم الثالث',
      'en': '3RD DAY',
    },
    't2una1rm': {
      'fr': '4 ÈME JOURNÉE',
      'ar': 'اليوم الرابع',
      'en': '4TH DAY',
    },
    'blnz19p1': {
      'fr': '5 ÈME JOURNÉE',
      'ar': 'اليوم الخامس',
      'en': '5TH DAY',
    },
    '5vpm9xls': {
      'fr': '6 ÈME JOURNÉE',
      'ar': 'اليوم السادس',
      'en': '6TH DAY',
    },
    'th2itaoo': {
      'fr': '7 ÈME JOURNÉE',
      'ar': 'اليوم السابع',
      'en': '7TH DAY',
    },
    'gbeh00a2': {
      'fr': '8 ÈME JOURNÉE',
      'ar': 'اليوم الثامن',
      'en': '8TH DAY',
    },
    'f37gnsji': {
      'fr': '9 ÈME JOURNÉE',
      'ar': 'اليوم التاسع',
      'en': '9TH DAY',
    },
    'k6oakfmc': {
      'fr': '10 ÈME JOURNÉE',
      'ar': 'اليوم العاشر',
      'en': '10TH DAY',
    },
    '1f6yo9g8': {
      'fr': '11 ÈME JOURNÉE',
      'ar': 'اليوم الحادي عشر',
      'en': '11TH DAY',
    },
    'r4bygdy8': {
      'fr': '12 ÈME JOURNÉE',
      'ar': 'اليوم الثاني عشر',
      'en': '12TH DAY',
    },
    'kj9xa15x': {
      'fr': '13 ÈME JOURNÉE',
      'ar': 'اليوم الثالث عشر',
      'en': '13TH DAY',
    },
    'rjr174rs': {
      'fr': '14 ÈME JOURNÉE',
      'ar': 'اليوم الرابع عشر',
      'en': '14TH DAY',
    },
    'uy5dnrw9': {
      'fr': '15 ÈME JOURNÉE',
      'ar': 'اليوم الخامس عشر',
      'en': '15TH DAY',
    },
    'qanjoev7': {
      'fr': '16 ÈME JOURNÉE',
      'ar': 'اليوم السادس عشر',
      'en': '16TH DAY',
    },
    'nekcpdii': {
      'fr': '17 ÈME JOURNÉE',
      'ar': 'اليوم السابع عشر',
      'en': '17TH DAY',
    },
    'k9mp6z95': {
      'fr': '18 ÈME JOURNÉE',
      'ar': 'اليوم الثامن عشر',
      'en': '18TH DAY',
    },
    'f8ini7dt': {
      'fr': '19 ÈME JOURNÉE',
      'ar': 'اليوم التاسع عشر',
      'en': '19TH DAY',
    },
    'bx3zzc8u': {
      'fr': '20 ÈME JOURNÉE',
      'ar': 'اليوم العشرين',
      'en': '20TH DAY',
    },
    'moi7jg8j': {
      'fr': '22 ÈME JOURNÉE',
      'ar': 'اليوم الثاني والعشرون',
      'en': '22ND DAY',
    },
    'zzeyzi25': {
      'fr': '23 ÈME JOURNÉE',
      'ar': 'اليوم الثالث والعشرون',
      'en': '23RD DAY',
    },
    'jtzy9y4p': {
      'fr': '24 ÈME JOURNÉE',
      'ar': 'اليوم الرابع والعشرون',
      'en': '24TH DAY',
    },
    'twi0jkwo': {
      'fr': 'JOURNÉE',
      'ar': 'النهار',
      'en': 'DAYTIME',
    },
    'j5a5a9rc': {
      'fr': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
      'en': 'Search for an item...',
    },
    'g1umxjvs': {
      'fr': '/',
      'ar': '/',
      'en': '/',
    },
    'z7x9vpt5': {
      'fr': '/',
      'ar': '/',
      'en': '/',
    },
    '14t7q7wc': {
      'fr': '/',
      'ar': '/',
      'en': '/',
    },
    'evuhqpp2': {
      'fr': 'PTS',
      'ar': 'نقطة',
      'en': 'PTS',
    },
    'y8m7tko7': {
      'fr': 'J',
      'ar': 'ج',
      'en': 'J',
    },
    'gfxfoy7q': {
      'fr': 'B.P',
      'ar': 'بي.بي.',
      'en': 'B.P.',
    },
    '8wud3kzx': {
      'fr': 'B.C',
      'ar': 'قبل الميلاد',
      'en': 'B.C.',
    },
    'mb0xiuqy': {
      'fr': 'DIF',
      'ar': 'ديف',
      'en': 'DIF',
    },
    'i6rp9lav': {
      'fr': 'LIENS A AFFICHER',
      'ar': 'روابط للعرض',
      'en': 'LINKS TO DISPLAY',
    },
    '4k2wt880': {
      'fr': 'CLASSEMENT CHAMPIONNAT',
      'ar': 'ترتيب البطولة',
      'en': 'CHAMPIONSHIP RANKING',
    },
    'jq54irrl': {
      'fr': 'Home',
      'ar': 'بيت',
      'en': 'Home',
    },
  },
  // matchDayCopy
  {
    '14qzh9ai': {
      'fr': 'HONNEUR',
      'ar': 'شرف',
      'en': 'HONOR',
    },
    '0gkv5pee': {
      'fr': 'PRE-HONNEUR',
      'ar': 'ما قبل الشرف',
      'en': 'PRE-HONOR',
    },
    'sqv5v0i2': {
      'fr': 'JEUNES',
      'ar': 'شباب',
      'en': 'YOUTH',
    },
    'w6hfeloj': {
      'fr': 'ÉCOLES',
      'ar': 'المدارس',
      'en': 'SCHOOLS',
    },
    'pnterr4f': {
      'fr': 'HONNEUR',
      'ar': 'شرف',
      'en': 'HONOR',
    },
    'tfvw7hmq': {
      'fr': 'LIVE',
      'ar': 'يعيش',
      'en': 'LIVE',
    },
    'u94cp0to': {
      'fr': 'COMMENTÉ',
      'ar': 'تم التعليق',
      'en': 'COMMENTED',
    },
    '73xy6ba1': {
      'fr': 'REGARDER',
      'ar': 'شاهد',
      'en': 'LOOK',
    },
    'wu5b3y5h': {
      'fr': '-',
      'ar': '-',
      'en': '-',
    },
    '7xrly9ck': {
      'fr': '-',
      'ar': '-',
      'en': '-',
    },
    '0mkcfng4': {
      'fr': '-',
      'ar': '-',
      'en': '-',
    },
    'wagbafov': {
      'fr': '-',
      'ar': '-',
      'en': '-',
    },
    'l2u0t9uf': {
      'fr': 'MATCH DAY',
      'ar': 'يوم المباراة',
      'en': 'MATCH DAY',
    },
    '6p8hqf60': {
      'fr': 'Home',
      'ar': 'بيت',
      'en': 'Home',
    },
  },
  // NavBarr
  {
    '9es8sxbf': {
      'fr': 'LA LIGUE',
      'ar': 'الدوري',
      'en': 'THE LEAGUE',
    },
    'ibwn6qc5': {
      'fr': 'CHAMPIONNAT',
      'ar': 'بطولة',
      'en': 'CHAMPIONSHIP',
    },
    'pb8q402h': {
      'fr': 'ACCUEIL',
      'ar': 'ترحيب',
      'en': 'WELCOME',
    },
    'pw9lte8y': {
      'fr': 'MATCH DAY',
      'ar': 'يوم المباراة',
      'en': 'MATCH DAY',
    },
    '5i4v0kyc': {
      'fr': 'PARAMETRES',
      'ar': 'الإعدادات',
      'en': 'SETTINGS',
    },
  },
  // appBarLigue
  {
    'j5d0vt3m': {
      'fr': 'Titre',
      'ar': 'عنوان',
      'en': 'Title',
    },
    'nn4wnye6': {
      'fr': 'Membre du bureau de la ligue',
      'ar': 'عضو مكتب الدوري',
      'en': 'Member of the league office',
    },
    'a014gvvx': {
      'fr': 'Les commissions',
      'ar': 'اللجان',
      'en': 'Commissions',
    },
    'rtxu6app': {
      'fr': 'Les projets de la ligue',
      'ar': 'مشاريع الدوري',
      'en': 'League projects',
    },
    'x7iffnsv': {
      'fr': 'Espace souvenirs',
      'ar': 'منطقة تذكارية',
      'en': 'Souvenir area',
    },
  },
  // matchComponent
  {
    'lerigz1b': {
      'fr': '-',
      'ar': '-',
      'en': '-',
    },
  },
  // partnershipDemand
  {
    'aow4il6w': {
      'fr': 'Votre Logo',
      'ar': 'شعارك',
      'en': 'Your Logo',
    },
    '5fo8l7ku': {
      'fr': 'Nom de votre société/entreprise/startup...',
      'ar': 'اسم شركتك/مشروعك/شركتك الناشئة...',
      'en': 'Name of your company/business/startup...',
    },
    'lf3urk0g': {
      'fr': '',
      'ar': '',
      'en': '',
    },
    'gkeuvuhx': {
      'fr': 'Entrez le nom de votre société/entreprise/startup......',
      'ar': 'أدخل اسم شركتك/مشروعك التجاري/الشركة الناشئة......',
      'en': 'Enter your company/business/startup name......',
    },
    'w2vv1ehz': {
      'fr': 'Description de votre société/entreprise/startup...',
      'ar': 'وصف شركتك/مشروعك/شركتك الناشئة...',
      'en': 'Description of your company/business/startup...',
    },
    'fhauo9rb': {
      'fr':
          'Entrez une petite description de votre société/entreprise/startup......',
      'ar': 'أدخل وصفًا مختصرًا لشركتك/مشروعك/الشركة الناشئة......',
      'en': 'Enter a short description of your company/business/startup......',
    },
    '87m16dkx': {
      'fr': 'Votre numéro de téléphone',
      'ar': 'رقم هاتفك',
      'en': 'Your phone number',
    },
    'jgpz6bl6': {
      'fr': 'Facultatif',
      'ar': 'خياري',
      'en': 'Optional',
    },
    'y8dje4eb': {
      'fr': 'Votre Email',
      'ar': 'بريدك الإلكتروني',
      'en': 'Your email',
    },
    '9sfjpvcd': {
      'fr': 'Entrez votre Email...',
      'ar': 'أدخل بريدك الإلكتروني...',
      'en': 'Enter your e-mail...',
    },
    '3odv7mlz': {
      'fr': 'Votre siteweb',
      'ar': 'موقع الويب الخاص بك',
      'en': 'Your website',
    },
    'tjtv0wa1': {
      'fr': 'Entrez votre siteweb...',
      'ar': 'أدخل موقعك...',
      'en': 'Enter your website...',
    },
    'd0h9x54l': {
      'fr': 'Envoyez la demande de partenariat',
      'ar': 'إرسال طلب الشراكة',
      'en': 'Send the partnership request',
    },
  },
  // matchComponentU19
  {
    'wmnkrplm': {
      'fr': '-',
      'ar': '-',
      'en': '-',
    },
  },
  // matchComponentU17
  {
    'hgey788c': {
      'fr': '-',
      'ar': '-',
      'en': '-',
    },
  },
  // matchComponentU15
  {
    'jkw3tpjc': {
      'fr': '-',
      'ar': '-',
      'en': '-',
    },
  },
  // matchComponentU13
  {
    'b3ud7uil': {
      'fr': '-',
      'ar': '-',
      'en': '-',
    },
  },
  // Miscellaneous
  {
    'gtihjzbv': {
      'fr':
          'In order to take a picture or video, this app requires permission to access the camera.',
      'ar':
          'لالتقاط صورة أو مقطع فيديو، يتطلب هذا التطبيق إذنًا للوصول إلى الكاميرا.',
      'en':
          'In order to take a picture or video, this app requires permission to access the camera.',
    },
    '6y94yg0g': {
      'fr':
          'In order to upload data, this app requires permission to access the photo library.',
      'ar':
          'من أجل تحميل البيانات، يتطلب هذا التطبيق إذنًا للوصول إلى مكتبة الصور.',
      'en':
          'In order to upload data, this app requires permission to access the photo library.',
    },
    'kyxsorrk': {
      'fr':
          'for fonctionnality ,this app requires permission to access the camera.',
      'ar': 'للحصول على وظائف، يتطلب هذا التطبيق إذنًا للوصول إلى الكاميرا.',
      'en':
          'for functionality, this app requires permission to access the camera.',
    },
    '1ml62h72': {
      'fr': '',
      'ar': '',
      'en': '',
    },
    'hvkysyxw': {
      'fr': '',
      'ar': '',
      'en': '',
    },
    'npwi8snj': {
      'fr': '',
      'ar': '',
      'en': '',
    },
    'yw5p7hfg': {
      'fr': '',
      'ar': '',
      'en': '',
    },
    'p449jgu9': {
      'fr': '',
      'ar': '',
      'en': '',
    },
    '7z678ff6': {
      'fr': '',
      'ar': '',
      'en': '',
    },
    'v56f77e4': {
      'fr': '',
      'ar': '',
      'en': '',
    },
    'nc7fwxh1': {
      'fr': '',
      'ar': '',
      'en': '',
    },
    '450flf4j': {
      'fr': '',
      'ar': '',
      'en': '',
    },
    'b88n5zjt': {
      'fr': '',
      'ar': '',
      'en': '',
    },
    'mdyg2l89': {
      'fr': '',
      'ar': '',
      'en': '',
    },
    'tue15a6c': {
      'fr': '',
      'ar': '',
      'en': '',
    },
    'zt1t07wl': {
      'fr': '',
      'ar': '',
      'en': '',
    },
    '6qeenh2f': {
      'fr': '',
      'ar': '',
      'en': '',
    },
    'jsv7t8hl': {
      'fr': '',
      'ar': '',
      'en': '',
    },
    'lvx5v3bb': {
      'fr': '',
      'ar': '',
      'en': '',
    },
    'j26pq60w': {
      'fr': '',
      'ar': '',
      'en': '',
    },
    '2wi6bimr': {
      'fr': '',
      'ar': '',
      'en': '',
    },
    'pb4bilfq': {
      'fr': '',
      'ar': '',
      'en': '',
    },
    'ouvd23mt': {
      'fr': '',
      'ar': '',
      'en': '',
    },
    'q0ux9lgw': {
      'fr': '',
      'ar': '',
      'en': '',
    },
    'znbd0n17': {
      'fr': '',
      'ar': '',
      'en': '',
    },
    'rroon3be': {
      'fr': '',
      'ar': '',
      'en': '',
    },
    'h3dma353': {
      'fr': '',
      'ar': '',
      'en': '',
    },
    '6zfnaowt': {
      'fr': '',
      'ar': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
