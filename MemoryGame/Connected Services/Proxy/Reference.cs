﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Este código fue generado por una herramienta.
//     Versión de runtime:4.0.30319.42000
//
//     Los cambios en este archivo podrían causar un comportamiento incorrecto y se perderán si
//     se vuelve a generar el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MemoryGame.Proxy {
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="Proxy.IAccessibilityService")]
    public interface IAccessibilityService {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IAccessibilityService/HasAccessRights", ReplyAction="http://tempuri.org/IAccessibilityService/HasAccessRightsResponse")]
        bool HasAccessRights(MemoryGame.MemoryGameService.DataTransferObjects.PlayerCredentialsDTO playerCredentialsDTO);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IAccessibilityService/HasAccessRights", ReplyAction="http://tempuri.org/IAccessibilityService/HasAccessRightsResponse")]
        System.Threading.Tasks.Task<bool> HasAccessRightsAsync(MemoryGame.MemoryGameService.DataTransferObjects.PlayerCredentialsDTO playerCredentialsDTO);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IAccessibilityService/IsVerified", ReplyAction="http://tempuri.org/IAccessibilityService/IsVerifiedResponse")]
        bool IsVerified(string username);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IAccessibilityService/IsVerified", ReplyAction="http://tempuri.org/IAccessibilityService/IsVerifiedResponse")]
        System.Threading.Tasks.Task<bool> IsVerifiedAsync(string username);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IAccessibilityService/ItsRegistered", ReplyAction="http://tempuri.org/IAccessibilityService/ItsRegisteredResponse")]
        bool ItsRegistered(string emailAddress);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IAccessibilityService/ItsRegistered", ReplyAction="http://tempuri.org/IAccessibilityService/ItsRegisteredResponse")]
        System.Threading.Tasks.Task<bool> ItsRegisteredAsync(string emailAddress);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IAccessibilityService/GetUserEmailAddress", ReplyAction="http://tempuri.org/IAccessibilityService/GetUserEmailAddressResponse")]
        string GetUserEmailAddress(string username);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IAccessibilityService/GetUserEmailAddress", ReplyAction="http://tempuri.org/IAccessibilityService/GetUserEmailAddressResponse")]
        System.Threading.Tasks.Task<string> GetUserEmailAddressAsync(string username);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IAccessibilityService/GetUsername", ReplyAction="http://tempuri.org/IAccessibilityService/GetUsernameResponse")]
        string GetUsername(string emailAddress);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IAccessibilityService/GetUsername", ReplyAction="http://tempuri.org/IAccessibilityService/GetUsernameResponse")]
        System.Threading.Tasks.Task<string> GetUsernameAsync(string emailAddress);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IAccessibilityServiceChannel : MemoryGame.Proxy.IAccessibilityService, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class AccessibilityServiceClient : System.ServiceModel.ClientBase<MemoryGame.Proxy.IAccessibilityService>, MemoryGame.Proxy.IAccessibilityService {
        
        public AccessibilityServiceClient() {
        }
        
        public AccessibilityServiceClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public AccessibilityServiceClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public AccessibilityServiceClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public AccessibilityServiceClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public bool HasAccessRights(MemoryGame.MemoryGameService.DataTransferObjects.PlayerCredentialsDTO playerCredentialsDTO) {
            return base.Channel.HasAccessRights(playerCredentialsDTO);
        }
        
        public System.Threading.Tasks.Task<bool> HasAccessRightsAsync(MemoryGame.MemoryGameService.DataTransferObjects.PlayerCredentialsDTO playerCredentialsDTO) {
            return base.Channel.HasAccessRightsAsync(playerCredentialsDTO);
        }
        
        public bool IsVerified(string username) {
            return base.Channel.IsVerified(username);
        }
        
        public System.Threading.Tasks.Task<bool> IsVerifiedAsync(string username) {
            return base.Channel.IsVerifiedAsync(username);
        }
        
        public bool ItsRegistered(string emailAddress) {
            return base.Channel.ItsRegistered(emailAddress);
        }
        
        public System.Threading.Tasks.Task<bool> ItsRegisteredAsync(string emailAddress) {
            return base.Channel.ItsRegisteredAsync(emailAddress);
        }
        
        public string GetUserEmailAddress(string username) {
            return base.Channel.GetUserEmailAddress(username);
        }
        
        public System.Threading.Tasks.Task<string> GetUserEmailAddressAsync(string username) {
            return base.Channel.GetUserEmailAddressAsync(username);
        }
        
        public string GetUsername(string emailAddress) {
            return base.Channel.GetUsername(emailAddress);
        }
        
        public System.Threading.Tasks.Task<string> GetUsernameAsync(string emailAddress) {
            return base.Channel.GetUsernameAsync(emailAddress);
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="Proxy.IAccountModifiabilityService")]
    public interface IAccountModifiabilityService {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IAccountModifiabilityService/SetNewPassword", ReplyAction="http://tempuri.org/IAccountModifiabilityService/SetNewPasswordResponse")]
        bool SetNewPassword(MemoryGame.MemoryGameService.DataTransferObjects.PlayerCredentialsDTO playerCredentialsDTO);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IAccountModifiabilityService/SetNewPassword", ReplyAction="http://tempuri.org/IAccountModifiabilityService/SetNewPasswordResponse")]
        System.Threading.Tasks.Task<bool> SetNewPasswordAsync(MemoryGame.MemoryGameService.DataTransferObjects.PlayerCredentialsDTO playerCredentialsDTO);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IAccountModifiabilityService/ChangeUsername", ReplyAction="http://tempuri.org/IAccountModifiabilityService/ChangeUsernameResponse")]
        bool ChangeUsername(MemoryGame.MemoryGameService.DataTransferObjects.PlayerCredentialsDTO playerCredentialsDTO);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IAccountModifiabilityService/ChangeUsername", ReplyAction="http://tempuri.org/IAccountModifiabilityService/ChangeUsernameResponse")]
        System.Threading.Tasks.Task<bool> ChangeUsernameAsync(MemoryGame.MemoryGameService.DataTransferObjects.PlayerCredentialsDTO playerCredentialsDTO);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IAccountModifiabilityServiceChannel : MemoryGame.Proxy.IAccountModifiabilityService, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class AccountModifiabilityServiceClient : System.ServiceModel.ClientBase<MemoryGame.Proxy.IAccountModifiabilityService>, MemoryGame.Proxy.IAccountModifiabilityService {
        
        public AccountModifiabilityServiceClient() {
        }
        
        public AccountModifiabilityServiceClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public AccountModifiabilityServiceClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public AccountModifiabilityServiceClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public AccountModifiabilityServiceClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public bool SetNewPassword(MemoryGame.MemoryGameService.DataTransferObjects.PlayerCredentialsDTO playerCredentialsDTO) {
            return base.Channel.SetNewPassword(playerCredentialsDTO);
        }
        
        public System.Threading.Tasks.Task<bool> SetNewPasswordAsync(MemoryGame.MemoryGameService.DataTransferObjects.PlayerCredentialsDTO playerCredentialsDTO) {
            return base.Channel.SetNewPasswordAsync(playerCredentialsDTO);
        }
        
        public bool ChangeUsername(MemoryGame.MemoryGameService.DataTransferObjects.PlayerCredentialsDTO playerCredentialsDTO) {
            return base.Channel.ChangeUsername(playerCredentialsDTO);
        }
        
        public System.Threading.Tasks.Task<bool> ChangeUsernameAsync(MemoryGame.MemoryGameService.DataTransferObjects.PlayerCredentialsDTO playerCredentialsDTO) {
            return base.Channel.ChangeUsernameAsync(playerCredentialsDTO);
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="Proxy.IAccountVerificationService")]
    public interface IAccountVerificationService {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IAccountVerificationService/SetAccountAsVerified", ReplyAction="http://tempuri.org/IAccountVerificationService/SetAccountAsVerifiedResponse")]
        bool SetAccountAsVerified(string emailAddress);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IAccountVerificationService/SetAccountAsVerified", ReplyAction="http://tempuri.org/IAccountVerificationService/SetAccountAsVerifiedResponse")]
        System.Threading.Tasks.Task<bool> SetAccountAsVerifiedAsync(string emailAddress);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IAccountVerificationService/AssignNewVerificationToken", ReplyAction="http://tempuri.org/IAccountVerificationService/AssignNewVerificationTokenResponse" +
            "")]
        bool AssignNewVerificationToken(string emailAddress, string verificationToken);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IAccountVerificationService/AssignNewVerificationToken", ReplyAction="http://tempuri.org/IAccountVerificationService/AssignNewVerificationTokenResponse" +
            "")]
        System.Threading.Tasks.Task<bool> AssignNewVerificationTokenAsync(string emailAddress, string verificationToken);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IAccountVerificationService/VerifyToken", ReplyAction="http://tempuri.org/IAccountVerificationService/VerifyTokenResponse")]
        bool VerifyToken(string emailAddress, string verificationToken);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IAccountVerificationService/VerifyToken", ReplyAction="http://tempuri.org/IAccountVerificationService/VerifyTokenResponse")]
        System.Threading.Tasks.Task<bool> VerifyTokenAsync(string emailAddress, string verificationToken);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IAccountVerificationServiceChannel : MemoryGame.Proxy.IAccountVerificationService, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class AccountVerificationServiceClient : System.ServiceModel.ClientBase<MemoryGame.Proxy.IAccountVerificationService>, MemoryGame.Proxy.IAccountVerificationService {
        
        public AccountVerificationServiceClient() {
        }
        
        public AccountVerificationServiceClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public AccountVerificationServiceClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public AccountVerificationServiceClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public AccountVerificationServiceClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public bool SetAccountAsVerified(string emailAddress) {
            return base.Channel.SetAccountAsVerified(emailAddress);
        }
        
        public System.Threading.Tasks.Task<bool> SetAccountAsVerifiedAsync(string emailAddress) {
            return base.Channel.SetAccountAsVerifiedAsync(emailAddress);
        }
        
        public bool AssignNewVerificationToken(string emailAddress, string verificationToken) {
            return base.Channel.AssignNewVerificationToken(emailAddress, verificationToken);
        }
        
        public System.Threading.Tasks.Task<bool> AssignNewVerificationTokenAsync(string emailAddress, string verificationToken) {
            return base.Channel.AssignNewVerificationTokenAsync(emailAddress, verificationToken);
        }
        
        public bool VerifyToken(string emailAddress, string verificationToken) {
            return base.Channel.VerifyToken(emailAddress, verificationToken);
        }
        
        public System.Threading.Tasks.Task<bool> VerifyTokenAsync(string emailAddress, string verificationToken) {
            return base.Channel.VerifyTokenAsync(emailAddress, verificationToken);
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="Proxy.ICommunicationService", CallbackContract=typeof(MemoryGame.Proxy.ICommunicationServiceCallback))]
    public interface ICommunicationService {
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/ICommunicationService/Join")]
        void Join(string username);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/ICommunicationService/Join")]
        System.Threading.Tasks.Task JoinAsync(string username);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/ICommunicationService/SendMessage")]
        void SendMessage(string message);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/ICommunicationService/SendMessage")]
        System.Threading.Tasks.Task SendMessageAsync(string message);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface ICommunicationServiceCallback {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ICommunicationService/ReciveMessage", ReplyAction="http://tempuri.org/ICommunicationService/ReciveMessageResponse")]
        void ReciveMessage(string username, string message);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface ICommunicationServiceChannel : MemoryGame.Proxy.ICommunicationService, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class CommunicationServiceClient : System.ServiceModel.DuplexClientBase<MemoryGame.Proxy.ICommunicationService>, MemoryGame.Proxy.ICommunicationService {
        
        public CommunicationServiceClient(System.ServiceModel.InstanceContext callbackInstance) : 
                base(callbackInstance) {
        }
        
        public CommunicationServiceClient(System.ServiceModel.InstanceContext callbackInstance, string endpointConfigurationName) : 
                base(callbackInstance, endpointConfigurationName) {
        }
        
        public CommunicationServiceClient(System.ServiceModel.InstanceContext callbackInstance, string endpointConfigurationName, string remoteAddress) : 
                base(callbackInstance, endpointConfigurationName, remoteAddress) {
        }
        
        public CommunicationServiceClient(System.ServiceModel.InstanceContext callbackInstance, string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(callbackInstance, endpointConfigurationName, remoteAddress) {
        }
        
        public CommunicationServiceClient(System.ServiceModel.InstanceContext callbackInstance, System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(callbackInstance, binding, remoteAddress) {
        }
        
        public void Join(string username) {
            base.Channel.Join(username);
        }
        
        public System.Threading.Tasks.Task JoinAsync(string username) {
            return base.Channel.JoinAsync(username);
        }
        
        public void SendMessage(string message) {
            base.Channel.SendMessage(message);
        }
        
        public System.Threading.Tasks.Task SendMessageAsync(string message) {
            return base.Channel.SendMessageAsync(message);
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="Proxy.IMailingService")]
    public interface IMailingService {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IMailingService/SendVerificationToken", ReplyAction="http://tempuri.org/IMailingService/SendVerificationTokenResponse")]
        void SendVerificationToken(string name, string emailAddress, string verificationToken);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IMailingService/SendVerificationToken", ReplyAction="http://tempuri.org/IMailingService/SendVerificationTokenResponse")]
        System.Threading.Tasks.Task SendVerificationTokenAsync(string name, string emailAddress, string verificationToken);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IMailingServiceChannel : MemoryGame.Proxy.IMailingService, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class MailingServiceClient : System.ServiceModel.ClientBase<MemoryGame.Proxy.IMailingService>, MemoryGame.Proxy.IMailingService {
        
        public MailingServiceClient() {
        }
        
        public MailingServiceClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public MailingServiceClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public MailingServiceClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public MailingServiceClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public void SendVerificationToken(string name, string emailAddress, string verificationToken) {
            base.Channel.SendVerificationToken(name, emailAddress, verificationToken);
        }
        
        public System.Threading.Tasks.Task SendVerificationTokenAsync(string name, string emailAddress, string verificationToken) {
            return base.Channel.SendVerificationTokenAsync(name, emailAddress, verificationToken);
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="Proxy.IMatchService", CallbackContract=typeof(MemoryGame.Proxy.IMatchServiceCallback))]
    public interface IMatchService {
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IMatchService/GetActivePlayers")]
        void GetActivePlayers();
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IMatchService/GetActivePlayers")]
        System.Threading.Tasks.Task GetActivePlayersAsync();
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IMatchServiceCallback {
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IMatchService/ShowActivePlayers")]
        void ShowActivePlayers(string[] activePlayers);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IMatchServiceChannel : MemoryGame.Proxy.IMatchService, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class MatchServiceClient : System.ServiceModel.DuplexClientBase<MemoryGame.Proxy.IMatchService>, MemoryGame.Proxy.IMatchService {
        
        public MatchServiceClient(System.ServiceModel.InstanceContext callbackInstance) : 
                base(callbackInstance) {
        }
        
        public MatchServiceClient(System.ServiceModel.InstanceContext callbackInstance, string endpointConfigurationName) : 
                base(callbackInstance, endpointConfigurationName) {
        }
        
        public MatchServiceClient(System.ServiceModel.InstanceContext callbackInstance, string endpointConfigurationName, string remoteAddress) : 
                base(callbackInstance, endpointConfigurationName, remoteAddress) {
        }
        
        public MatchServiceClient(System.ServiceModel.InstanceContext callbackInstance, string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(callbackInstance, endpointConfigurationName, remoteAddress) {
        }
        
        public MatchServiceClient(System.ServiceModel.InstanceContext callbackInstance, System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(callbackInstance, binding, remoteAddress) {
        }
        
        public void GetActivePlayers() {
            base.Channel.GetActivePlayers();
        }
        
        public System.Threading.Tasks.Task GetActivePlayersAsync() {
            return base.Channel.GetActivePlayersAsync();
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="Proxy.ITokenGenerator")]
    public interface ITokenGenerator {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ITokenGenerator/GenerateToken", ReplyAction="http://tempuri.org/ITokenGenerator/GenerateTokenResponse")]
        string GenerateToken(int length);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ITokenGenerator/GenerateToken", ReplyAction="http://tempuri.org/ITokenGenerator/GenerateTokenResponse")]
        System.Threading.Tasks.Task<string> GenerateTokenAsync(int length);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface ITokenGeneratorChannel : MemoryGame.Proxy.ITokenGenerator, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class TokenGeneratorClient : System.ServiceModel.ClientBase<MemoryGame.Proxy.ITokenGenerator>, MemoryGame.Proxy.ITokenGenerator {
        
        public TokenGeneratorClient() {
        }
        
        public TokenGeneratorClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public TokenGeneratorClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public TokenGeneratorClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public TokenGeneratorClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public string GenerateToken(int length) {
            return base.Channel.GenerateToken(length);
        }
        
        public System.Threading.Tasks.Task<string> GenerateTokenAsync(int length) {
            return base.Channel.GenerateTokenAsync(length);
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="Proxy.IScoreService")]
    public interface IScoreService {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IScoreService/GetPlayersWithBestScore", ReplyAction="http://tempuri.org/IScoreService/GetPlayersWithBestScoreResponse")]
        MemoryGame.MemoryGameService.DataTransferObjects.PlayerScoreDTO[] GetPlayersWithBestScore(int numberOfPlayersToBeRetrieved);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IScoreService/GetPlayersWithBestScore", ReplyAction="http://tempuri.org/IScoreService/GetPlayersWithBestScoreResponse")]
        System.Threading.Tasks.Task<MemoryGame.MemoryGameService.DataTransferObjects.PlayerScoreDTO[]> GetPlayersWithBestScoreAsync(int numberOfPlayersToBeRetrieved);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IScoreServiceChannel : MemoryGame.Proxy.IScoreService, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class ScoreServiceClient : System.ServiceModel.ClientBase<MemoryGame.Proxy.IScoreService>, MemoryGame.Proxy.IScoreService {
        
        public ScoreServiceClient() {
        }
        
        public ScoreServiceClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public ScoreServiceClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public ScoreServiceClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public ScoreServiceClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public MemoryGame.MemoryGameService.DataTransferObjects.PlayerScoreDTO[] GetPlayersWithBestScore(int numberOfPlayersToBeRetrieved) {
            return base.Channel.GetPlayersWithBestScore(numberOfPlayersToBeRetrieved);
        }
        
        public System.Threading.Tasks.Task<MemoryGame.MemoryGameService.DataTransferObjects.PlayerScoreDTO[]> GetPlayersWithBestScoreAsync(int numberOfPlayersToBeRetrieved) {
            return base.Channel.GetPlayersWithBestScoreAsync(numberOfPlayersToBeRetrieved);
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="Proxy.IPlayerRegistryService")]
    public interface IPlayerRegistryService {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IPlayerRegistryService/RegisterNewPlayer", ReplyAction="http://tempuri.org/IPlayerRegistryService/RegisterNewPlayerResponse")]
        bool RegisterNewPlayer(MemoryGame.MemoryGameService.DataTransferObjects.PlayerDTO playerDTO);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IPlayerRegistryService/RegisterNewPlayer", ReplyAction="http://tempuri.org/IPlayerRegistryService/RegisterNewPlayerResponse")]
        System.Threading.Tasks.Task<bool> RegisterNewPlayerAsync(MemoryGame.MemoryGameService.DataTransferObjects.PlayerDTO playerDTO);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IPlayerRegistryService/EmailAddressIsAvailable", ReplyAction="http://tempuri.org/IPlayerRegistryService/EmailAddressIsAvailableResponse")]
        bool EmailAddressIsAvailable(string emailAddress);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IPlayerRegistryService/EmailAddressIsAvailable", ReplyAction="http://tempuri.org/IPlayerRegistryService/EmailAddressIsAvailableResponse")]
        System.Threading.Tasks.Task<bool> EmailAddressIsAvailableAsync(string emailAddress);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IPlayerRegistryService/UserNameIsAvailable", ReplyAction="http://tempuri.org/IPlayerRegistryService/UserNameIsAvailableResponse")]
        bool UserNameIsAvailable(string username);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IPlayerRegistryService/UserNameIsAvailable", ReplyAction="http://tempuri.org/IPlayerRegistryService/UserNameIsAvailableResponse")]
        System.Threading.Tasks.Task<bool> UserNameIsAvailableAsync(string username);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IPlayerRegistryServiceChannel : MemoryGame.Proxy.IPlayerRegistryService, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class PlayerRegistryServiceClient : System.ServiceModel.ClientBase<MemoryGame.Proxy.IPlayerRegistryService>, MemoryGame.Proxy.IPlayerRegistryService {
        
        public PlayerRegistryServiceClient() {
        }
        
        public PlayerRegistryServiceClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public PlayerRegistryServiceClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public PlayerRegistryServiceClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public PlayerRegistryServiceClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public bool RegisterNewPlayer(MemoryGame.MemoryGameService.DataTransferObjects.PlayerDTO playerDTO) {
            return base.Channel.RegisterNewPlayer(playerDTO);
        }
        
        public System.Threading.Tasks.Task<bool> RegisterNewPlayerAsync(MemoryGame.MemoryGameService.DataTransferObjects.PlayerDTO playerDTO) {
            return base.Channel.RegisterNewPlayerAsync(playerDTO);
        }
        
        public bool EmailAddressIsAvailable(string emailAddress) {
            return base.Channel.EmailAddressIsAvailable(emailAddress);
        }
        
        public System.Threading.Tasks.Task<bool> EmailAddressIsAvailableAsync(string emailAddress) {
            return base.Channel.EmailAddressIsAvailableAsync(emailAddress);
        }
        
        public bool UserNameIsAvailable(string username) {
            return base.Channel.UserNameIsAvailable(username);
        }
        
        public System.Threading.Tasks.Task<bool> UserNameIsAvailableAsync(string username) {
            return base.Channel.UserNameIsAvailableAsync(username);
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="Proxy.IShufflingCardService")]
    public interface IShufflingCardService {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IShufflingCardService/ShuffleCards", ReplyAction="http://tempuri.org/IShufflingCardService/ShuffleCardsResponse")]
        MemoryGame.MemoryGameService.DataTransferObjects.CardDTO[] ShuffleCards();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IShufflingCardService/ShuffleCards", ReplyAction="http://tempuri.org/IShufflingCardService/ShuffleCardsResponse")]
        System.Threading.Tasks.Task<MemoryGame.MemoryGameService.DataTransferObjects.CardDTO[]> ShuffleCardsAsync();
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IShufflingCardServiceChannel : MemoryGame.Proxy.IShufflingCardService, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class ShufflingCardServiceClient : System.ServiceModel.ClientBase<MemoryGame.Proxy.IShufflingCardService>, MemoryGame.Proxy.IShufflingCardService {
        
        public ShufflingCardServiceClient() {
        }
        
        public ShufflingCardServiceClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public ShufflingCardServiceClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public ShufflingCardServiceClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public ShufflingCardServiceClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public MemoryGame.MemoryGameService.DataTransferObjects.CardDTO[] ShuffleCards() {
            return base.Channel.ShuffleCards();
        }
        
        public System.Threading.Tasks.Task<MemoryGame.MemoryGameService.DataTransferObjects.CardDTO[]> ShuffleCardsAsync() {
            return base.Channel.ShuffleCardsAsync();
        }
    }
}
