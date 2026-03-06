using MagicOnion.Server.Hubs;

using BIS.Shared.Network;





namespace BIS.Server
{
    public class BISServerCalls : StreamingHubBase<IBISServerCalls , IBISClientCalls> , IBISServerCalls
    {
    }
}
