import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class ListViewTest extends StatelessWidget {
  const ListViewTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = List.generate(
        20,
        (index) => '''
    ၁.တေန [T: ၁.၁] [P: ၃.၁] [M: .၁] [V: .၁] သမယေန ဗုဒ္ဓေါ ဘဂဝါ ဝေရဉ္ဇာယံ ဝိဟရတိ နဠေရုပုစိမန္ဒမူလေ မဟတာ ဘိက္ခုသင်္ဃေန သဒ္ဓိံ ပဉ္စမတ္တေဟိ ဘိက္ခုသတေဟိ။ အဿောသိ ခေါ ဝေရဉ္ဇော ဗြာဟ္မဏော – “သမဏော ခလု၊ ဘော၊ ဂေါတမော သကျပုတ္တော သကျကုလာ ပဗ္ဗဇိတော ဝေရဉ္ဇာယံ ဝိဟရတိ နဠေရုပုစိမန္ဒမူလေ မဟတာ ဘိက္ခုသင်္ဃေန သဒ္ဓိံ ပဉ္စမတ္တေဟိ ဘိက္ခုသတေဟိ။ တံ ခေါ ပန ဘဝန္တံ ဂေါတမံ ဧဝံ ကလျာဏော ကိတ္တိသဒ္ဒေါ အဗ္ဘုဂ္ဂတော – ‘ဣတိပိ သော ဘဂဝါ အရဟံ သမ္မာသမ္ဗုဒ္ဓေါ ဝိဇ္ဇာစရဏသမ္ပန္နော သုဂတော လောကဝိဒူ အနုတ္တရော ပုရိသဒမ္မသာရထိ သတ္ထာ ဒေဝမနုဿာနံ ဗုဒ္ဓေါ ဘဂဝါ ။ သော ဣမံ လောကံ သဒေဝကံ သမာရကံ သဗြဟ္မကံ သဿမဏဗြာဟ္မဏိံ ပဇံ သဒေဝမနုဿံ သယံ အဘိညာ သစ္ဆိကတွာ ပဝေဒေတိ။ သော ဓမ္မံ ဒေသေတိ အာဒိကလျာဏံ မဇ္ဈေကလျာဏံ ပရိယောသာနကလျာဏံ [V: .၂] သာတ္ထံ သဗျဉ္ဇနံ၊ ကေဝလပရိပုဏ္ဏံ ပရိသုဒ္ဓံ ဗြဟ္မစရိယံ ပကာသေတိ၊ သာဓု ခေါ ပန တထာရူပါနံ အရဟတံ ဒဿနံ ဟောတီ’”တိ။
    ''');
    final ItemScrollController itemScrollController = ItemScrollController();
    final ItemPositionsListener itemPositionsListener =
        ItemPositionsListener.create();
    return Scaffold(
        appBar: AppBar(
          title: const Text('listview test'),
        ),
        body: ScrollablePositionedList.builder(
            itemScrollController: itemScrollController,
            itemPositionsListener: itemPositionsListener,
            itemCount: data.length,
            itemBuilder: (_, index) {
              return Text(data[index]);
            }));
  }
}
