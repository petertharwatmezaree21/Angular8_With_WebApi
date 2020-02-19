import { Component, OnInit } from '@angular/core';
import { EmployeeService } from 'src/app/shared/employee.service';
import { NgForm } from '@angular/forms';
import { ToastrService } from 'ngx-toastr';
import { Employee } from 'src/app/shared/employee.model';

@Component({
  selector: 'app-employee',
  templateUrl: './employee.component.html',
  styleUrls: ['./employee.component.css']
})
export class EmployeeComponent implements OnInit {

  constructor(public serv: EmployeeService,private toaster:ToastrService) { }

  ngOnInit() {
    this.resetForm();
  }

  resetForm(form?: NgForm) {
    if (form != null)
      form.resetForm();
    this.serv.formData = {
      EmployeeID: null,
      FullName: '',
      EmployeeCode: '',
      Mobile: '',
      Position: ''
    };
  }

  onSubmit(form: NgForm) {
    if(form.value.EmployeeID == null)
    {//means we will insert
      this.insertRecord(form);
    }
    else
    {//mean we will update
      this.updateRecord(form)
    }
  }
  insertRecord(form: NgForm) {
this.serv.postEmployee(form.value)
.subscribe(res=>{ this.toaster.success("Inster Successfully","Employee Added");
 this.resetForm(form);
 this.serv.retriveAllEmployees(); 
});
}
  updateRecord(form:NgForm)
  {
    this.serv.putEmployee(form.value).subscribe(res=>{ this.toaster
      .success("Update Successfully","Employee Updated");
       this.resetForm(form);
      
       this.serv.retriveAllEmployees(); 
      });
  }

}
