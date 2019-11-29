# README

- Obtener una de casas
Method: GET
EndPoint: http://localhost:3000/inmuebles/

Response:
[
      {
      "id": 1,
      "direccion": "CALLE 13 Nº 280 X 28 Y 30, COL. EL PRADO CHUBURNÁ",
      "precio": "15000.0",
      "created_at": "2019-12-01T06:57:24.286Z",
      "updated_at": "2019-12-01T06:57:24.286Z"
   },
      {
      "id": 2,
      "direccion": "CALLE 29 (ANTES 79) Nº 149 B Y C X 78 Y 80, COL. CENTRO",
      "precio": "15000.0",
      "created_at": "2019-12-01T06:57:24.294Z",
      "updated_at": "2019-12-01T06:57:24.294Z"
   }
]

Agendar una cita de visita a un inmueble.
Method: POST
 EndPoint: http://localhost:3000/inmuebles//cita/

Object Request:
{
	"Inmueble_id":"4",
	"nombreCliente":"Edardo Bizarro",
	"fechaVisita":"2019-02-03 00:00:00.00",
	"estatus":"ACT"
}

Response: 
{
   "id": 3,
   "Inmueble_id": 4,
   "nombreCliente": "Edardo Bizarro",
   "fechaVisita": "2019-02-03T00:00:00.000Z",
   "estatus": "ACT",
   "created_at": "2019-11-29T04:26:21.829Z",
   "updated_at": "2019-11-29T04:26:21.829Z"
}


Cancelar una cita de visita a un inmueble.
Method: PUT
Endpoint: http://localhost:3000/cita/1

Object request
{
	"estatus":"1"
}
Response

{
   "id": 1,
   "estatus": "baj",
   "Inmueble_id": 1,
   "nombreCliente": "Alejandro Gomez",
   "fechaVisita": "2019-01-01T00:00:00.000Z",
   "created_at": "2019-11-27T21:34:23.094Z",
   "updated_at": "2019-11-27T22:11:38.162Z"
}
