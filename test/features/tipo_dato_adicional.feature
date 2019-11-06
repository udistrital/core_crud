Feature: Validate API responses
  CORE_CRUD
  probe JSON reponses


Scenario Outline: To probe route code response  /tipo_dato_adicional
  When I send "<method>" request to "<route>" where body is json "<bodyreq>"
  Then the response code should be "<codres>"      

  Examples: 
  |method|route                  |bodyreq               |codres       |
  |GET   |/v1/tipo_dato_adicional|./files/req/Vacio.json|200 OK       |
  |GET   |/v1/tipo_dato_adiciona |./files/req/Vacio.json|404 Not Found|
  |POST  |/v1/tipo_dato_adiciona |./files/req/Vacio.json|404 Not Found|
  |PUT   |/v1/tipo_dato_adiciona |./files/req/Vacio.json|404 Not Found|
  |DELETE|/v1/tipo_dato_adiciona |./files/req/Vacio.json|404 Not Found|


Scenario Outline: To probe response route /tipo_dato_adicional       
  When I send "<method>" request to "<route>" where body is json "<bodyreq>"
  Then the response code should be "<codres>"      
  And the response should match json "<bodyres>"

  Examples:
  |method|route                  |bodyreq               |codres         |bodyres                |
  |GET   |/v1/tipo_dato_adicional|./files/req/Vacio.json|200 OK         |./files/res8/Vok1.json |
  |POST  |/v1/tipo_dato_adicional|./files/req/Yt1.json  |201 Created    |./files/res8/Vok2.json |
  |POST  |/v1/tipo_dato_adicional|./files/req/Vacio.json|400 Bad Request|./files/res8/Ierr1.json|
  |POST  |/v1/tipo_dato_adicional|./files/req/Nt1.json  |400 Bad Request|./files/res8/Ierr2.json|
  |POST  |/v1/tipo_dato_adicional|./files/req/Nt2.json  |400 Bad Request|./files/res8/Ierr3.json|
  |POST  |/v1/tipo_dato_adicional|./files/req/Nt3.json  |400 Bad Request|./files/res8/Ierr4.json|
  |POST  |/v1/tipo_dato_adicional|./files/req/Nt4.json  |400 Bad Request|./files/res8/Ierr5.json|
  |POST  |/v1/tipo_dato_adicional|./files/req/Nt5.json  |400 Bad Request|./files/res8/Ierr6.json| 
  |POST  |/v1/tipo_dato_adicional|./files/req/Nt6.json  |400 Bad Request|./files/res8/Ierr7.json| 
  |POST  |/v1/tipo_dato_adicional|./files/req/Yt2.json  |400 Bad Request|./files/res8/Ierr8.json| 
  |PUT   |/v1/tipo_dato_adicional|./files/req/Yt2.json  |200 OK         |./files/res8/Vok2.json |
  |GETID |/v1/tipo_dato_adicional|./files/req/Vacio.json|200 OK         |./files/res8/Vok2.json |
  |DELETE|/v1/tipo_dato_adicional|./files/req/Vacio.json|200 OK         |./files/res8/Ino.json  |
  |DELETE|/v1/tipo_dato_adicional|./files/req/Vacio.json|404 Not Found  |./files/res8/Ierr9.json|
