   M S B A M L   `   `   `  ����A  =MyToDo, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:MyToDoMyToDo  5   	   5clr-namespace:MyToDo.ExtensionsMyToDo.Extensions  5	   	       MyToDo.Views.MainView   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	    localclr-namespace:MyToDo  5   	   [ WPrism.DryIoc.Wpf, Version=8.1.97.5141, Culture=neutral, PublicKeyToken=40ee6c3a2184dc59T PPrism.Wpf, Version=8.1.97.5141, Culture=neutral, PublicKeyToken=40ee6c3a2184dc59&prismhttp://prismlibrary.com/   5   	   +extclr-namespace:MyToDo.Extensions   5	   	   _	 [Microsoft.Xaml.Behaviors, Version=1.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a3i+http://schemas.microsoft.com/xaml/behaviors 	 5
   	   !  Prism.Mvvm.ViewModelLocator    AutoWireViewModel  True5   	    � Title$ 
MainWindow��5   	   $	��768��5   	   $
��1280��5   	    � WindowStyle$
 None=�5   	    � WindowStartupLocation$ CenterScreen=�5   	    � AllowsTransparency$
 True��5   	      MaterialDesignBody#���   5   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignPaper#���  5   	   $��微软雅黑)�5   	   .��5      )  #MaterialDesignThemes.Wpf.DialogHost     DialogTheme$ Inherit=�6       
Identifier$ 
RootDialog��5       	   SnackbarMessageQueue	 5       �� 
 �� ElementName$
 MainSnackbar�� �� Path$ MessageQueue�.��5   
   )  #MaterialDesignThemes.Wpf.DrawerHost  -   5          Name$ 
drawerHost��5   $      IsLeftDrawerOpen 68   �� $
 MenuToggleButton��$ 	IsChecked�   LeftDrawerContent 5      ]� 5       $	��220��6   .+�5!      �� $
��0,20q�6!   $	��Top=�6/   .+�5"      �� $��/Image/小新.jpg��6    $��50��67   $��50��6B    J� Clip 5#      @� 5$   "    @� Center$ 25,25&�62    @� RadiusX$ 25Q�6A    @� RadiusY$ 25Q�6N   5&      �� 5'      $��TT��5(      $
��0,10q�5)      $��Center=�5*      5+      �� 5,      -   5         ��Name$ menuBar��5,        MyListBoxItemStyle#��[ 5-      ��6W   �� *
MenuBars+* 	 $Microsoft.Xaml.Behaviors.Interaction   Triggers 5.      + 	 %Microsoft.Xaml.Behaviors.EventTrigger  5/         	EventName$ SelectionChanged��6-   * 	 $Microsoft.Xaml.Behaviors.TriggerBase   Actions. 50   "   2 	 ,Microsoft.Xaml.Behaviors.InvokeCommandAction     Command 68   �� *NavigateCommand+   CommandParameter 6\   �� $
 menuBar��$ SelectedItem�6�   51      ��53      �� 54      .R�55   "   �� 
������  �� Orientation$ 
Horizontal=�6F   .+�56   &   '	  !MaterialDesignThemes.Wpf.PackIcon	  $
��15,0q�6T    	  Kind 6>   �� *Icon+6T   �� 57   &   $
��10,0q�6G   ��60   �� *Title+6G   58   #   59      5;      5<      .��5?      �  � RowDefinitions 5@      �� 5A      $
��auto �6$   �� 5B      .+�5E      (
  "MaterialDesignThemes.Wpf.ColorZone
  -   5         
 Name$ 	ColorZone��5E   8   $��16q�6+   .  (MaterialDesignThemes.Wpf.ElevationAssist   	Elevation$	 Dp4=�5F   +   $	��Top=�5G   +    
  Mode$ 
PrimaryMid=�5H   +   .��5I      ]� $
��True��6    .+�5J      �� $��Right=�6%   $ 
Horizontal=�6<   .+�5K      �� $��/Image/小新.jpg��6$   $��25��6;   $��25��6F    5L   "   @� 5M   &   $ 	12.5,12.5&�66   $
 12.5Q�6I   $
 12.5Q�6X   5O      �� 5P      -   5         ��Name$ btnMin��5P   %   $	��—��65    ! MaterialDesignFlatMidBgButton#��[ 6A   �� 5Q      -   5        $ btnMax��5Q   %   $	��☐��65   #��[ 6A   �� 5R      -   5        $ btnClose��5R   %   $	��✕��67   #��[ 5S   %   5T      �� 5U      $ 
Horizontal=�6%   .+�5V      d� -   5          d�Name$  MenuToggleButton��5V   +   4  .System.Windows.Automation.AutomationProperties!   Name$! HamburgerToggleButton��5W   +   " d� 	IsChecked$" FalseY�5X   +    ' #MaterialDesignHamburgerToggleButton#��[ 5Y   +   �� 5[      $��24,0,0,0q�6%     MaterialDesignToolButton#��[ 5a   %   # � ToolTip$# Previous Item��5b   %   +  %MaterialDesignThemes.Wpf.RippleAssist$   Feedback$ 5\   %   �� % �� RelativeSource% �� *Self+$ 
Foreground�  BrushRoundConverter& �� 	Converter#& [ ��5]   %   �� *GoBackCommand+��5^   %   0  *MaterialDesignThemes.Wpf.PackIconExtension  '   Kind$' 	ArrowLeft=�(   Size( 24��5`   %   �� % �� ) �� AncestorType") �$ (TextElement.Foreground)�5b   %   �� 5d      $��16,0,0,0q�6%   #��[ 5j   %   $# 	Next Item��5k   %   $ 5e   %   �� % �� *Self+$ 
Foreground�#& [ ��5f   %   �� *GoForwardCommand+��5g   %     $' 
ArrowRight=�( 24��5i   %   �� % �� ") �$ (TextElement.Foreground)�5k   %   �� 5m      $
��16,0q�6(   $��Center=�5n   (   $��Center=�5o   (   $%! Material Design In XAML Toolkit��5p   (   $��22(�5q   (   $��	笔记本��5r   (   5s      5t      5u      �� 5v      $��1��6!   $   MyToDo.Extensions.PrismManager*   MainViewRegionName!  Prism.Regions.RegionManager+   
RegionName#+ Z* 6.   5w      5x      5y      5z      