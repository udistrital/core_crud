Feature: Validate API responses
    CORE_CRUD
    probe JSON responses

Scenario Outline: To probe route code response /tipo_periodo
    When I send "<method>" request to "<route>" where body is json "<bodyreq>"
    Then the response code should be "<codres>"

    Examples:
    |method |route            |bodyreq                 |codres       |
    |GET    |/v1/tipo_periodo |./files/req/Vacio.json  |200 OK       |
    |GET    |/v1/tipo_period  |./files/req/Vacio.json  |404 Not Found|
    |POST   |/v1/tipo_period  |./files/req/Vacio.json  |404 Not Found|
    |PUT    |/v1/tipo_period  |./files/req/Vacio.json  |404 Not Found|
    |DELETE |/v1/tipo_period  |./files/req/Vacio.json  |404 Not Found|