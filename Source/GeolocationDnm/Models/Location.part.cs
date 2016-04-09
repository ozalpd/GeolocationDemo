using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GeolocationDnm.Models
{
    public partial class Location
    {
        public DateTime Time
        {
            get
            {
                var dateTime = new System.DateTime(1970, 1, 1, 0, 0, 0, 0, DateTimeKind.Utc);
                return dateTime.AddSeconds(TimeStamp/1000).ToLocalTime();
            }
        }
    }
}