import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class LoginService {

  private apiUrl ='http://localhost:3000'

  constructor(private http: HttpClient) { }


  getHeaders(): HttpHeaders{
    return new HttpHeaders({
      'Content-Type': 'application/json',
      Authorization: 'Bearer ' + `${this.getToken()}`
    })
  }

getToken(){
  return sessionStorage.getItem('accessToken');
}

getUsers(): Observable<any[]>{
  return this.http.get<any[]>(`${this.apiUrl}/users`, {headers: this.getHeaders()});
}

loginUser(email: string, password: string): Observable<any> {

  const reqBody = {
    email,
    password
  }
  return this.http.post(`${this.apiUrl}/auth/login`,reqBody)
}
}
