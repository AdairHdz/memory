﻿using System;
using System.Collections.Generic;
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

namespace MemoryGame
{
    /// <summary>
    /// Lógica de interacción para ActivationToken.xaml
    /// </summary>
    public partial class ActivationToken : Window
    {
        private string _emailAddress;
        private string _username;
        public ActivationToken()
        {
            InitializeComponent();
        }

        public ActivationToken(string emailAddress, string username)
        {
            InitializeComponent();
            _emailAddress = emailAddress;
            _username = username;
        }

        private void OkButtonClicked(object sender, RoutedEventArgs e)
        {
            
            if (TokenIsCorrect())
            {
                if (AccountWasSuccessfullyVerified())
                {
                    MessageBox.Show("Cuenta activada exitosamente");
                }
                else
                {
                    MessageBox.Show("No se pudo activar la cuenta");
                }
            }
            else
            {
                MessageBox.Show("El código introducido no concuerda con el que enviamos a su correo electrónico");
            }
        }
        
        private void SendNewCodeButtonClicked(object sender, RoutedEventArgs e)
        {
            
            MemoryGameService.TokenGeneratorClient tokenGeneratorClient =
                new MemoryGameService.TokenGeneratorClient();
            string newToken = tokenGeneratorClient.GenerateToken(6);

            MemoryGameService.AccessibilityServiceClient accesibilityServiceClient =
                new MemoryGameService.AccessibilityServiceClient();
            accesibilityServiceClient.AssignNewVerificationToken(_emailAddress, newToken);

            MemoryGameService.MailingServiceClient mailingServiceClient =
                new MemoryGameService.MailingServiceClient();
            mailingServiceClient.SendVerificationToken(_username, _emailAddress, newToken);

            MessageBox.Show("Nuevo código enviado");

        }

        private bool TokenIsCorrect()
        {
            MemoryGameService.AccessibilityServiceClient client =
                new MemoryGameService.AccessibilityServiceClient();
            return client.VerifyToken(_emailAddress, TextBoxToken.Text);
        }

        private bool AccountWasSuccessfullyVerified()
        {
            MemoryGameService.AccessibilityServiceClient client =
                new MemoryGameService.AccessibilityServiceClient();
            return client.SetAccountAsVerified(_emailAddress);
        }

        
    }
}
