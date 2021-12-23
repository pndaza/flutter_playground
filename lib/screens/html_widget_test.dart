import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:fwfh_selectable_text/fwfh_selectable_text.dart';

class HtmlWidgetTest extends StatefulWidget {
  const HtmlWidgetTest({Key? key}) : super(key: key);

  @override
  _HtmlWidgetTestState createState() => _HtmlWidgetTestState();
}

class _HtmlWidgetTestState extends State<HtmlWidgetTest> {
  double textScaleFactor = 1.4;
  double fontSize = 22;
  // final _key = GlobalKey<HtmlWidgetState>();
  final WidgetFactory widgetFactory = MyWidgetFactory();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      widgetFactory.onTapUrl('#end');
      // _key.currentState?.scrollToAnchor("end");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: HtmlWidget(
            '''
<p><a name="top"></a><a href="#end">goto end</a>1. evaṃ me sutaṃ — ekaṃ samayaṃ bhagavā antarā ca rājagahaṃ antarā ca nāḷandaṃ addhānamaggappaṭipanno hoti mahatā bhikkhusaṅghena saddhiṃ pañcamattehi bhikkhusatehi. suppiyopi kho paribbājako antarā ca rājagahaṃ antarā ca nāḷandaṃ addhānamaggappaṭipanno hoti saddhiṃ antevāsinā brahmadattena māṇavena. tatra sudaṃ suppiyo paribbājako anekapariyāyena buddhassa avaṇṇaṃ bhāsati, dhammassa avaṇṇaṃ bhāsati, saṅghassa avaṇṇaṃ bhāsati; suppiyassa pana paribbājakassa antevāsī brahmadatto māṇavo anekapariyāyena buddhassa vaṇṇaṃ bhāsati, dhammassa vaṇṇaṃ bhāsati, saṅghassa vaṇṇaṃ bhāsati. itiha te ubho ācariyantevāsī aññamaññassa ujuvipaccanīkavādā bhagavantaṃ piṭṭhito piṭṭhito anubandhā honti bhikkhusaṅghañca.</p>
<p>2. atha kho bhagavā ambalaṭṭhikāyaṃ rājāgārake ekarattivāsaṃ upagacchi saddhiṃ bhikkhusaṅghena. suppiyopi kho paribbājako ambalaṭṭhikāyaṃ rājāgārake ekarattivāsaṃ upagacchi antevāsinā brahmadattena māṇavena. tatrapi sudaṃ suppiyo paribbājako anekapariyāyena buddhassa avaṇṇaṃ bhāsati, dhammassa avaṇṇaṃ bhāsati, saṅghassa avaṇṇaṃ bhāsati; suppiyassa pana paribbājakassa antevāsī brahmadatto māṇavo anekapariyāyena buddhassa vaṇṇaṃ bhāsati, dhammassa vaṇṇaṃ bhāsati, saṅghassa vaṇṇaṃ bhāsati. itiha te ubho<a name="end"></a> ācariyantevāsī <a href="#top">goto top</a>aññamaññassa ujuvipaccanīkavādā viharanti.</p>
                ''',
            // key: _key,
            factoryBuilder: () => widgetFactory,
            textStyle: TextStyle(fontSize: fontSize),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // print(_key.currentState);
          // _key.currentState?.scrollToAnchor("top");
          widgetFactory.onTapUrl('#top');
        },
        child: const Icon(Icons.arrow_upward),
      ),
    );
  }
}

class MyWidgetFactory extends WidgetFactory with SelectableTextFactory {}
