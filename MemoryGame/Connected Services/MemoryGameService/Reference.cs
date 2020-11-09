﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Este código fue generado por una herramienta.
//     Versión de runtime:4.0.30319.42000
//
//     Los cambios en este archivo podrían causar un comportamiento incorrecto y se perderán si
//     se vuelve a generar el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MemoryGame.MemoryGameService {
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="MemoryGameService.IAccessibilityService")]
    public interface IAccessibilityService {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IAccessibilityService/HasAccessRights", ReplyAction="http://tempuri.org/IAccessibilityService/HasAccessRightsResponse")]
        bool HasAccessRights(string username, string password);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IAccessibilityService/HasAccessRights", ReplyAction="http://tempuri.org/IAccessibilityService/HasAccessRightsResponse")]
        System.Threading.Tasks.Task<bool> HasAccessRightsAsync(string username, string password);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IAccessibilityServiceChannel : MemoryGame.MemoryGameService.IAccessibilityService, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class AccessibilityServiceClient : System.ServiceModel.ClientBase<MemoryGame.MemoryGameService.IAccessibilityService>, MemoryGame.MemoryGameService.IAccessibilityService {
        
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
        
        public bool HasAccessRights(string username, string password) {
            return base.Channel.HasAccessRights(username, password);
        }
        
        public System.Threading.Tasks.Task<bool> HasAccessRightsAsync(string username, string password) {
            return base.Channel.HasAccessRightsAsync(username, password);
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="MemoryGameService.ICommunicationService")]
    public interface ICommunicationService {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ICommunicationService/SendMessage", ReplyAction="http://tempuri.org/ICommunicationService/SendMessageResponse")]
        void SendMessage(string message);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ICommunicationService/SendMessage", ReplyAction="http://tempuri.org/ICommunicationService/SendMessageResponse")]
        System.Threading.Tasks.Task SendMessageAsync(string message);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ICommunicationService/GetMessage", ReplyAction="http://tempuri.org/ICommunicationService/GetMessageResponse")]
        string GetMessage();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ICommunicationService/GetMessage", ReplyAction="http://tempuri.org/ICommunicationService/GetMessageResponse")]
        System.Threading.Tasks.Task<string> GetMessageAsync();
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface ICommunicationServiceChannel : MemoryGame.MemoryGameService.ICommunicationService, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class CommunicationServiceClient : System.ServiceModel.ClientBase<MemoryGame.MemoryGameService.ICommunicationService>, MemoryGame.MemoryGameService.ICommunicationService {
        
        public CommunicationServiceClient() {
        }
        
        public CommunicationServiceClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public CommunicationServiceClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public CommunicationServiceClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public CommunicationServiceClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public void SendMessage(string message) {
            base.Channel.SendMessage(message);
        }
        
        public System.Threading.Tasks.Task SendMessageAsync(string message) {
            return base.Channel.SendMessageAsync(message);
        }
        
        public string GetMessage() {
            return base.Channel.GetMessage();
        }
        
        public System.Threading.Tasks.Task<string> GetMessageAsync() {
            return base.Channel.GetMessageAsync();
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="MemoryGameService.IMemoryGameService", CallbackContract=typeof(MemoryGame.MemoryGameService.IMemoryGameServiceCallback))]
    public interface IMemoryGameService {
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IMemoryGameService/GetActivePlayers")]
        void GetActivePlayers();
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IMemoryGameService/GetActivePlayers")]
        System.Threading.Tasks.Task GetActivePlayersAsync();
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IMemoryGameServiceCallback {
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IMemoryGameService/ShowActivePlayers")]
        void ShowActivePlayers(string[] activePlayers);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IMemoryGameServiceChannel : MemoryGame.MemoryGameService.IMemoryGameService, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class MemoryGameServiceClient : System.ServiceModel.DuplexClientBase<MemoryGame.MemoryGameService.IMemoryGameService>, MemoryGame.MemoryGameService.IMemoryGameService {
        
        public MemoryGameServiceClient(System.ServiceModel.InstanceContext callbackInstance) : 
                base(callbackInstance) {
        }
        
        public MemoryGameServiceClient(System.ServiceModel.InstanceContext callbackInstance, string endpointConfigurationName) : 
                base(callbackInstance, endpointConfigurationName) {
        }
        
        public MemoryGameServiceClient(System.ServiceModel.InstanceContext callbackInstance, string endpointConfigurationName, string remoteAddress) : 
                base(callbackInstance, endpointConfigurationName, remoteAddress) {
        }
        
        public MemoryGameServiceClient(System.ServiceModel.InstanceContext callbackInstance, string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(callbackInstance, endpointConfigurationName, remoteAddress) {
        }
        
        public MemoryGameServiceClient(System.ServiceModel.InstanceContext callbackInstance, System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(callbackInstance, binding, remoteAddress) {
        }
        
        public void GetActivePlayers() {
            base.Channel.GetActivePlayers();
        }
        
        public System.Threading.Tasks.Task GetActivePlayersAsync() {
            return base.Channel.GetActivePlayersAsync();
        }
    }
}
