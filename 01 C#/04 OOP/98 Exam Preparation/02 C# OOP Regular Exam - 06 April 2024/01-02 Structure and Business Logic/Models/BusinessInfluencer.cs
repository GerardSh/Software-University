﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace InfluencerManagerApp.Models
{
    public class BusinessInfluencer : Influencer
    {
        public BusinessInfluencer(string username, int followers) 
            : base(username, followers, 3, 0.15)
        {
        }
    }
}
