﻿CREATE    PROCEDURE [dbo].[usp_Cumplimiento_Reporte]
	@UidUsuario uniqueidentifier,
	@UidPeriodo uniqueidentifier,
	@DtFecha date
AS

SET NOCOUNT ON

SELECT
	t.UidTarea,
	d.UidDepartamento,
	a.UidArea,
	c.UidCumplimiento,
	t.VchNombre AS VchTarea,
	d.VchNombre AS VchDepartamento,
	a.VchNombre AS VchArea,
	t.TmHora,
	c.DtFechaHora,
	CASE WHEN CAST(c.DtFechaHora AS DATE) > @DtFecha THEN 'No Realizado' ELSE ec.VchTipoCumplimiento END AS VchTipoCumplimiento,
	m.VchTipoMedicion,
	um.VchTipoUnidad,
	c.BitValor,
	c.DcValor1,
	c.DcValor2,
	op.VchOpciones,
	c.VchObservacion,
	tt.VchTipoTarea
FROM Tarea t
INNER JOIN TipoTarea tt ON t.UidTipoTarea = tt.UidTipoTarea
LEFT JOIN UnidadMedida um On t.UidUnidadMedida = um.UidUnidadMedida
INNER JOIN Medicion m ON t.UidTipoMedicion = m.UidTipoMedicion
INNER JOIN Estatus es ON t.UidStatus = es.UidStatus 
LEFT JOIN TareaArea ta ON t.UidTarea = ta.UidTarea
LEFT JOIN Area a ON ta.UidArea = a.UidArea
LEFT JOIN DepartamentoTarea dt ON t.UidTarea = dt.UidTarea
INNER JOIN Departamento d ON d.UidDepartamento = a.UidDepartamento OR d.UidDepartamento = dt.UidDepartamento
INNER JOIN Periodo p ON d.UidDepartamento = p.UidDepartamento
INNER JOIN Turno tn ON p.UidTurno = tn.UidTurno
INNER JOIN Usuario u ON u.UidUsuario = p.UidUsuario
LEFT JOIN Cumplimiento c ON t.UidTarea = c.UidTarea AND (c.UidTurno = tn.UidTurno OR c.UidTurno IS NULL) AND (c.UidDepartamento = dt.UidDepartamento OR c.UidArea = ta.UidArea) 
LEFT JOIN EstadoCumplimiento ec ON ec.UidEstadoCumplimiento = c.UidEstadoCumplimiento
LEFT JOIN Opciones op ON c.UidOpcion = op.UidOpciones
WHERE
	t.BitCaducado = 0 AND
	es.VchStatus = 'Activo' AND
	u.UidUsuario = @UidUsuario AND
	p.UidPeriodo = @UidPeriodo AND
	(p.DtFechaInicio <= @DtFecha AND p.DtFechaFin >= @DtFecha) AND
	(c.UidCumplimiento IS NULL OR c.DtFechaProgramada = @DtFecha OR
		(c.DtFechaProgramada < @DtFecha AND ec.VchTipoCumplimiento <> 'Completo') OR
		(CAST(c.DtFechaHora AS date) > @DtFecha AND c.DtFechaProgramada = @DtFecha AND c.UidTurno = tn.UidTurno) OR
		(CAST(c.DtFechaHora AS date) = @DtFecha) AND c.UidTurno = tn.UidTurno)