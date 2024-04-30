using System;
using System.Collections.Generic;
using System.Linq;

namespace DataAccess
{
    public class DataAccess : IDisposable
    { 
        public void Dispose()
        { 
            GC.SuppressFinalize(this);
        }
        

    }
}
