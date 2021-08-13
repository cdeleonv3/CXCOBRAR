/*==============================================================*/
/* Table: CXC_CLIENTE                                           */
/*==============================================================*/
create table CXC_CLIENTE (
   CLI_CLIENTE          NUMBER                  not null,
   TPP_TIPOPERSONA      NUMBER                  null,
   PER_PERSONA          NUMBER                  null,
   constraNUMBER PK_CXC_CLIENTE primary key (CLI_CLIENTE)
)
go

/*==============================================================*/
/* Table: CXC_CREDITO                                           */
/*==============================================================*/
create table CXC_CREDITO (
   CRE_CREDITO          NUMBER                  not null,
   FAC_FACTURA          NUMBER                  null,
   DCR_DIASCREDITO      NUMBER                  null,
   EST_ESTADO           NUMBER                  null,
   CRE_FECHACREDITO     DATE                 not null,
   CRE_MONTOCREDITO     DECIMAL              not null,
   CRE_MONTOPAGADO      DECIMAL              null,
   CRE_RECARGOS         DECIMAL              not null,
   constraNUMBER PK_CXC_CREDITO primary key (CRE_CREDITO)
)
go

/*==============================================================*/
/* Table: CXC_DETALLEFACTURA                                    */
/*==============================================================*/
create table CXC_DETALLEFACTURA (
   DTF_DETALLEFACTURA   NUMBER                  not null,
   FAC_FACTURA          NUMBER                  null,
   PRD_PRODUCTO         NUMBER                  null,
   DTF_CANTIDAD         NUMBER                  not null,
   DTF_PRECIOVENTA      DECIMAL              not null,
   constraNUMBER PK_CXC_DETALLEFACTURA primary key (DTF_DETALLEFACTURA)
)
go

/*==============================================================*/
/* Table: CXC_DIAS_CREDITO                                      */
/*==============================================================*/
create table CXC_DIAS_CREDITO (
   DCR_DIASCREDITO      NUMBER                  not null,
   DCR_CANTIDADDIAS     NUMERIC              not null,
   DCR_DESCRIPCION      VARCHAR              null,
   constraNUMBER PK_CXC_DIAS_CREDITO primary key (DCR_DIASCREDITO)
)
go

/*==============================================================*/
/* Table: CXC_EMPRESA                                           */
/*==============================================================*/
create table CXC_EMPRESA (
   EMP_EMPRESA          NUMBER                  not null,
   EMP_NOMBRE           VARCHAR              not null,
   EMP_DIRECCION        VARCHAR              not null,
   EMP_TELEFONO         VARCHAR              null,
   EMP_NIT              VARCHAR              not null,
   constraNUMBER PK_CXC_EMPRESA primary key (EMP_EMPRESA)
)
go

/*==============================================================*/
/* Table: CXC_ESTADO_CREDITO                                    */
/*==============================================================*/
create table CXC_ESTADO_CREDITO (
   EST_ESTADO           NUMBER                  not null,
   EST_DESCRIPCION      VARCHAR              not null,
   constraNUMBER PK_CXC_ESTADO_CREDITO primary key (EST_ESTADO)
)
go

/*==============================================================*/
/* Table: CXC_FACTURA                                           */
/*==============================================================*/
create table CXC_FACTURA (
   FAC_FACTURA          NUMBER                  not null,
   CLI_CLIENTE          NUMBER                  null,
   EMP_EMPRESA          NUMBER                  null,
   TPA_TIPOPAGO         NUMBER                  null,
   FAC_SERIE            VARCHAR              null,
   FAC_NUMERO           NUMERIC              null,
   FAC_FECHA            DATE                 not null,
   FAC_TOTAL            DECIMAL              not null,
   FAC_CERTIFICADO      VARCHAR              null,
   FAC_FIRMAELECTRONICA VARCHAR              null,
   constraNUMBER PK_CXC_FACTURA primary key (FAC_FACTURA)
)
go

/*==============================================================*/
/* Table: CXC_FORMAPAGO                                         */
/*==============================================================*/
create table CXC_FORMAPAGO (
   FRM_FORMAPAGO        NUMBER                  not null,
   FRM_DESCRIPCION      VARCHAR              not null,
   constraNUMBER PK_CXC_FORMAPAGO primary key (FRM_FORMAPAGO)
)
go

/*==============================================================*/
/* Table: CXC_PERSONA                                           */
/*==============================================================*/
create table CXC_PERSONA (
   PER_PERSONA          NUMBER                  not null,
   PER_PRIMERNOMBRE     VARCHAR              not null,
   PER_SEGUNDONOMBRE    VARCHAR              null,
   PER_PRIMERAPELLIDO   VARCHAR              not null,
   PER_SEGUNDOAPELLIDO  VARCHAR             null,
   PER_IDENTIFICACION   VARCHAR              null,
   PER_FECHANACIMIENTO  DATE                 null,
   PER_TELEFONO         VARCHAR              null,
   PER_DEPARTAMENTO     VARCHAR              null,
   PER_MUNICIPIO
   PER_DIRECCION        VARCHAR              not null,
   PER_NIT              VARCHAR              not null,
   constraNUMBER PK_CXC_PERSONA primary key (PER_PERSONA)
)
go

/*==============================================================*/
/* Table: CXC_PRODUCTO                                          */
/*==============================================================*/
create table CXC_PRODUCTO (
   PRD_PRODUCTO         NUMBER                  not null,
   PRD_NOMBREPRODUCTO   VARCHAR              not null,
   PRD_EXISTENCIA       NUMBER                  not null,
   PRD_COSTO            DECIMAL              not null,
   PRD_PRECIOVENTA      DECIMAL              null,
   constraNUMBER PK_CXC_PRODUCTO primary key (PRD_PRODUCTO)
)
go

/*==============================================================*/
/* Table: CXC_PROYECCION_PAGO                                   */
/*==============================================================*/
create table CXC_PROYECCION_PAGO (
   PRP_PROYECCIONPAGO   NUMBER                  not null,
   CRE_CREDITO          NUMBER                  null,
   PRP_NUMEROCUTOA      NUMBER                  not null,
   PRP_FECHAPROYECCION  DATE                 not null,
   PRP_MONTOCUOTA       DECIMAL              not null,
   PRP_ESTADOCUOTA      VARCHAR              not null,
   constraNUMBER PK_CXC_PROYECCION_PAGO primary key (PRP_PROYECCIONPAGO)
)
go

/*==============================================================*/
/* Table: CXC_RECUPERACION                                      */
/*==============================================================*/
create table CXC_RECUPERACION (
   REC_RECUPERACION     NUMBER                  not null,
   FRM_FORMAPAGO        NUMBER                  null,
   TTR_TIPOTRANSACCION  NUMBER                  null,
   PRP_PROYECCIONPAGO   NUMBER                  null,
   REC_FECHARECUPERACION DATE                 not null,
   REC_MONTORECUPERADO  DECIMAL              not null,
   REC_RECARGOS         DECIMAL              not null,
   constraNUMBER PK_CXC_RECUPERACION primary key (REC_RECUPERACION)
)
go

/*==============================================================*/
/* Table: CXC_TIPO_PAGO                                         */
/*==============================================================*/
create table CXC_TIPO_PAGO (
   TPA_TIPOPAGO         NUMBER                  not null,
   TPA_DESCRIPCION      VARCHAR              not null,
   constraNUMBER PK_CXC_TIPO_PAGO primary key (TPA_TIPOPAGO)
)
go

/*==============================================================*/
/* Table: CXC_TIPO_PERSONA                                      */
/*==============================================================*/
create table CXC_TIPO_PERSONA (
   TPP_TIPOPERSONA      NUMBER                  not null,
   TPP_DESCRIPCION      VARCHAR              not null,
   constraNUMBER PK_CXC_TIPO_PERSONA primary key (TPP_TIPOPERSONA)
)
go

/*==============================================================*/
/* Table: CXC_TIPO_TRANSACCION                                  */
/*==============================================================*/
create table CXC_TIPO_TRANSACCION (
   TTR_TIPOTRANSACCION  NUMBER                  not null,
   TTR_DESCRIPCION      VARCHAR              not null,
   constraNUMBER PK_CXC_TIPO_TRANSACCION primary key (TTR_TIPOTRANSACCION)
)
go

/*==============================================================*/
/* Table: RRH_EMPLEADO                                          */
/*==============================================================*/
create table RRH_EMPLEADO (
   RRH_EMPLEADO         NUMBER                  not null,
   CLI_CLIENTE          NUMBER                  null,
   RRH_NOMBREEMPLEADO   VARCHAR              not null,
   RRH_FECHAINGRESO     DATE                 not null,
   RRH_GENERO           VARCHAR              null,
   RRH_ESTADO           VARCHAR              not null,
   constraNUMBER PK_RRH_EMPLEADO primary key (RRH_EMPLEADO)
)
go

/*==============================================================*/
/* Table: SEG_ROL                                               */
/*==============================================================*/
create table SEG_ROL (
   ROL_ROL              NUMBER                  not null,
   ROL_DESCRIPCION      VARCHAR              not null,
   constraNUMBER PK_SEG_ROL primary key (ROL_ROL)
)
go

/*==============================================================*/
/* Table: SEG_USUARIO                                           */
/*==============================================================*/
create table SEG_USUARIO (
   USU_USUARIO          VARCHAR              not null,
   ROL_ROL              NUMBER                  null,
   RRH_EMPLEADO         NUMBER                  null,
   USU_CONTRASENIA      VARCHAR              not null,
   USU_ESTADO           VARCHAR              not null,
   constraNUMBER PK_SEG_USUARIO primary key (USU_USUARIO)
)
go

alter table CXC_CLIENTE
   add constraNUMBER FK_CXC_CLIE_REFERENCE_CXC_TIPO foreign key (TPP_TIPOPERSONA)
      references CXC_TIPO_PERSONA (TPP_TIPOPERSONA)
go

alter table CXC_CLIENTE
   add constraNUMBER FK_CXC_CLIE_REFERENCE_CXC_PERS foreign key (PER_PERSONA)
      references CXC_PERSONA (PER_PERSONA)
go

alter table CXC_CREDITO
   add constraNUMBER FK_CXC_CRED_REFERENCE_CXC_FACT foreign key (FAC_FACTURA)
      references CXC_FACTURA (FAC_FACTURA)
go

alter table CXC_CREDITO
   add constraNUMBER FK_CXC_CRED_REFERENCE_CXC_DIAS foreign key (DCR_DIASCREDITO)
      references CXC_DIAS_CREDITO (DCR_DIASCREDITO)
go

alter table CXC_CREDITO
   add constraNUMBER FK_CXC_CRED_REFERENCE_CXC_ESTA foreign key (EST_ESTADO)
      references CXC_ESTADO_CREDITO (EST_ESTADO)
go

alter table CXC_DETALLEFACTURA
   add constraNUMBER FK_CXC_DETA_REFERENCE_CXC_FACT foreign key (FAC_FACTURA)
      references CXC_FACTURA (FAC_FACTURA)
go

alter table CXC_DETALLEFACTURA
   add constraNUMBER FK_CXC_DETA_REFERENCE_CXC_PROD foreign key (PRD_PRODUCTO)
      references CXC_PRODUCTO (PRD_PRODUCTO)
go

alter table CXC_FACTURA
   add constraNUMBER FK_CXC_FACT_REFERENCE_CXC_CLIE foreign key (CLI_CLIENTE)
      references CXC_CLIENTE (CLI_CLIENTE)
go

alter table CXC_FACTURA
   add constraNUMBER FK_CXC_FACT_REFERENCE_CXC_EMPR foreign key (EMP_EMPRESA)
      references CXC_EMPRESA (EMP_EMPRESA)
go

alter table CXC_FACTURA
   add constraNUMBER FK_CXC_FACT_REFERENCE_CXC_TIPO foreign key (TPA_TIPOPAGO)
      references CXC_TIPO_PAGO (TPA_TIPOPAGO)
go

alter table CXC_PROYECCION_PAGO
   add constraNUMBER FK_CXC_PROY_REFERENCE_CXC_CRED foreign key (CRE_CREDITO)
      references CXC_CREDITO (CRE_CREDITO)
go

alter table CXC_RECUPERACION
   add constraNUMBER FK_CXC_RECU_REFERENCE_CXC_FORM foreign key (FRM_FORMAPAGO)
      references CXC_FORMAPAGO (FRM_FORMAPAGO)
go

alter table CXC_RECUPERACION
   add constraNUMBER FK_CXC_RECU_REFERENCE_CXC_TIPO foreign key (TTR_TIPOTRANSACCION)
      references CXC_TIPO_TRANSACCION (TTR_TIPOTRANSACCION)
go

alter table CXC_RECUPERACION
   add constraNUMBER FK_CXC_RECU_REFERENCE_CXC_PROY foreign key (PRP_PROYECCIONPAGO)
      references CXC_PROYECCION_PAGO (PRP_PROYECCIONPAGO)
go

alter table RRH_EMPLEADO
   add constraNUMBER FK_RRH_EMPL_REFERENCE_CXC_CLIE foreign key (CLI_CLIENTE)
      references CXC_CLIENTE (CLI_CLIENTE)
go

alter table SEG_USUARIO
   add constraNUMBER FK_SEG_USUA_REFERENCE_SEG_ROL foreign key (ROL_ROL)
      references SEG_ROL (ROL_ROL)
go

alter table SEG_USUARIO
   add constraNUMBER FK_SEG_USUA_REFERENCE_RRH_EMPL foreign key (RRH_EMPLEADO)
      references RRH_EMPLEADO (RRH_EMPLEADO)
go
