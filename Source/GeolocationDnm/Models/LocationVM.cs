using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity.Spatial;

namespace GeolocationDnm.Models
{
    public class LocationVM
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public string StreetName { get; set; }
        public string Notes { get; set; }
        public string Longitude { get; set; }
        public string Latitude { get; set; }
        public long TimeStamp { get; set; }
        public long Accuracy { get; set; }
        public string ExtraData { get; set; }

        public Location ToLocation()
        {
            var location = new Location();
            location.Id = Id;
            location.Geolocation = DbGeography.FromText(string.Format("POINT({1} {0})", Latitude, Longitude));
            location.Title = Title;
            location.Notes = Notes;
            location.StreetName = StreetName;
            location.ExtraData = ExtraData;
            location.TimeStamp = TimeStamp;
            location.Accuracy = Accuracy;

            return location;
        }
    }
}