﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;

namespace MemoryGame
{
    /// <summary>
    /// Lógica de interacción para App.xaml
    /// </summary>
    public partial class App : Application
    {
        protected override void OnStartup(StartupEventArgs e)
        {
            CultureInfo operativeSystemLanguage = CultureInfo.InstalledUICulture;
            System.Threading.Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo(operativeSystemLanguage.Name);
        }

    }
}
