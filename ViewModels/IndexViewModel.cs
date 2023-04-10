using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MyToDoApp.Common.Models;
using Prism.Mvvm;

namespace MyToDoApp.ViewModels
{
    public class IndexViewModel :BindableBase
    {
        public IndexViewModel()
        {
            TaskBars = new ObservableCollection<TaskBar>();
            CreateTaskBars();
        }

        private ObservableCollection<TaskBar> taskBars;

        public ObservableCollection<TaskBar> TaskBars     
        {
            get { return taskBars; }
            set { taskBars = value; RaisePropertyChanged();}
        }

        void CreateTaskBars()
        {
            TaskBars.Add(new TaskBar(){Icon = "ClockPlusOutline", Title = "汇总", Content = "9", Color = "#FF0CA0FF", Target = ""});
            TaskBars.Add(new TaskBar(){Icon = "ClockCheckOutline", Title = "已完成", Content = "9", Color = "#FF1ECA3A", Target = ""});
            TaskBars.Add(new TaskBar(){Icon = "AccountClock", Title = "完成率", Content = "100%", Color = "#FF02C6DC", Target = ""});
            TaskBars.Add(new TaskBar(){Icon = "BriefcaseClockOutline", Title = "备忘录", Content = "19", Color = "#FFFFA000", Target = ""});
        }

    }
}
