SELECT
T8."ItmsGrpNam" AS "NombreGrupoProducto",
	--PRODUCTO
	T2."ItemCode" AS "CodigoProducto",
	T2."Dscription" AS "NombreProducto",
             T2."CodeBars" AS "CodigoBarras",
	TO_INT(T2."Quantity" / T7."SalPackUn") AS "Cajas",
	MOD(T2."Quantity",T7."SalPackUn") AS "Unidades",
T11."SlpName"
FROM
	"OPCH" T1
INNER JOIN
	"PCH1" T2
		ON T1."DocEntry" = T2."DocEntry"
INNER JOIN
	"PCH12" T3
		ON T1."DocEntry" = T3."DocEntry"
INNER JOIN
	"NNM1" T4
		ON T1."Series" = T4."Series"
--	CLIENTE
INNER JOIN
	"OCRD" T5
		ON T1."CardCode" = T5."CardCode"
INNER JOIN
	"OCRG" T6
		ON T5."GroupCode" = T6."GroupCode"
--	PRODUCTO
INNER JOIN
	"OITM" T7
		ON T2."ItemCode" = T7."ItemCode"
INNER JOIN
	"OITB" T8
		ON T7."ItmsGrpCod" = T8."ItmsGrpCod"
LEFT JOIN
	"@GD_SUBGRUPO" T9
		ON T7."U_GD_SubGrupo" = T9."Code"
LEFT JOIN
	"@GD_FAMPRODUCTOS" T10
		ON T7."U_GD_FamProducto" = T10."Code"
--	VENDEDOR
INNER JOIN
	"OSLP" T11
		ON T1."SlpCode" = T11."SlpCode"
WHERE
	T1."DocDate" BETWEEN '{0}' AND '{1}'
 AND T11."SlpCode" = '80'
	--AND T1."DocNum" = '10078561'
AND T8."ItmsGrpCod" not in (247,
226,
258,
224,
187,
243,
229,
199,
232,
197,
248,
264,
162,
236,
261,
200,
181,
263,
228,
244,
242,
260,
173,
174,
225,
171,
246,
205,
222,
210,
220,
245,
209,
203,
204,
207,
259,
208,
196,
216,
202,
214,
218,
215,
213,
211,
223,
221,
217,
237,
168,
227,
188,
231,
235,
249,
234,
233
)
UNION ALL

SELECT
T8."ItmsGrpNam" AS "NombreGrupoProducto",
	--	PRODUCTO
	T2."ItemCode" AS "CodigoProducto",
	T2."Dscription" AS "NombreProducto",
             T2."CodeBars" AS "CodigoBarras",
	-TO_INT(T2."Quantity" / T7."SalPackUn") AS "Cajas",
	-MOD(T2."Quantity",T7."SalPackUn") AS "Unidades",
T11."SlpName"
FROM
	"ORPC" T1
INNER JOIN
	"RPC1" T2
		ON T1."DocEntry" = T2."DocEntry"
INNER JOIN
	"RPC12" T3
		ON T1."DocEntry" = T3."DocEntry"
INNER JOIN
	"NNM1" T4
		ON T1."Series" = T4."Series"
--	CLIENTE
INNER JOIN
	"OCRD" T5
		ON T1."CardCode" = T5."CardCode"
INNER JOIN
	"OCRG" T6
		ON T5."GroupCode" = T6."GroupCode"
--	PRODUCTO
INNER JOIN
	"OITM" T7
		ON T2."ItemCode" = T7."ItemCode"
INNER JOIN
	"OITB" T8
		ON T7."ItmsGrpCod" = T8."ItmsGrpCod"
LEFT JOIN
	"@GD_SUBGRUPO" T9
		ON T7."U_GD_SubGrupo" = T9."Code"
LEFT JOIN
	"@GD_FAMPRODUCTOS" T10
		ON T7."U_GD_FamProducto" = T10."Code"
--	VENDEDOR
INNER JOIN
	"OSLP" T11
		ON T1."SlpCode" = T11."SlpCode"
WHERE
	T1."DocDate" BETWEEN '{0}' AND '{1}'
 AND T11."SlpCode" = '80'
AND T8."ItmsGrpCod" NOT IN (247,
226,
258,
224,
187,
243,
229,
199,
232,
197,
248,
264,
162,
236,
261,
200,
181,
263,
228,
244,
242,
260,
173,
174,
225,
171,
246,
205,
222,
210,
220,
245,
209,
203,
204,
207,
259,
208,
196,
216,
202,
214,
218,
215,
213,
211,
223,
221,
217,
237,
168,
227,
188,
231,
235,
249,
234,
233)