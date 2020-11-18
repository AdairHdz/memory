using System;
using System.ComponentModel.DataAnnotations;

namespace DataAccess.Models
{
    public class Sesion
    {
        private static Sesion playerSesion = null;
        public string EmailAddress { get; set; }
        public string Username { get; set; }

        private Sesion() { }
        public static Sesion getSesionData
        {
            get
            {
                if (playerSesion == null)
                {
                    playerSesion = new Sesion();
                }
                return playerSesion;
            }
        }
    }
}
