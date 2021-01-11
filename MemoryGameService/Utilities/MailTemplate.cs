using MimeKit;
using MailKit.Net.Smtp;

namespace MemoryGameService.Utilities
{
    /// <summary>
    /// The <c>MailTemplate</c> class.
    /// This is a utility class designed to send emails.
    /// </summary>
    public class MailTemplate
    {
        private TextPart _message;
        private MimeMessage _content;
        private readonly MailboxAddress _sender;
        private MailboxAddress _receiver;
        private string _subject;
        private SmtpClient _client;
        private readonly log4net.ILog _logger = log4net.LogManager.GetLogger("MailTemplate.cs");
        /// <summary>
        /// The <c>MailTemplate</c> constructor.
        /// </summary>
        public MailTemplate()
        {
            _message = new TextPart("plain");
            _content = new MimeMessage();
            _client = new SmtpClient();            
            var sender = new MailboxAddress("memory.game.lis@gmail.com", "cfalpwtqeeitkhsk");
            _content.From.Add(sender);            
            _sender = new MailboxAddress("memorygame2020", "memory.game.lis@gmail.com");            
        }

        /// <summary>
        /// Defines the name and the email address of the one who is going to receive the email.
        /// </summary>
        /// <param name="name">Name of the receiver</param>
        /// <param name="emailAddress">email address of the receiver</param>
        public void SetReceiver(string name, string emailAddress)
        {
            _receiver = new MailboxAddress(name, emailAddress);
            _content.To.Add(_receiver);
        }

        /// <summary>
        /// Defines the content of the message to be sent.
        /// </summary>
        /// <param name="subject">The subject of the message</param>
        /// <param name="message">The content of the message</param>
        public void SetMessage(string subject, string message)
        {
            _message.Text = message;
            _subject = subject;
            _content.Body = _message;
            _content.Subject = subject;
        }

        /// <summary>
        /// Sends the message to the receiver.
        /// </summary>
        public void Send()
        {
            _client.Connect("smtp.gmail.com", 587, false);
            _client.Authenticate("memory.game.lis@gmail.com", "cfalpwtqeeitkhsk");
            _client.Send(_content);
            _client.Disconnect(true);
        }
    }
}
