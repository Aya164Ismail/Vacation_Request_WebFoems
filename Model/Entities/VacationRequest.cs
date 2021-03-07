using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VacationRequestWebForm.Model
{
    public class VacationRequest : BaseEntity
    {
        public string EmployeeName { get; set; }
        public string Department { get; set; }
        public string Title { get; set; }
        public DateTime VacationFrom { get; set; }
        public DateTime VacationTo { get; set; }
        public DateTime Returning { get; set; }
        public string Notes { get; set; }

    }
}