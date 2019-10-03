Feature: Validate API responses
  CORE_CRUD
  probe JSON reponses


Scenario Outline: To probe route code response  /tipo_periodo
  When I send "<method>" request to "<route>" where body is json "<bodyreq>"
  Then the response code should be "<codres>"      

  Examples: 
  |method|route           |bodyreq               |codres       |
  |GET   |/v1/tipo_periodo|./files/req/Vacio.json|200 OK       |
  |GET   |/v1/tipo_period |./files/req/Vacio.json|404 Not Found|
  |POST  |/v1/tipo_period |./files/req/Vacio.json|404 Not Found|
  |PUT   |/v1/tipo_period |./files/req/Vacio.json|404 Not Found|
  |DELETE|/v1/tipo_period |./files/req/Vacio.json|404 Not Found|


Scenario Outline: To probe response route /tipo_periodo       
  When I send "<method>" request to "<route>" where body is json "<bodyreq>"
  Then the response code should be "<codres>"      
  And the response should match json "<bodyres>"

  Examples:
  |method|route           |bodyreq               |codres         |bodyres                |
  |GET   |/v1/tipo_periodo|./files/req/Vacio.json|200 OK         |./files/res9/Vok1.json |
  |POST  |/v1/tipo_periodo|./files/req/Yt1.json  |201 Created    |./files/res9/Vok2.json |
  |POST  |/v1/tipo_periodo|./files/req/Vacio.json|400 Bad Request|./files/res9/Ierr1.json|
  |POST  |/v1/tipo_periodo|./files/req/Nt1.json  |400 Bad Request|./files/res9/Ierr2.json|
  |POST  |/v1/tipo_periodo|./files/req/Nt2.json  |400 Bad Request|./files/res9/Ierr3.json|
  |POST  |/v1/tipo_periodo|./files/req/Nt3.json  |400 Bad Request|./files/res9/Ierr4.json|
  |POST  |/v1/tipo_periodo|./files/req/Nt4.json  |400 Bad Request|./files/res9/Ierr5.json|
  |POST  |/v1/tipo_periodo|./files/req/Nt5.json  |400 Bad Request|./files/res9/Ierr6.json| 
  |POST  |/v1/tipo_periodo|./files/req/Nt6.json  |400 Bad Request|./files/res9/Ierr7.json| 
  |POST  |/v1/tipo_periodo|./files/req/Yt2.json  |400 Bad Request|./files/res9/Ierr8.json| 
  |PUT   |/v1/tipo_periodo|./files/req/Yt2.json  |200 OK         |./files/res9/Vok2.json |
  |GETID |/v1/tipo_periodo|./files/req/Vacio.json|200 OK         |./files/res9/Vok2.json |
  |DELETE|/v1/tipo_periodo|./files/req/Vacio.json|200 OK         |./files/res9/Ino.json  |
  |DELETE|/v1/tipo_periodo|./files/req/Vacio.json|404 Not Found  |./files/res9/Ierr9.json|
