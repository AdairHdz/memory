using MimeKit;
using MailKit.Net.Smtp;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Utilities
{
    public class MailTemplate
    {
        private TextPart _message;
        private MimeMessage _content;
        private MailboxAddress _sender = new MailboxAddress("memory.game.lis@gmail.com", "memorygame2020");
        private MailboxAddress _receiver;
        private string _subject;
        private SmtpClient _client;

        public MailTemplate()
        {
            this._message = new TextPart("plain");
            this._content = new MimeMessage();
            _client = new SmtpClient();
            _client.Connect("smtp.gmail.com", 587, false);
            _content.From.Add(_sender);
            _sender = new MailboxAddress("memorygame2020", "memory.game.lis@gmail.com");
            _client.Authenticate("memory.game.lis@gmail.com", "memorygame2020");
        }

        public void SetSender(string name, string emailAddress)
        {
            this._sender = new MailboxAddress(name, emailAddress);
            this._content.From.Add(this._sender);
        }

        public void SetReceiver(string name, string emailAddress)
        {
            this._receiver = new MailboxAddress(name, emailAddress);
            this._content.To.Add(this._receiver);
        }

        public void SetMessage(string subject, string message)
        {
            this._message.Text = message;
            this._subject = subject;
            this._content.Body = this._message;
            _content.Subject = subject;
        }

        public void Send()
        {
            _client.Send(_content);            
            _client.Disconnect(true);
        }
    }
}
