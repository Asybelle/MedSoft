//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ClassLibrary1
{
    using System;
    using System.Collections.Generic;
    
    public partial class Alarm
    {
        public System.Guid AlarmId { get; set; }
        public string AlarmName { get; set; }
        public string AlarmDescription { get; set; }
        public Nullable<int> PulseMinValue { get; set; }
        public Nullable<int> PulseMaxValue { get; set; }
        public Nullable<int> TempMinValue { get; set; }
        public Nullable<int> TempMaxValue { get; set; }
        public Nullable<int> PersistanceDuration { get; set; }
        public System.Guid DoctorId { get; set; }
    
        public virtual Doctor Doctor { get; set; }
    }
}
