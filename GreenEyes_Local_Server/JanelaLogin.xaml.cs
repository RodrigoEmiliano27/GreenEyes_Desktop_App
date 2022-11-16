using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace GreenEyes_Local_Server
{
    /// <summary>
    /// Interaction logic for JanelaLogin.xaml
    /// </summary>
    public partial class JanelaLogin : Window
    {
        public JanelaLogin()
        {
            InitializeComponent();
        }

        private async void btnLogin_Click(object sender, RoutedEventArgs e)
        {
            MainWindow.usuario = txtUser.Text;
            MainWindow.senha = txtPassword.Text;
            lblErro.Visibility = Visibility.Hidden;

            //instanciando novo objeto com usuário e senha digitados.
            var objeto = new { login = txtUser.Text, senha = txtPassword.Text };

            //Desabilita botão e exibe gif de loading enquanto está integrando
            btnLogin.IsEnabled = false;
            imgLoading.Visibility = Visibility.Visible;
            await MainWindow.PostUser(objeto, "https://greeneyesserver.azurewebsites.net/login");

            //Volta ao normal após consulta
            btnLogin.IsEnabled = true;
            imgLoading.Visibility = Visibility.Hidden;

            if (MainWindow.retorno.message != null) //Se retorna erro
            {
                Debug.WriteLine("Usuário ou senha incorretos");
                Debug.WriteLine(MainWindow.retorno.message);
                lblErro.Visibility = Visibility.Visible;
                lblErro.Content = MainWindow.retorno.message;
            }
            else
            {
                MainWindow janelaPrincipal = new MainWindow();
                janelaPrincipal.txtLogado.Text = MainWindow.retorno.user.nome;
                janelaPrincipal.Show();
                Close();
            }
        }
    }
}
