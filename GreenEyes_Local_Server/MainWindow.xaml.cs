using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using Microsoft.Win32;
using System.Net.Http;
using Newtonsoft.Json;
using System.Text.RegularExpressions;
using System.IO;
using Microsoft.Exchange.WebServices.Auth.Validation;
using System.Net.Http.Headers;

namespace GreenEyes_Local_Server
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        public List<String> base64List = new List<String>();

        //Objeto Imagem usado para serializar as imagens que são enviadas ao servidor
        public class Imagens
        {
            public string Nome;
            public string Tipo;
            public string Image;
        }

        //Objeto usado para deserialize do retorno do login
        public class Retorno
        {
            public User user;
            public String token;
        }

        //Objeto Auxiliar do Retorno
        public class User
        {
            public string senha { get; set; }
            public string nome { get; set; }
            public string login { get; set; }
            public string tipo { get; set; }
            public IdPlantacao id_plantacao { get; set; }
            public Id id { get; set; }
            public bool ativado { get; set; }
        }

        //Objeto Auxiliar do Retorno
        public class IdPlantacao
        {
            public int timestamp { get; set; }
            public int machine { get; set; }
            public int pid { get; set; }
            public int increment { get; set; }
            public string creationTime { get; set; }
        }

        //Objeto Auxiliar do Retorno
        public class Id
        {
            public int timestamp { get; set; }
            public int machine { get; set; }
            public int pid { get; set; }
            public int increment { get; set; }
            public string creationTime { get; set; }
        }

        //instanciando um novo retorno de login
        public static Retorno retorno = null;

        //Endpoint
        public static String endpoint = "https://greeneyesserver.azurewebsites.net";

        /// <summary>
        /// Evento usado para carregar as imagens em base64 em uma lista(String) de imagens em base 64 e para o painel da tela.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void CarregaImagemClick(object sender, RoutedEventArgs e)
        {
            if(retorno != null)
            {
                Debug.WriteLine(retorno.token);
            }
            OpenFileDialog openDialog = new OpenFileDialog();
            openDialog.Filter = "Image files|*.bmp;*.jpg;*.png";
            openDialog.FilterIndex = 1;
            openDialog.Multiselect = true;
            if (openDialog.ShowDialog() == true)
            {
                base64List.Clear();
                foreach (string fileName in openDialog.FileNames)
                {
                    Image image = new Image { Source = new BitmapImage(new Uri(fileName)) };
                    byte[] imageArray = System.IO.File.ReadAllBytes(fileName);
                    String base64Text = Convert.ToBase64String(imageArray);
                    base64List.Add(base64Text);
                    imageList.Items.Add(image);
                }

                Debug.Write(openDialog.FileNames.Length);
            }

        }

        private void btnEnvia_Click(object sender, RoutedEventArgs e)
        {
            List<Image> imagens = new List<Image>();
            foreach (Image drv in imageList.Items)
            {
                imagens.Add(drv);
            }

            Debug.WriteLine(imagens.Count);

            foreach (String img64 in base64List)
            {
                //Preparando objeto para serializar imagem
                Imagens img = new Imagens();
                img.Tipo = retorno.user.tipo;
                img.Image = img64;
                img.Nome = Guid.NewGuid().ToString() + ".jpg";

                //Integrando imagem com o servidor
                ToRequestImg(img, endpoint + "/SavePhoto");

            }
            Debug.WriteLine("Imagens Enviadas");
        }

        private void btnUser_Click(object sender, RoutedEventArgs e)
        {
            String login = "plantação3-admin";
            String senha = "plantação3-admin";

            var objeto = new { login = login, senha = senha };

            PostUser(objeto, endpoint + "/login");
        }


        private void btnSobre_Click(object sender, RoutedEventArgs e)
        {
            JanelaSobre janelaSobre = new JanelaSobre();
            janelaSobre.Show();
        }

        public static async Task PostUser(object obj, String endpoint)
        {
            var httpClient = new HttpClient();
            var content = ToRequest(obj);
            var response = await httpClient.PostAsync(endpoint, content);
            String contents = await response.Content.ReadAsStringAsync();
            retorno = JsonConvert.DeserializeObject<Retorno>(contents);

            Debug.Write("Testando Retorno");
            Debug.Write(JsonConvert.DeserializeObject(contents));
            Console.WriteLine(retorno.token);
        }
        public static StringContent ToRequest(object obj)
        {
            var json = JsonConvert.SerializeObject(obj);
            var data = new StringContent(json, Encoding.UTF8, "application/json");

            return data;
        }

        /// <summary>
        /// Método que integra uma imagem com o servidor do GreenEyes
        /// </summary>
        /// <param name="obj"></param>
        /// <param name="endpoint"></param>
        /// <returns></returns>
        public static async Task ToRequestImg(object obj, String endpoint)
        {
            var json = JsonConvert.SerializeObject(obj);
            var content = new StringContent(json, Encoding.UTF8, "application/json");

            var httpClient = new HttpClient();
            httpClient.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", retorno.token);
            var response = await httpClient.PostAsync(endpoint, content);
            String contents = await response.Content.ReadAsStringAsync();
            retorno = JsonConvert.DeserializeObject<Retorno>(contents);

            Debug.Write(JsonConvert.DeserializeObject(contents));
        }
    }
}
