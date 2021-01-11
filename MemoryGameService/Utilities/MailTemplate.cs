using MimeKit;
using MailKit.Net.Smtp;

namespace MemoryGameService.Utilities
{
    public class MailTemplate
    {
        private TextPart _message;
        private MimeMessage _content;
        private readonly MailboxAddress _sender;
        private MailboxAddress _receiver;
        private string _subject;
        private SmtpClient _client;

        public MailTemplate()
        {
            _message = new TextPart("plain");
            _content = new MimeMessage();
            _client = new SmtpClient();
            _client.Connect("smtp.gmail.com", 587, false);
            var sender = new MailboxAddress("memory.game.lis@gmail.com", "cfalpwtqeeitkhsk");
            _content.From.Add(sender);            
            _sender = new MailboxAddress("memorygame2020", "memory.game.lis@gmail.com");
            _client.Authenticate("memory.game.lis@gmail.com", "cfalpwtqeeitkhsk");
        }

        public void SetReceiver(string name, string emailAddress)
        {
            _receiver = new MailboxAddress(name, emailAddress);
            _content.To.Add(_receiver);
        }

        public void SetMessage(string subject, string message)
        {
            _message.Text = message;
            _subject = subject;
            _content.Body = _message;
            _content.Subject = subject;
        }

        public void Send()
        {
            _client.Send(_content);            
            _client.Disconnect(true);
        }
    }
}
