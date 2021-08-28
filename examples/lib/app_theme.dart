import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

//https://api.flutter.dev/flutter/material/TextTheme-class.html

class PlgTheme {
  static const moduleBackgroundColor = Color(0xfffafafa);
  static const boxBackgroundColor = Colors.white;
  static const borderColor = Color(0xffdadce0);
  static const iconColor = Color(0xff767676);
  static const iconHoverColor = Color(0xff202020);
  static const popupMenuhoverColor = Colors.blue;
  static Color hoverColor = Color(0xf8f9bba).withOpacity(0.2);
  static const disabledColor = Color(0xffe0e0e0);

  //Estadium
  static const primaryColor50 = Color(0xfffef9f9);
  static const primaryColor100 = Color(0xffffc7cb);
  static const primaryColor200 = Color(0xffe48a8b);
  static const primaryColor300 = Color(0xffd95b5d);
  static const primaryColor400 = Color(0xffd1383a);
  static const primaryColor500 = Color(0xffc91517);
  static const primaryColor600 = Color(0xffc31214);
  static const primaryColor700 = Color(0xffbc0f11);
  static const primaryColor800 = Color(0xffb50c0d);
  static const primaryColor900 = Color(0xffa90607);
}

const _colorScheme = ColorScheme(
  // Uma cor que normalmente aparece atrás do conteúdo rolável.
  background: Colors.white,
  // O brilho geral deste esquema de cores.
  brightness: Brightness.light,
  // A cor a ser usada para erros de validação de entrada, por exemplo, para InputDecoration.errorText.
  error: Colors.red,
  // Uma cor que é claramente legível quando desenhada no fundo
  onBackground: Colors.black,
  // Uma cor que é claramente legível quando desenhada onErro
  onError: Colors.redAccent,
  // Uma cor que é claramente legível quando desenhada no primário
  onPrimary: Colors.white,
  // Uma cor que é claramente legível quando desenhada em segundo plano
  onSecondary: Colors.white,
  // Uma cor que é claramente legível quando desenhada na superfície
  onSurface: Colors.black,
  // A cor exibida com mais frequência nas telas e componentes do seu aplicativo.
  primary: PlgTheme.primaryColor600,
  // Uma versão mais escura da cor primária.
  primaryVariant: PlgTheme.primaryColor300,
  // Uma cor de destaque que, quando usada com moderação, chama a atenção para partes do seu aplicativo.
  secondary: Color(0xf8f9bba),
  // Uma versão mais escura da cor secundária.
  secondaryVariant: PlgTheme.primaryColor300,
  // A cor de fundo para widgets como Cartão .
  surface: Colors.white,
);

IconThemeData _iconThemeData = IconThemeData(
  /// A cor padrão dos ícones.
  color: Colors.red,

  /// Uma opacidade a ser aplicada às cores de ícone explícitas e padrão.
  opacity: 1,

  /// O tamanho padrão dos ícones.
  size: 24,
);

final ThemeData appThemeData = ThemeData(
  primarySwatch: MaterialColor(
    4288544861,
    {
      50: PlgTheme.primaryColor50,
      100: PlgTheme.primaryColor100,
      200: PlgTheme.primaryColor200,
      300: PlgTheme.primaryColor300,
      400: PlgTheme.primaryColor400,
      500: PlgTheme.primaryColor500,
      600: PlgTheme.primaryColor600,
      700: PlgTheme.primaryColor700,
      800: PlgTheme.primaryColor800,
      900: PlgTheme.primaryColor900
    },
  ),

  /// A cor de primeiro plano para widgets (botões giratórios, texto, efeito de borda de deslocamento excessivo, etc.).
  accentColor: _colorScheme.primary,

  /// O brilho de accentColor . Usado para determinar a cor do texto e dos ícones colocados na parte superior da cor de destaque (por exemplo, os ícones em um botão de ação flutuante).
  accentColorBrightness: Brightness.dark,

  /// Um tema de ícone que contrasta com a cor de destaque.
  accentIconTheme: _iconThemeData,

  /// Um tema de texto que contrasta com a cor de destaque.
  accentTextTheme: TextTheme(
    /// Usado para enfatizar o texto que, de outra forma, seria bodyText2 .
    bodyText1: TextStyle(
      color: Colors.white,
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),

    /// O estilo de texto padrão para Material .
    bodyText2: TextStyle(
      color: Colors.blue,
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),

    /// Usado para texto em ElevatedButton, TextButton e OutlinedButton .
    button: TextStyle(
      color: Colors.white,
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),

    /// Used for auxiliary text associated with images.
    caption: TextStyle(
      color: Color(0xb3ffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),

    /// Texto extremamente grande.
    headline1: TextStyle(
      color: Color(0xb3ffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),

    /// Texto muito grande.
    headline2: TextStyle(
      color: Color(0xb3ffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),

    /// Texto muito grande.
    headline3: TextStyle(
      color: Color(0xb3ffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),

    /// Texto grande.
    headline4: TextStyle(
      color: Color(0xb3ffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),

    /// Usado para texto grande em caixas de diálogo (por exemplo, o mês e o ano na caixa de diálogo mostrada por showDatePicker ).
    headline5: TextStyle(
      color: Colors.white,
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),

    /// Usado para o texto principal em barras de aplicativos e caixas de diálogo (por exemplo, AppBar.title e AlertDialog.title ).
    headline6: TextStyle(
      color: Colors.white,
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),

    /// O menor estilo.
    overline: TextStyle(
      color: Colors.white,
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),

    /// Usado para o texto principal em listas (por exemplo, ListTile.title ).
    subtitle1: TextStyle(
      color: Colors.white,
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),

    /// Para texto com ênfase média um pouco menor que subtitle1 .
    subtitle2: TextStyle(
      color: Colors.white,
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
  ),

  /// Aplique uma cor de sobreposição semitransparente nas superfícies do material para indicar elevação para temas escuros.
  applyElevationOverlayColor: false,

  /// Um tema para personalizar a cor, elevação, brilho, iconTheme e textTheme de AppBars.
  appBarTheme: AppBarTheme(
    color: _colorScheme.primary,
    iconTheme: _iconThemeData,
  ),

  /// Uma cor que contrasta com a cor primária , por exemplo, usada como a parte restante de uma barra de progresso.
  backgroundColor: Colors.white,

  /// Um tema para personalizar a cor e o estilo do texto de um MaterialBanner .
  bannerTheme: MaterialBannerThemeData(),

  /// A cor padrão do BottomAppBar.
  bottomAppBarColor: Colors.white,

  /// Um tema para personalizar a forma, elevação e cor de uma BottomAppBar.
  bottomAppBarTheme: BottomAppBarTheme(
    color: _colorScheme.primary,
  ),

  /// Um tema para personalizar a aparência e o layout dos widgets BottomNavigationBar.
  bottomNavigationBarTheme: BottomNavigationBarThemeData(),

  /// Um tema para personalizar a cor, a elevação e a forma de uma folha inferior.
  bottomSheetTheme: BottomSheetThemeData(),

  /// O brilho geral do tema.
  brightness: Brightness.light,

  /// Um tema para personalizar a aparência e o layout dos widgets do ButtonBar.
  buttonBarTheme: ButtonBarThemeData(),

  /// A cor de preenchimento padrão do Material.
  buttonColor: Color(0xffe0e0e0),

  /// Define a configuração padrão de widgets de botão
  buttonTheme: const ButtonThemeData(
    textTheme: ButtonTextTheme.primary,
    colorScheme: _colorScheme,
    minWidth: 88,
    height: 34,
    padding: EdgeInsets.only(top: 0, bottom: 0, left: 16, right: 16),
    shape: RoundedRectangleBorder(
      side: BorderSide(
        color: Colors.black,
        width: 0,
        style: BorderStyle.none,
      ),
      borderRadius: BorderRadius.all(Radius.circular(3.0)),
    ),
    alignedDropdown: false,
    buttonColor: Color(0xffe0e0e0),
    disabledColor: Color(0x61000000),
    highlightColor: Color(0x29000000),
    splashColor: Colors.black26,
    focusColor: Color(0x1f000000),
    hoverColor: Color(0x0a000000),
  ),

  /// A cor padrão do Material MaterialType.canvas .
  canvasColor: _colorScheme.background,

  /// A cor do material quando usado como um cartão
  cardColor: Colors.white,

  /// As cores e estilos usados ​​para renderizar o cartão .
  cardTheme: CardTheme(
    shape: RoundedRectangleBorder(
      side: BorderSide(color: Colors.redAccent),
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
    ),
    color: Colors.lightGreenAccent,
  ),

  /// Um tema para personalizar a aparência e o layout dos widgets Checkbox.
  checkboxTheme: CheckboxThemeData(),

  /// As cores e estilos usados ​​para renderizar Chips.
  chipTheme: ChipThemeData(
    backgroundColor: Color(0x1f000000),
    brightness: Brightness.light,
    deleteIconColor: Color(0xde000000),
    disabledColor: Color(0x0c000000),
    labelPadding: EdgeInsets.only(top: 0, bottom: 0, left: 8, right: 8),
    labelStyle: TextStyle(
      color: Color(0xde000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    padding: EdgeInsets.only(top: 4, bottom: 4, left: 4, right: 4),
    secondaryLabelStyle: TextStyle(
      color: Color(0x3d000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    secondarySelectedColor: PlgTheme.primaryColor50,
    selectedColor: Color(0x3d000000),
    shape: StadiumBorder(
        side: BorderSide(
      color: Colors.black,
      width: 0,
      style: BorderStyle.none,
    )),
  ),

  /// Um conjunto de treze cores que pode ser usado para configurar as propriedades de cor da maioria dos componentes.
  colorScheme: _colorScheme,

  /// Componentes do CupertinoThemeData a serem substituídos pela adaptação do Material ThemeData .
  //cupertinoOverrideTheme: NoDefaultCupertinoThemeData(),

  /// Um tema para personalizar a aparência e o layout dos widgets DataTable.
  dataTableTheme: DataTableThemeData(),

  /// A cor de fundo dos elementos do Dialog.
  dialogBackgroundColor: Colors.white,

  /// Um tema para personalizar a forma de um diálogo.
  dialogTheme: DialogTheme(
    shape: RoundedRectangleBorder(
      side: BorderSide(
        color: Colors.black,
        width: 0,
        style: BorderStyle.none,
      ),
      borderRadius: BorderRadius.all(Radius.circular(0.0)),
    ),
  ),

  /// A cor usada para widgets que estão inoperantes, independentemente de seu estado. Por exemplo, uma caixa de seleção desabilitada (que pode ser marcada ou desmarcada).
  disabledColor: Color(0x61000000),

  /// A cor do divisor s e PopupMenuDivider s, também utilizada entre ListTile s, entre linhas em DataTable s, e assim por diante.
  dividerColor: Color(0x1f000000),

  /// Um tema para personalizar a cor, espessura e recuos de Dividers, VerticalDividers, etc.
  dividerTheme: DividerThemeData(),

  /// Um tema para personalizar a aparência e o layout interno dos ElevatedButtons.
  elevatedButtonTheme: ElevatedButtonThemeData(),

  /// A cor a ser usada para erros de validação de entrada, por exemplo, em campos TextField.
  errorColor: Color(0xffd32f2f),

  /// Um tema para personalizar a forma, elevação e cor de um FloatingActionButton.
  fixTextFieldOutlineLabel: false,

  /// A cor do foco usada indica que um componente tem o foco de entrada.
  focusColor: PlgTheme.primaryColor50,

  /// A cor de destaque usada durante as animações de respingos de tinta ou para indicar um item em um menu é selecionada.
  highlightColor: PlgTheme.primaryColor300,

  /// A cor a ser usada para texto de dica ou texto de espaço reservado, por exemplo, em campos TextField.
  hintColor: Color(0x8a000000),

  /// A cor flutuante usada para indicar quando um ponteiro está passando sobre um componente.
  hoverColor: Color(0xfff2f2f2),

  /// Um tema de ícone que contrasta com as cores do cartão e da tela.
  iconTheme: _iconThemeData,

  /// A cor do indicador da guia selecionada em uma barra de guias.
  indicatorColor: _colorScheme.onPrimary,

  /// Os valores padrão de InputDecoration para InputDecorator , TextField e TextFormField são baseados neste tema.
  inputDecorationTheme: InputDecorationTheme(
    labelStyle: TextStyle(
      color: Color(0xdd000000),
      fontSize: 18,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    helperStyle: TextStyle(
      color: Color(0xddFF0000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    hintStyle: TextStyle(
      color: Colors.grey[400],
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    errorStyle: TextStyle(
      color: Color(0xddFF0000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    errorMaxLines: null,
    floatingLabelBehavior: FloatingLabelBehavior.auto,
    isDense: false,
    contentPadding: EdgeInsets.only(top: 14, bottom: 10, left: 12, right: 12),
    isCollapsed: false,
    prefixStyle: TextStyle(
      color: Color(0xddFF00FF),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    suffixStyle: TextStyle(
      color: Color(0xdd00FFFF),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    counterStyle: TextStyle(
      color: Color(0xdd000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    filled: true,
    fillColor: Color(0x0aFFFFFF),
    focusColor: PlgTheme.primaryColor50,
    hoverColor: PlgTheme.primaryColor50,
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.red,
        width: 1.2,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
      gapPadding: 4,
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: PlgTheme.primaryColor100,
        width: 1.2,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
      gapPadding: 4,
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.red,
        width: 1,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
      gapPadding: 4,
    ),
    disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.black26,
          width: 1.2,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
        gapPadding: 4),
    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.black54,
          width: 1.2,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
        gapPadding: 4),
    border: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black54,
        width: 2,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
      gapPadding: 4,
    ),
  ),

  /// Configura o tamanho do teste de clique de certos widgets de Material.
  materialTapTargetSize: MaterialTapTargetSize.padded,

  /// Um tema para personalizar a cor de fundo, elevação, estilo de texto e temas de ícones de um NavigationRail .
  navigationRailTheme: NavigationRailThemeData(),

  /// Um tema para personalizar a aparência e o layout interno dos OutlinedButtons.
  outlinedButtonTheme: OutlinedButtonThemeData(),

  /// Transições MaterialPageRoute padrão por TargetPlatform.
  pageTransitionsTheme: PageTransitionsTheme(),

  /// The platform the material widgets should adapt to target.
  //platform: TargetPlatform.android,

  /// A theme for customizing the color, shape, elevation, and text style of popup menus.
  popupMenuTheme: PopupMenuThemeData(),

  /// A cor de fundo para as principais partes do aplicativo (barras de ferramentas, barras de guias, etc)
  primaryColor: _colorScheme.primary,

  /// O brilho do primaryColor . Usado para determinar a cor do texto e dos ícones colocados na parte superior da cor primária (por exemplo, texto da barra de ferramentas).
  primaryColorBrightness: Brightness.dark,

  /// Uma versão mais escura de primaryColor.
  primaryColorDark: PlgTheme.primaryColor700,

  /// Uma versão mais clara do primaryColor.
  primaryColorLight: Color(0xfbcc3d5),

  /// Um tema de ícone que contrasta com a cor primária.
  primaryIconTheme: _iconThemeData,

  /// Um tema de texto que contrasta com a cor primária.
  primaryTextTheme: TextTheme(
    headline1: TextStyle(
      color: Color(0xaf000000),
      fontSize: 35,
      fontWeight: FontWeight.w300,
      fontStyle: FontStyle.normal,
      letterSpacing: 0.4,
    ),
    headline2: TextStyle(
      color: Color(0xb3ffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    headline3: TextStyle(
      color: Color(0xb3ffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    headline4: TextStyle(
      color: Color(0xb3ffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    headline5: TextStyle(
      color: Colors.white,
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    headline6: TextStyle(
      color: Colors.white,
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    subtitle1: TextStyle(
      color: Colors.white,
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    bodyText1: TextStyle(
      color: Colors.white,
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    bodyText2: TextStyle(
      color: Colors.white,
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    caption: TextStyle(
      color: Color(0xb3ffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    button: TextStyle(
      color: Colors.white,
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    subtitle2: TextStyle(
      color: Colors.white,
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    overline: TextStyle(
      color: Colors.white,
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
  ),

  /// Um tema para personalizar a aparência e o layout de widgets de rádio.
  radioTheme: RadioThemeData(),

  /// A cor padrão do material subjacente ao scaffold. A cor de fundo de um aplicativo de material típico ou de uma página dentro do aplicativo.
  scaffoldBackgroundColor: _colorScheme.background,

  /// Um tema para personalizar as cores, espessura e formato das barras de rolagem.
  scrollbarTheme: ScrollbarThemeData(),

  /// A cor do cabeçalho de uma PaginatedDataTable quando há linhas selecionadas.
  secondaryHeaderColor: PlgTheme.primaryColor50,

  /// A cor usada para destacar as linhas selecionadas.
  selectedRowColor: Color(0xfff5f5f5),

  /// A cor que o widget Material usa para desenhar sombras de elevação.
  shadowColor: Colors.black,

  /// As cores e formas usadas para renderizar o Slider.
  sliderTheme: SliderThemeData(
    //activeTrackColor: null,
    //inactiveTrackColor: null,
    //disabledActiveTrackColor: null,
    //disabledInactiveTrackColor: null,
    //activeTickMarkColor: null,
    //inactiveTickMarkColor: null,
    //disabledActiveTickMarkColor: null,
    //disabledInactiveTickMarkColor: null,
    //thumbColor: null,
    //disabledThumbColor: null,
    //thumbShape: null,
    //overlayColor: null,
    //valueIndicatorColor: null,
    //valueIndicatorShape: null,
    //showValueIndicator: null,
    valueIndicatorTextStyle: TextStyle(
      color: Colors.white,
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
  ),

  /// Um tema para personalizar cores, forma, elevação e comportamento de uma SnackBar.
  snackBarTheme: const SnackBarThemeData(
    behavior: SnackBarBehavior.floating,
  ),

  /// A cor dos respingos de tinta. Veja InkWell.
  splashColor: Color(0x66c8c8c8),

  /// Define a aparência dos respingos de tinta produzidos por InkWell e InkResponse .
  //splashFactory

  /// Um tema para personalizar a aparência e o layout dos widgets Switch.
  switchTheme: SwitchThemeData(),

  /// Um tema para personalizar o tamanho, a forma e a cor do indicador da barra de guias.
  tabBarTheme: TabBarTheme(
    indicatorSize: TabBarIndicatorSize.tab,
    labelColor: Colors.white,
    unselectedLabelColor: Color(0xb2ffffff),
  ),

  /// Um tema para personalizar a aparência e o layout interno dos TextButtons.
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      padding: EdgeInsets.only(left: 20, right: 20),
      primary: Colors.white,
      textStyle: TextStyle(color: Colors.blue),
      backgroundColor: Colors.blue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        //side: BorderSide(color: Colors.black54, width: 1.0),
      ),
    ),
  ),

  /// Um tema para personalizar a aparência e o layout de widgets TextField.
  textSelectionTheme: TextSelectionThemeData(),

  /// Texto com uma cor que contrasta com as cores do cartão e da tela.
  textTheme: TextTheme(
    /// Usado para enfatizar o texto que, de outra forma, seria bodyText2.
    bodyText1: TextStyle(
      color: Color(0xdd000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),

    /// O estilo de texto padrão para Material.
    bodyText2: TextStyle(
      color: Colors.orange,
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),

    /// Usado para texto em ElevatedButton , TextButton e OutlinedButton .
    button: TextStyle(
      color: Color(0xdd000000),
      fontSize: 14,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),

    /// Usado para texto auxiliar associado a imagens.
    caption: TextStyle(
      color: Color(0x8a000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),

    /// Texto extremamente grande.
    headline1: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w200,
      fontStyle: FontStyle.normal,
    ),

    /// Texto muito grande.
    headline2: TextStyle(
      color: Color(0x8a000000),
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),

    /// Texto muito grande.
    headline3: TextStyle(
      color: Color(0x8a000000),
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),

    /// Texto Grande.
    headline4: TextStyle(
      color: Color(0x8a000000),
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),

    /// Usado para texto grande em caixas de diálogo (por exemplo, o mês e o ano na caixa de diálogo mostrada por showDatePicker ).
    headline5: TextStyle(
      color: Color(0xdd000000),
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),

    /// Usado para o texto principal em barras de aplicativos e caixas de diálogo (por exemplo, AppBar.title e AlertDialog.title ).
    headline6: TextStyle(
      color: Color(0xdd000000),
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),

    /// Usado para o texto principal em listas (por exemplo, ListTile.title ).
    subtitle1: TextStyle(
      color: Colors.cyan,
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),

    /// Para texto com ênfase média um pouco menor que subtitle1 .
    subtitle2: TextStyle(
      color: Colors.blue,
      fontSize: 10,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),

    /// O menor estilo.
    overline: TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      letterSpacing: 0.5,
    ),
  ),

  /// Um tema para personalizar a aparência e o layout dos widgets do seletor de hora.
  timePickerTheme: TimePickerThemeData(),

  /// A cor usada para destacar os estados ativos de widgets alternáveis ​​como Switch , Radio e Checkbox.
  toggleableActiveColor: _colorScheme.primary,

  /// Define a configuração padrão dos widgets ToggleButtons.
  toggleButtonsTheme: ToggleButtonsThemeData(),

  /// Um tema para personalizar as propriedades visuais dos Tooltips.
  tooltipTheme: TooltipThemeData(
    textStyle: TextStyle(fontSize: 11, color: PlgTheme.primaryColor900, fontWeight: FontWeight.normal),
    padding: EdgeInsets.only(left: 10, right: 10, bottom: 3, top: 2),
    margin: EdgeInsets.all(0),
    height: 18,
    decoration: BoxDecoration(
      color: PlgTheme.primaryColor50,
      border: Border.all(
        color: PlgTheme.primaryColor100,
      ),
      borderRadius: BorderRadius.circular(4.0),
    ),
  ),

  /// Os valores de TextTheme de cor e geometria usados para configurar textTheme, primaryTextTheme e accentTextTheme.
  typography: Typography.material2018(
    platform: defaultTargetPlatform,
  ),

  /// A cor usada para widgets em seu estado inativo (mas habilitado). Por exemplo, uma caixa de seleção desmarcada. Normalmente contrastado com o accentColor. Veja também disabledColor.
  unselectedWidgetColor: Color(0x8a000000),

  /// O valor de densidade para especificar a compactação de vários componentes da IU.
  visualDensity: VisualDensity.adaptivePlatformDensity,
);
