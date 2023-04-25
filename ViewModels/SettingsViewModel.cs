using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MyToDoApp.Common.Models;
using MyToDoApp.Extensions;
using Prism.Commands;
using Prism.Mvvm;
using Prism.Regions;

namespace MyToDoApp.ViewModels
{
    public class SettingsViewModel : BindableBase
    {
        public SettingsViewModel(IRegionManager regionManager)
        {
            MenuBars = new ObservableCollection<MenuBar>();
            this.regionManager = regionManager;
            NavigateCommand = new DelegateCommand<MenuBar>(Navigate);
            CreateMenuBar();
        }
        public DelegateCommand<MenuBar> NavigateCommand { get; private set; }
        private ObservableCollection<MenuBar> menuBars;
        private readonly IRegionManager regionManager;

        private void Navigate(MenuBar menuBar)
        {
            if (menuBar == null || string.IsNullOrWhiteSpace(menuBar.NameSpace)) return;
            regionManager.Regions[PrismManager.SettingsViewRegionName].RequestNavigate(menuBar.NameSpace);
        }

        public ObservableCollection<MenuBar> MenuBars
        {
            get { return menuBars; }
            set { menuBars = value; RaisePropertyChanged();}
        }

        void CreateMenuBar()
        {
            MenuBars.Add(new MenuBar(){Icon = "Palette", Title = "个性化", NameSpace = "SkinView"});
            MenuBars.Add(new MenuBar(){Icon = "Cog", Title = "系统设置", NameSpace = ""});
            MenuBars.Add(new MenuBar(){Icon = "Information", Title = "关于更多", NameSpace = "AboutView"});
        }
    }
}
