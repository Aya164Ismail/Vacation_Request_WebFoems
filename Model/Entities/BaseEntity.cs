using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VacationRequestWebForm.Model
{
    public class BaseEntity
    {
        public Guid Id { get; set; }
        public DateTime DateCreated { get; set; } = DateTime.Now;
        public DateTime ProcessTime { get; set; } = DateTime.Now;
    }
}