using System;
using System.ComponentModel.DataAnnotations;

namespace DataAccess.Entities
{
    public class Sesion
    {
        private static Sesion _playerSesion = null;
        public string EmailAddress { get; set; }
        public string Username { get; set; }

        private Sesion() { }
        public static Sesion GetSesion
        {
            get
            {
                if (_playerSesion == null)
                {
                    _playerSesion = new Sesion();
                }
                return _playerSesion;
            }
        }
    }
}