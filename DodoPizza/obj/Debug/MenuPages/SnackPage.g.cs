﻿#pragma checksum "..\..\..\MenuPages\SnackPage.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "F8E41E7E5D76E3E08350250162EBFA259902D501C6EB630EB47D02FAF1447816"
//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан программой.
//     Исполняемая версия:4.0.30319.42000
//
//     Изменения в этом файле могут привести к неправильной работе и будут потеряны в случае
//     повторной генерации кода.
// </auto-generated>
//------------------------------------------------------------------------------

using DodoPizza.MenuPages;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace DodoPizza.MenuPages {
    
    
    /// <summary>
    /// SnackPage
    /// </summary>
    public partial class SnackPage : System.Windows.Controls.Page, System.Windows.Markup.IComponentConnector, System.Windows.Markup.IStyleConnector {
        
        
        #line 23 "..\..\..\MenuPages\SnackPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock ResultTxb;
        
        #line default
        #line hidden
        
        
        #line 35 "..\..\..\MenuPages\SnackPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox TxbSearch;
        
        #line default
        #line hidden
        
        
        #line 38 "..\..\..\MenuPages\SnackPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox CmbSort;
        
        #line default
        #line hidden
        
        
        #line 49 "..\..\..\MenuPages\SnackPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox CmbFilter;
        
        #line default
        #line hidden
        
        
        #line 66 "..\..\..\MenuPages\SnackPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ListView MaterialList;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/DodoPizza;component/menupages/snackpage.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\MenuPages\SnackPage.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.ResultTxb = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 2:
            this.TxbSearch = ((System.Windows.Controls.TextBox)(target));
            
            #line 36 "..\..\..\MenuPages\SnackPage.xaml"
            this.TxbSearch.TextChanged += new System.Windows.Controls.TextChangedEventHandler(this.TxbSearch_TextChanged);
            
            #line default
            #line hidden
            return;
            case 3:
            this.CmbSort = ((System.Windows.Controls.ComboBox)(target));
            
            #line 39 "..\..\..\MenuPages\SnackPage.xaml"
            this.CmbSort.SelectionChanged += new System.Windows.Controls.SelectionChangedEventHandler(this.CmbSort_SelectionChanged);
            
            #line default
            #line hidden
            return;
            case 4:
            this.CmbFilter = ((System.Windows.Controls.ComboBox)(target));
            
            #line 50 "..\..\..\MenuPages\SnackPage.xaml"
            this.CmbFilter.SelectionChanged += new System.Windows.Controls.SelectionChangedEventHandler(this.CmbFilter_SelectionChanged);
            
            #line default
            #line hidden
            return;
            case 5:
            
            #line 63 "..\..\..\MenuPages\SnackPage.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.Button_Click);
            
            #line default
            #line hidden
            return;
            case 6:
            this.MaterialList = ((System.Windows.Controls.ListView)(target));
            
            #line 65 "..\..\..\MenuPages\SnackPage.xaml"
            this.MaterialList.SelectionChanged += new System.Windows.Controls.SelectionChangedEventHandler(this.MaterialList_SelectionChanged);
            
            #line default
            #line hidden
            
            #line 67 "..\..\..\MenuPages\SnackPage.xaml"
            this.MaterialList.Loaded += new System.Windows.RoutedEventHandler(this.Page_Loaded);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        void System.Windows.Markup.IStyleConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 7:
            
            #line 71 "..\..\..\MenuPages\SnackPage.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.Like_Click);
            
            #line default
            #line hidden
            break;
            }
        }
    }
}

