   M S B A M L   `   `   `  ????Q  MGreenEyes_Local_Server, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:GreenEyes_Local_ServerGreenEyes_Local_Server  5   	   (    "GreenEyes_Local_Server.JanelaLogin   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   U QWpfAnimatedGif, Version=2.0.0.0, Culture=neutral, PublicKeyToken=9e7cd3b544a090dc,gif"http://wpfanimatedgif.codeplex.com  5   	   0local$clr-namespace:GreenEyes_Local_Server  5   	     ? Title$  JanelaLogin??5	   	   $	??450??6   $	??800??6*   .??5
      ?  ? ColumnDefinitions 5   
   ?? 5      $
??209* ?6   ?? 5      $
??382* ?6   ?? 5      $
??209* ?6    ? RowDefinitions 5   
   ?? 5      $
??150* ?6   ?? 5      $	??80* ?6   ?? 5      $	??81* ?6   ?? 5      $	??76* ?6   ?? 5      $	??47* ?6   .+?5   
   ?? $
??Fill=?6   $??/images/Horta.png??6    J? Opacity$
 0.75Q?6:   $y?Visible=?6I    ?? StretchDirection$
 Both=?6^   $??5??6v   $??3??6?   ?? 5   
   -   5         ??Name$ txtUser??5      
?????? ???	#FFEAF3E9 ?? 
CaretBrush
 ????????	#FF2AC31B$??0,0,0,1q?6?   $??Center=?6?   $??73,35,46,16q?6?   $??1??6?   $??1??6?   $??24(?6?   $??Times New Roman)?6?    ?? TextAlignment$
 Left=?6   ?? CharacterCasing$ Normal=?60  $??Normal$?6I  ?? 5   
   $??Times New Roman)?6   $
??Bold"?6-   $??
Green Eyes??6?   $??64(?6T   ???	#FFEAF3E9$??3??6y   ?? 5   
   $??73,5,202,45q?6   $??Times New Roman)?6%   $
??Bold"?6B   $??Usuário??6T   $??16(?6f   ???	#FFEAF3E9	 J? RenderTransformOrigin$	 0.424,2.822&?6?   $??1??6?   $??1??6?   G? 5   
   -   5        
 G?Name$
 txtPassword??5      
?????? ???	#FFEAF3E9 G? 
CaretBrush
 ????????	#FF2AC31B$??0,0,0,1q?6?   $??Center=?6?   $??73,36,46,16q?6?   $??2??6?   $??1??6?   $??24(?6?   $??Times New Roman)?6  $??Medium"?6$  $??Normal$?68  ?? 5   
   $??73,5,188,45q?6   $??Times New Roman)?6%   $
??Bold"?6B   $??Senha??6T   $??16(?6d   ???	#FFEAF3E9$	 0.424,2.822&?6?   $??2??6?   $??1??6?   ?? 5   
   -   5         ??Name$ btnLogin??5      $??
87,5,59,10q?6#   $??Login??6N   ???	#FF2AC31B???	#FF0E8924???	#FFEAF3E9$??3??6?   $??Times New Roman)?6?   $
??Bold"?6?   $??32(?6?   $??1??6?    ? 	Resources 5        ?? 
TargetType ?? Property ?? Value??%_   '??       ?? 5!      " ??6   .?5"      ??  ?@??CornerRadius$ 15??65   5#      5$      5%      ?? 5'   
   -   5         ??Name$ lblErro??5'      $??	110,4,0,9q?6!   $y?Hidden=?64   $??Times New Roman)?6H   $
??Bold"?6e   $
??Erro??6w   $??16(?6?   ???	#FFFDDDDA$	 0.424,2.822&?6?   $??4??6?   $??1??6?   $
??Left=?6?   $	??201??6  ??5(      ?? 5)      5+      ?? 5,   
   -   5         ??Name$ 
imgLoading??5,      $??71,97,71,69q?6$   $
??Fill=?69   "  WpfAnimatedGif.ImageBehavior   AnimatedSource$ /images/loading.gif??6H   $
 0.45Q?6   $y?Hidden=?6?   $
 Both=?6?   $??1??6?   $??4??6?   5-      5.      