   M S B A M L   `   `   `  ????Q  MGreenEyes_Local_Server, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:GreenEyes_Local_ServerGreenEyes_Local_Server  5   	   '    !GreenEyes_Local_Server.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   U QWpfAnimatedGif, Version=2.0.0.0, Culture=neutral, PublicKeyToken=9e7cd3b544a090dc,gif"http://wpfanimatedgif.codeplex.com  5   	   0local$clr-namespace:GreenEyes_Local_Server  5   	     ? Title$  
MainWindow??5	   	   $	??665??6   $
??1044??6)   .??5
      ? $??
0,16,0,-16q?6    ? ColumnDefinitions 5   
   ?? 5      $??2* ?6   ?? 5      ?? 5       ? RowDefinitions 5   
   ?? 5      $
??114* ?6   ?? 5      $
??236* ?6   ?? 5      $
??245* ?6   ?? 5      $	??54* ?6   .+?5   
   ?? $??3??6   $??
0,-15,0,10q?6$   $??4??68   $
??Fill=?6I   $??/images/Horta.png??6X    J? Opacity$
 0.75Q?6s   $y?Visible=?6?    ?? StretchDirection$
 Both=?6?   ?? 5   
   $??
0,-10,44,0q?6   $??Times New Roman)?6$   $
??Bold"?6A   $??
Green Eyes??6S   $??64(?6h   ???	#FFEAF3E96v   ?? 5   
   -   5         ??Name$ btnCarregaImagem??5      $??28,32,315,25q?6F   $??1??6\   ???	#FF2AC31B???	#FF24892E ? 	Resources 5       ?? 
TargetType ?? Property	 ?? Value??%_   '??       ?? 5      " ??6   .?5      ??  ?@??CornerRadius$	 15??65   5       5!      .??5"      ?? $	??149??6   $	??172??6&   .+?5#      ?? $??22,10,22,10q?6   $
??Fill=?6-   $??/images/imagens.png??6<   $y?Visible=?6Y   $
 Both=?6n   $	??100??6?   $	??112??6?   ?? 5$      $??36??6   $	??170??6(   $??Times New Roman)?64   $??20(?6Q   $
??Bold"?6_   
 ?? TextAlignment$
 Center=?6q   
???????$??LeftToRight=?6?   ?? 6?   $?Selecionar Imagens??6?   6?   5%      5&      ?? 5(   
   -   5        $ btnEnvia??5(      $??28,25,315,39q?6#   ???	#FF2AC31B???	#FF0E8924$??2??6    5)      ??%_   '??       ?? 5*      " ??6   .?5+      ??  ?@??CornerRadius$	 15??65   5,      5-      .??5.      ?? $	??179??6   $	??176??6&   .+?5/      ?? $??22,10,22,10q?6   $
??Fill=?6-   $??/images/envio.png??6<   $y?Visible=?6W   $
 Both=?6l   $	??100??6?   $	??112??6?   ?? 50      $??31??6   $	??132??6(   $??Times New Roman)?64   $??20(?6Q   $
??Bold"?6_   $
 Center=?6q   
???????$??LeftToRight=?6?   ?? 6?   $?Enviar??6?   6?   51      52      ?? 54   
   -   5         ??Name$ 	imageList??54      $??25,21,22,36q?6%   $??1??6:   $??1??6J   $??3??6W   $??2??6h   ???	#FF24892E$ 0.695Q?6?   ???	#FF2AC31B 55      ??%_   '??       ?? 56      " ??6   .?57      ??  ?@??CornerRadius$	 15??65   58      59      ??5:      ?? 5;      .R?5<      ??  ?? Orientation$ Vertical=?6!   .+?5=      ?? $??3q?6    $??80??6E   $??80??6P   ??6+   ?? *Source+6P   5>      5?      5A      ?? 5C   
   -   5        $ btnSobre??5C      $??	77,9,88,5q?6#   ???	#FF2AC31B???	#FF0E8924$??2??6|    5D      ??%_   '??       ?? 5E      " ??6   .?5F      ??  ?@??CornerRadius$	 15??65   5G      5H      .??5I      ?? $
??Auto??6   .+?5J      ?? $??22,10,22,10q?6   $
??Fill=?6-   $%??/images/botao-de-informacao.png??6<   $y?Visible=?6e   $
 Both=?6z   $??42??6?   $??42??6?   ?? 5K      $??24??6   $??99??6(   $??Times New Roman)?63   $??20(?6P   $
??Bold"?6^   $
 Center=?6p   
???????$??LeftToRight=?6?   ?? 6?   $?Sobre??6?   6?   5L      5M      ?? 5O   
   -   5        $ btnUser??5O      $??
72,10,72,4q?6"   ???	#FF2AC31B???	#FF0E8924$??1??6{    5P      ??%_   '??       ?? 5Q      " ??6   .?5R      ??  ?@??CornerRadius$	 15??65   5S      5T      .??5U      ?? $
??Auto??6   .+?5V      ?? $??22,10,22,10q?6   $
??Fill=?6-   $-??'/images/sombra-de-usuario-masculino.png??6<   $y?Visible=?6m   $
 Both=?6?   $??42??6?   $??42??6?   ?? 5W      -   5         ??Name$ 	txtLogado??5W      $??24??6/   $	??112??6;   $??Times New Roman)?6G   $
??Bold"?6d   $
 Center=?6v   
???????$??LeftToRight=?6?    ?? LineStackingStrategy$ 	MaxHeight=?6?   ?? 6?   $?Rodrigo??6?   6?   5X      5Y      ?? 5[   
   $??28,4,0,0q?6   $??Times New Roman)?6"   $
??Bold"?6?   $??versão: 1.0??6Q   $??20(?6g   ???	#FFEAF3E9$??3??6?   $	??132??6?   $??29??6?   $	??Top=?6?   $
??Left=?6?   ?? 5]   
   -   5         ??Name$ lblEnviando??5]      $??
176,32,0,0q?6%   $y?Hidden=?69   $??Times New Roman)?6M   $
??Bold"?6j   $??Enviando Imagens??6|   $??20(?6?   ???	#FFEAF3E9$	??172??6?   $??29??6?   $	??Top=?6?   $
??Left=?6?   $??1??6  $??2??6  $??1??6+  ?? 5^   
   -   5         ??Name$ 
imgLoading??5^      $??82,97,80,24q?6$   $
??Fill=?69   "  WpfAnimatedGif.ImageBehavior   AnimatedSource$ /images/loading.gif??6H   $
 0.35Q?6   $y?Hidden=?6?   $
 Both=?6?   $??1??6?   $??2??6?   $??1??6?   $??2??6?   $	??360??6?   $	??360??6  5_      5`      