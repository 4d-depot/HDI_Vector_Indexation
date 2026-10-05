//%attributes = {}

var Infos : Collection

Infos:=ds.INFO.all().orderBy("PageNumber").toCollection()

var _TabTitles:={values: Infos.query("PageNumber<=2").map(Formula($1.value.TabTitle))}