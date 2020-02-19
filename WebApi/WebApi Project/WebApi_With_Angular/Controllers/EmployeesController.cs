using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Description;
using WebApi_With_Angular.Models;

namespace WebApi_With_Angular.Controllers
{
    public class EmployeesController : ApiController
    {
        private EmployeeWithAngularAndWepApiEntities db = new EmployeeWithAngularAndWepApiEntities();

        // GET: api/Employees
        public IQueryable<Employees> GetEmployees()
        {
            return db.Employees;
        }

        // PUT: api/Employees/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutEmployees(int id, Employees employees)
        {


            if (id != employees.EmployeeID)
            {
                return BadRequest();
            }

            db.Entry(employees).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!EmployeesExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return StatusCode(HttpStatusCode.NoContent);
        }

        // POST: api/Employees
        [ResponseType(typeof(Employees))]
        public IHttpActionResult PostEmployees(Employees employees)
        {

            db.Employees.Add(employees);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = employees.EmployeeID }, employees);
        }

        // DELETE: api/Employees/5
        [ResponseType(typeof(Employees))]
        public IHttpActionResult DeleteEmployees(int id)
        {
            Employees employees = db.Employees.Find(id);
            if (employees == null)
            {
                return NotFound();
            }

            db.Employees.Remove(employees);
            db.SaveChanges();

            return Ok(employees);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool EmployeesExists(int id)
        {
            return db.Employees.Count(e => e.EmployeeID == id) > 0;
        }
    }
}