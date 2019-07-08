package routers

import (
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/context/param"
)

func init() {

    beego.GlobalControllerRouter["github.com/planesticud/core_crud/controllers:AreaConocimientoController"] = append(beego.GlobalControllerRouter["github.com/planesticud/core_crud/controllers:AreaConocimientoController"],
        beego.ControllerComments{
            Method: "Post",
            Router: `/`,
            AllowHTTPMethods: []string{"post"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/planesticud/core_crud/controllers:AreaConocimientoController"] = append(beego.GlobalControllerRouter["github.com/planesticud/core_crud/controllers:AreaConocimientoController"],
        beego.ControllerComments{
            Method: "GetAll",
            Router: `/`,
            AllowHTTPMethods: []string{"get"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/planesticud/core_crud/controllers:AreaConocimientoController"] = append(beego.GlobalControllerRouter["github.com/planesticud/core_crud/controllers:AreaConocimientoController"],
        beego.ControllerComments{
            Method: "GetOne",
            Router: `/:id`,
            AllowHTTPMethods: []string{"get"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/planesticud/core_crud/controllers:AreaConocimientoController"] = append(beego.GlobalControllerRouter["github.com/planesticud/core_crud/controllers:AreaConocimientoController"],
        beego.ControllerComments{
            Method: "Put",
            Router: `/:id`,
            AllowHTTPMethods: []string{"put"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/planesticud/core_crud/controllers:AreaConocimientoController"] = append(beego.GlobalControllerRouter["github.com/planesticud/core_crud/controllers:AreaConocimientoController"],
        beego.ControllerComments{
            Method: "Delete",
            Router: `/:id`,
            AllowHTTPMethods: []string{"delete"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/planesticud/core_crud/controllers:NucleoBasicoConocimientoController"] = append(beego.GlobalControllerRouter["github.com/planesticud/core_crud/controllers:NucleoBasicoConocimientoController"],
        beego.ControllerComments{
            Method: "Post",
            Router: `/`,
            AllowHTTPMethods: []string{"post"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/planesticud/core_crud/controllers:NucleoBasicoConocimientoController"] = append(beego.GlobalControllerRouter["github.com/planesticud/core_crud/controllers:NucleoBasicoConocimientoController"],
        beego.ControllerComments{
            Method: "GetAll",
            Router: `/`,
            AllowHTTPMethods: []string{"get"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/planesticud/core_crud/controllers:NucleoBasicoConocimientoController"] = append(beego.GlobalControllerRouter["github.com/planesticud/core_crud/controllers:NucleoBasicoConocimientoController"],
        beego.ControllerComments{
            Method: "GetOne",
            Router: `/:id`,
            AllowHTTPMethods: []string{"get"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/planesticud/core_crud/controllers:NucleoBasicoConocimientoController"] = append(beego.GlobalControllerRouter["github.com/planesticud/core_crud/controllers:NucleoBasicoConocimientoController"],
        beego.ControllerComments{
            Method: "Put",
            Router: `/:id`,
            AllowHTTPMethods: []string{"put"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/planesticud/core_crud/controllers:NucleoBasicoConocimientoController"] = append(beego.GlobalControllerRouter["github.com/planesticud/core_crud/controllers:NucleoBasicoConocimientoController"],
        beego.ControllerComments{
            Method: "Delete",
            Router: `/:id`,
            AllowHTTPMethods: []string{"delete"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/planesticud/core_crud/controllers:PeriodoAcademicoController"] = append(beego.GlobalControllerRouter["github.com/planesticud/core_crud/controllers:PeriodoAcademicoController"],
        beego.ControllerComments{
            Method: "Post",
            Router: `/`,
            AllowHTTPMethods: []string{"post"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/planesticud/core_crud/controllers:PeriodoAcademicoController"] = append(beego.GlobalControllerRouter["github.com/planesticud/core_crud/controllers:PeriodoAcademicoController"],
        beego.ControllerComments{
            Method: "GetAll",
            Router: `/`,
            AllowHTTPMethods: []string{"get"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/planesticud/core_crud/controllers:PeriodoAcademicoController"] = append(beego.GlobalControllerRouter["github.com/planesticud/core_crud/controllers:PeriodoAcademicoController"],
        beego.ControllerComments{
            Method: "GetOne",
            Router: `/:id`,
            AllowHTTPMethods: []string{"get"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/planesticud/core_crud/controllers:PeriodoAcademicoController"] = append(beego.GlobalControllerRouter["github.com/planesticud/core_crud/controllers:PeriodoAcademicoController"],
        beego.ControllerComments{
            Method: "Put",
            Router: `/:id`,
            AllowHTTPMethods: []string{"put"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/planesticud/core_crud/controllers:PeriodoAcademicoController"] = append(beego.GlobalControllerRouter["github.com/planesticud/core_crud/controllers:PeriodoAcademicoController"],
        beego.ControllerComments{
            Method: "Delete",
            Router: `/:id`,
            AllowHTTPMethods: []string{"delete"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/planesticud/core_crud/controllers:TipoDatoAdicionalController"] = append(beego.GlobalControllerRouter["github.com/planesticud/core_crud/controllers:TipoDatoAdicionalController"],
        beego.ControllerComments{
            Method: "Post",
            Router: `/`,
            AllowHTTPMethods: []string{"post"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/planesticud/core_crud/controllers:TipoDatoAdicionalController"] = append(beego.GlobalControllerRouter["github.com/planesticud/core_crud/controllers:TipoDatoAdicionalController"],
        beego.ControllerComments{
            Method: "GetAll",
            Router: `/`,
            AllowHTTPMethods: []string{"get"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/planesticud/core_crud/controllers:TipoDatoAdicionalController"] = append(beego.GlobalControllerRouter["github.com/planesticud/core_crud/controllers:TipoDatoAdicionalController"],
        beego.ControllerComments{
            Method: "GetOne",
            Router: `/:id`,
            AllowHTTPMethods: []string{"get"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/planesticud/core_crud/controllers:TipoDatoAdicionalController"] = append(beego.GlobalControllerRouter["github.com/planesticud/core_crud/controllers:TipoDatoAdicionalController"],
        beego.ControllerComments{
            Method: "Put",
            Router: `/:id`,
            AllowHTTPMethods: []string{"put"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/planesticud/core_crud/controllers:TipoDatoAdicionalController"] = append(beego.GlobalControllerRouter["github.com/planesticud/core_crud/controllers:TipoDatoAdicionalController"],
        beego.ControllerComments{
            Method: "Delete",
            Router: `/:id`,
            AllowHTTPMethods: []string{"delete"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/planesticud/core_crud/controllers:UnidadTiempoController"] = append(beego.GlobalControllerRouter["github.com/planesticud/core_crud/controllers:UnidadTiempoController"],
        beego.ControllerComments{
            Method: "Post",
            Router: `/`,
            AllowHTTPMethods: []string{"post"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/planesticud/core_crud/controllers:UnidadTiempoController"] = append(beego.GlobalControllerRouter["github.com/planesticud/core_crud/controllers:UnidadTiempoController"],
        beego.ControllerComments{
            Method: "GetAll",
            Router: `/`,
            AllowHTTPMethods: []string{"get"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/planesticud/core_crud/controllers:UnidadTiempoController"] = append(beego.GlobalControllerRouter["github.com/planesticud/core_crud/controllers:UnidadTiempoController"],
        beego.ControllerComments{
            Method: "GetOne",
            Router: `/:id`,
            AllowHTTPMethods: []string{"get"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/planesticud/core_crud/controllers:UnidadTiempoController"] = append(beego.GlobalControllerRouter["github.com/planesticud/core_crud/controllers:UnidadTiempoController"],
        beego.ControllerComments{
            Method: "Put",
            Router: `/:id`,
            AllowHTTPMethods: []string{"put"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/planesticud/core_crud/controllers:UnidadTiempoController"] = append(beego.GlobalControllerRouter["github.com/planesticud/core_crud/controllers:UnidadTiempoController"],
        beego.ControllerComments{
            Method: "Delete",
            Router: `/:id`,
            AllowHTTPMethods: []string{"delete"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

}
