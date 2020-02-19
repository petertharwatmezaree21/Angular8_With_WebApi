import { Component, OnInit } from '@angular/core';
import { EmployeeService } from 'src/app/shared/employee.service';
import { Employee } from 'src/app/shared/employee.model';
import { ToastrService } from 'ngx-toastr';

@Component({
  selector: 'app-employee-list',
  templateUrl: './employee-list.component.html',
  styleUrls: ['./employee-list.component.css']
})
export class EmployeeListComponent implements OnInit {

  constructor(public serv:EmployeeService,private toaster:ToastrService) { }

  ngOnInit(): void {
    this.serv.retriveAllEmployees();
  }

  populateForm(emp:Employee)
  {
    this.serv.formData=Object.assign({},emp);
  }

  DeleteItem(num:number){ 
    if(confirm('Are you sure that you want to detele this record'))
    {
      
      this.serv.DeleteEmployee(num).subscribe(res=>{ this.toaster
        .error("Delete Successfully","Employee Deleted");  
        this.serv.retriveAllEmployees();
        
          });
         
     
    }
  }

}
