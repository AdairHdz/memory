namespace DataAccess.Entities
{
    // <summary>
    /// The <c>Sesion</c> class
    /// It is an entity that stores Sesion data of a Player who entered the game.
    /// </summary>
    public class Sesion
    {
        private static Sesion _playerSesion = null;
        /// <summary>
        /// Player email address.S
        /// </summary>
        public string EmailAddress { get; set; }
        /// <summary>
        /// Player username.
        /// </summary>
        public string Username { get; set; }

        private Sesion() { }
        /// <summary>
        /// Gets the sesion data of the Player.
        /// </summary>
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