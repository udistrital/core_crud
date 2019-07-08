// @APIVersion 1.0.0
// @Title beego Test API
// @Description beego has a very cool tools to autogenerate documents for your API
// @Contact astaxie@gmail.com
// @TermsOfServiceUrl http://beego.me/
// @License Apache 2.0
// @LicenseUrl http://www.apache.org/licenses/LICENSE-2.0.html
package routers

import (
	"github.com/planesticud/core_crud/controllers"

	"github.com/astaxie/beego"
)

func init() {
	ns := beego.NewNamespace("/v1",

		beego.NSNamespace("/unidad_tiempo",
			beego.NSInclude(
				&controllers.UnidadTiempoController{},
			),
		),

		beego.NSNamespace("/tipo_dato_adicional",
			beego.NSInclude(
				&controllers.TipoDatoAdicionalController{},
			),
		),
		
		beego.NSNamespace("/area_conocimiento",
			beego.NSInclude(
				&controllers.AreaConocimientoController{},
			),
		),

		beego.NSNamespace("/nucleo_basico_conocimiento",
			beego.NSInclude(
				&controllers.NucleoBasicoConocimientoController{},
			),
		),
		beego.NSNamespace("/periodo_academico",
			beego.NSInclude(
				&controllers.PeriodoAcademicoController{},
			),
		),
	)
	beego.AddNamespace(ns)
}
