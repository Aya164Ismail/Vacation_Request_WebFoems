using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VacationRequestWebForm.Model
{
    public class Users : BaseEntity
    {
        public string FullName { get; set; }
        public string Password { get; set; }
    }
}