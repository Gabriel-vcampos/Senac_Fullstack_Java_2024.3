import { Component, OnInit } from '@angular/core';
import { LoginService } from '../login.service';


@Component({
  selector: 'app-users',
  templateUrl: './users.component.html',
  styleUrls: ['./users.component.scss']
})
export class UsersComponent implements OnInit {

  users: any[] = [];

  constructor(private loginService: LoginService) { }

ngOnInit(): void {

  this.getUsers();
}

getUsers() {

  this.loginService.getUsers().subscribe(users => {
    this.users = users;
  });

}

}
