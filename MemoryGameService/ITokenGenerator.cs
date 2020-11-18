﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace MemoryGameService
{
    [ServiceContract]
    public interface ITokenGenerator
    {
        [OperationContract]
        string GenerateToken(int length);
    }
}