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

		beego.NSNamespace("/concepto_academico",
			beego.NSInclude(
				&controllers.ConceptoAcademicoController{},
			),
		),

		beego.NSNamespace("/nucleo_basico_conocimiento",
			beego.NSInclude(
				&controllers.NucleoBasicoConocimientoController{},
			),
		),

		beego.NSNamespace("/periodo",
			beego.NSInclude(
				&controllers.PeriodoController{},
			),
		),

		beego.NSNamespace("/tipo_periodo",
			beego.NSInclude(
				&controllers.TipoPeriodoController{},
			),
		),

		beego.NSNamespace("/grupo_investigacion",
			beego.NSInclude(
				&controllers.GrupoInvestigacionController{},
			),
		),

		beego.NSNamespace("/linea_investigacion",
			beego.NSInclude(
				&controllers.LineaInvestigacionController{},
			),
		),

		beego.NSNamespace("/linea_investigacion_grupo_investigacion",
			beego.NSInclude(
				&controllers.LineaInvestigacionGrupoInvestigacionController{},
			),
		),
	)
	beego.AddNamespace(ns)
}
