package routers

import (
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/context/param"
)

func init() {

	beego.GlobalControllerRouter["github.com/udistrital/core_crud/controllers:TipoDatoAdicionalController"] = append(beego.GlobalControllerRouter["github.com/udistrital/core_crud/controllers:TipoDatoAdicionalController"],
		beego.ControllerComments{
			Method:           "Post",
			Router:           `/`,
			AllowHTTPMethods: []string{"post"},
			MethodParams:     param.Make(),
			Params:           nil})

	beego.GlobalControllerRouter["github.com/udistrital/core_crud/controllers:TipoDatoAdicionalController"] = append(beego.GlobalControllerRouter["github.com/udistrital/core_crud/controllers:TipoDatoAdicionalController"],
		beego.ControllerComments{
			Method:           "GetAll",
			Router:           `/`,
			AllowHTTPMethods: []string{"get"},
			MethodParams:     param.Make(),
			Params:           nil})

	beego.GlobalControllerRouter["github.com/udistrital/core_crud/controllers:TipoDatoAdicionalController"] = append(beego.GlobalControllerRouter["github.com/udistrital/core_crud/controllers:TipoDatoAdicionalController"],
		beego.ControllerComments{
			Method:           "GetOne",
			Router:           `/:id`,
			AllowHTTPMethods: []string{"get"},
			MethodParams:     param.Make(),
			Params:           nil})

	beego.GlobalControllerRouter["github.com/udistrital/core_crud/controllers:TipoDatoAdicionalController"] = append(beego.GlobalControllerRouter["github.com/udistrital/core_crud/controllers:TipoDatoAdicionalController"],
		beego.ControllerComments{
			Method:           "Put",
			Router:           `/:id`,
			AllowHTTPMethods: []string{"put"},
			MethodParams:     param.Make(),
			Params:           nil})

	beego.GlobalControllerRouter["github.com/udistrital/core_crud/controllers:TipoDatoAdicionalController"] = append(beego.GlobalControllerRouter["github.com/udistrital/core_crud/controllers:TipoDatoAdicionalController"],
		beego.ControllerComments{
			Method:           "Delete",
			Router:           `/:id`,
			AllowHTTPMethods: []string{"delete"},
			MethodParams:     param.Make(),
			Params:           nil})

	beego.GlobalControllerRouter["github.com/udistrital/core_crud/controllers:UnidadTiempoController"] = append(beego.GlobalControllerRouter["github.com/udistrital/core_crud/controllers:UnidadTiempoController"],
		beego.ControllerComments{
			Method:           "Post",
			Router:           `/`,
			AllowHTTPMethods: []string{"post"},
			MethodParams:     param.Make(),
			Params:           nil})

	beego.GlobalControllerRouter["github.com/udistrital/core_crud/controllers:UnidadTiempoController"] = append(beego.GlobalControllerRouter["github.com/udistrital/core_crud/controllers:UnidadTiempoController"],
		beego.ControllerComments{
			Method:           "GetAll",
			Router:           `/`,
			AllowHTTPMethods: []string{"get"},
			MethodParams:     param.Make(),
			Params:           nil})

	beego.GlobalControllerRouter["github.com/udistrital/core_crud/controllers:UnidadTiempoController"] = append(beego.GlobalControllerRouter["github.com/udistrital/core_crud/controllers:UnidadTiempoController"],
		beego.ControllerComments{
			Method:           "GetOne",
			Router:           `/:id`,
			AllowHTTPMethods: []string{"get"},
			MethodParams:     param.Make(),
			Params:           nil})

	beego.GlobalControllerRouter["github.com/udistrital/core_crud/controllers:UnidadTiempoController"] = append(beego.GlobalControllerRouter["github.com/udistrital/core_crud/controllers:UnidadTiempoController"],
		beego.ControllerComments{
			Method:           "Put",
			Router:           `/:id`,
			AllowHTTPMethods: []string{"put"},
			MethodParams:     param.Make(),
			Params:           nil})

	beego.GlobalControllerRouter["github.com/udistrital/core_crud/controllers:UnidadTiempoController"] = append(beego.GlobalControllerRouter["github.com/udistrital/core_crud/controllers:UnidadTiempoController"],
		beego.ControllerComments{
			Method:           "Delete",
			Router:           `/:id`,
			AllowHTTPMethods: []string{"delete"},
			MethodParams:     param.Make(),
			Params:           nil})

	beego.GlobalControllerRouter["github.com/udistrital/core_crud/controllers:PeriodoController"] = append(beego.GlobalControllerRouter["github.com/udistrital/core_crud/controllers:PeriodoController"],
		beego.ControllerComments{
			Method:           "Post",
			Router:           `/`,
			AllowHTTPMethods: []string{"post"},
			MethodParams:     param.Make(),
			Filters:          nil,
			Params:           nil})

	beego.GlobalControllerRouter["github.com/udistrital/core_crud/controllers:PeriodoController"] = append(beego.GlobalControllerRouter["github.com/udistrital/core_crud/controllers:PeriodoController"],
		beego.ControllerComments{
			Method:           "GetAll",
			Router:           `/`,
			AllowHTTPMethods: []string{"get"},
			MethodParams:     param.Make(),
			Filters:          nil,
			Params:           nil})

	beego.GlobalControllerRouter["github.com/udistrital/core_crud/controllers:PeriodoController"] = append(beego.GlobalControllerRouter["github.com/udistrital/core_crud/controllers:PeriodoController"],
		beego.ControllerComments{
			Method:           "GetOne",
			Router:           `/:id`,
			AllowHTTPMethods: []string{"get"},
			MethodParams:     param.Make(),
			Filters:          nil,
			Params:           nil})

	beego.GlobalControllerRouter["github.com/udistrital/core_crud/controllers:PeriodoController"] = append(beego.GlobalControllerRouter["github.com/udistrital/core_crud/controllers:PeriodoController"],
		beego.ControllerComments{
			Method:           "Put",
			Router:           `/:id`,
			AllowHTTPMethods: []string{"put"},
			MethodParams:     param.Make(),
			Filters:          nil,
			Params:           nil})

	beego.GlobalControllerRouter["github.com/udistrital/core_crud/controllers:PeriodoController"] = append(beego.GlobalControllerRouter["github.com/udistrital/core_crud/controllers:PeriodoController"],
		beego.ControllerComments{
			Method:           "Delete",
			Router:           `/:id`,
			AllowHTTPMethods: []string{"delete"},
			MethodParams:     param.Make(),
			Filters:          nil,
			Params:           nil})

	beego.GlobalControllerRouter["github.com/udistrital/core_crud/controllers:TipoPeriodoController"] = append(beego.GlobalControllerRouter["github.com/udistrital/core_crud/controllers:TipoPeriodoController"],
		beego.ControllerComments{
			Method:           "Post",
			Router:           `/`,
			AllowHTTPMethods: []string{"post"},
			MethodParams:     param.Make(),
			Filters:          nil,
			Params:           nil})

	beego.GlobalControllerRouter["github.com/udistrital/core_crud/controllers:TipoPeriodoController"] = append(beego.GlobalControllerRouter["github.com/udistrital/core_crud/controllers:TipoPeriodoController"],
		beego.ControllerComments{
			Method:           "GetAll",
			Router:           `/`,
			AllowHTTPMethods: []string{"get"},
			MethodParams:     param.Make(),
			Filters:          nil,
			Params:           nil})

	beego.GlobalControllerRouter["github.com/udistrital/core_crud/controllers:TipoPeriodoController"] = append(beego.GlobalControllerRouter["github.com/udistrital/core_crud/controllers:TipoPeriodoController"],
		beego.ControllerComments{
			Method:           "GetOne",
			Router:           `/:id`,
			AllowHTTPMethods: []string{"get"},
			MethodParams:     param.Make(),
			Filters:          nil,
			Params:           nil})

	beego.GlobalControllerRouter["github.com/udistrital/core_crud/controllers:TipoPeriodoController"] = append(beego.GlobalControllerRouter["github.com/udistrital/core_crud/controllers:TipoPeriodoController"],
		beego.ControllerComments{
			Method:           "Put",
			Router:           `/:id`,
			AllowHTTPMethods: []string{"put"},
			MethodParams:     param.Make(),
			Filters:          nil,
			Params:           nil})

	beego.GlobalControllerRouter["github.com/udistrital/core_crud/controllers:TipoPeriodoController"] = append(beego.GlobalControllerRouter["github.com/udistrital/core_crud/controllers:TipoPeriodoController"],
		beego.ControllerComments{
			Method:           "Delete",
			Router:           `/:id`,
			AllowHTTPMethods: []string{"delete"},
			MethodParams:     param.Make(),
			Filters:          nil,
			Params:           nil})

}
