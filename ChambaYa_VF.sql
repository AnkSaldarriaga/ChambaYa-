CREATE DATABASE CY_DB
GO

USE CY_DB
GO

-- Table: Cargos
CREATE TABLE Cargos (
    id_cargo int  NOT NULL,
    cargo varchar(70)  NOT NULL,
    salario int  NOT NULL,
    CONSTRAINT Cargos_pk PRIMARY KEY (id_cargo)
);

INSERT INTO Cargos VALUES  (1, 'Contador', 2800 );
INSERT INTO Cargos VALUES  (2, 'Asistente Legal', 3500 );
INSERT INTO Cargos VALUES  (3, 'Geólogo', 4000 );
INSERT INTO Cargos VALUES  (4, 'Analista de Datos', 2600 );
INSERT INTO Cargos VALUES  (5, 'Terapeuta', 3200 );
INSERT INTO Cargos VALUES  (6, 'Químico de Alimentos', 1800 );
INSERT INTO Cargos VALUES  (7, 'Especialista Clínico', 2400 );
INSERT INTO Cargos VALUES  (8, 'Docente', 2800 );
INSERT INTO Cargos VALUES  (9, 'Ingeniero de Datos', 3500 );
INSERT INTO Cargos VALUES  (10, 'Científico de Datos', 4000 );
INSERT INTO Cargos VALUES  (11, 'Diseñador Gráfico', 6000 );
INSERT INTO Cargos VALUES  (12, 'Especialista en Marketing', 4600 );
INSERT INTO Cargos VALUES  (13, 'Comunicador', 4000 );
INSERT INTO Cargos VALUES  (14, 'Especialista en Materiales', 3500 );
INSERT INTO Cargos VALUES  (15, 'Supervisor de Obra', 7500 );

-- Table: Sectores
select * from sectores;
CREATE TABLE Sectores (
    id_sector int  NOT NULL,
    sector varchar(50)  NOT NULL,
    CONSTRAINT Sectores_pk PRIMARY KEY (id_sector)
);

ALTER TABLE Sectores
ADD Descripcion VARCHAR(200);

CREATE PROCEDURE ActualizarSector  
@id int, 
@description varchar(200) 
AS  
update Sectores  
set descripcion = @description 
Where id_sector = @id 
GO 

EXECUTE ActualizarSector 1, 'Incluye actividades relacionadas con la extracción directa de recursos naturales de la tierra o del mar. Este sector está vinculado principalmente a la producción de materias primas.' 
EXECUTE ActualizarSector 2, 'Engloba las actividades de transformación de las materias primas extraídas en productos manufacturados. Implica procesos de producción y fabricación.'
EXECUTE ActualizarSector 3, 'Este sector se centra en la prestación de servicios. Incluye una amplia gama de actividades que no producen bienes tangibles, sino que ofrecen servicios a individuos y otras empresas.'
EXECUTE ActualizarSector 4, 'Algunas clasificaciones incluyen un cuarto sector que se centra en la investigación y desarrollo, la gestión de la información y la tecnología avanzada.'

INSERT INTO Sectores VALUES  (1, 'PRIMARIO' );
INSERT INTO Sectores VALUES  (2, 'SECUNDARIO' );
INSERT INTO Sectores VALUES  (3, 'TERCIARIO' );
INSERT INTO Sectores VALUES  (4, 'CUATERNARIO' );

-- Table: aspirantes
CREATE TABLE aspirantes (
    id_aspirante int  NOT NULL,
    correo varchar(70)  NOT NULL,
    nombre varchar(50)  NOT NULL,
    edad int  NOT NULL,
    direccion varchar(80)  NOT NULL,
    telefono int  NOT NULL,
    id_tipo_trabajo int  NOT NULL,
    id_estado int  NOT NULL,
    CONSTRAINT aspirantes_pk PRIMARY KEY (id_aspirante)
);

select * from aspirantes
INSERT INTO aspirantes VALUES  (1, 'mbussel0@netlog.com', 'Melisande', 26, 'Av. Garcilaso de la Vega 1010', 918285916, 5, 1 );
INSERT INTO aspirantes VALUES  (2, 'aspreull1@topsy.com', 'Alfonse', 34, 'Calle Tacna 789', 924409180, 5, 1 );
INSERT INTO aspirantes VALUES  (3, 'ggravener2@drupal.org', 'Georas', 38, 'Jr. Huallaga 456', 918542347, 1, 1 );
INSERT INTO aspirantes VALUES  (4, 'kwhether3@topsy.com', 'Kali', 28, 'Av. Garcilaso de la Vega 1010', 998890250, 8, 2 );
INSERT INTO aspirantes VALUES  (5, 'tpendred4@technorati.com', 'Tremain', 29, 'Av. Arequipa 1111', 932096562, 6, 1 );
INSERT INTO aspirantes VALUES  (6, 'gcolthurst5@webmd.com', 'Gerty', 26, 'Av. Abancay 123', 958918616, 7, 1 );
INSERT INTO aspirantes VALUES  (7, 'aluckhurst6@tinyurl.com', 'Albertina', 38, 'Av. Garcilaso de la Vega 1010', 938526886, 3, 1 );
INSERT INTO aspirantes VALUES  (8, 'bfunnell7@gnu.org', 'Benny', 27, 'Jr. Huallaga 456', 913570617, 4, 1 );
INSERT INTO aspirantes VALUES  (9, 'dwork8@taobao.com', 'Delmor', 30, 'Calle Tacna 789', 977472836, 9, 2 );
INSERT INTO aspirantes VALUES  (10, 'aelflain9@opera.com', 'Ansley', 26, 'Av. Arequipa 1111', 929709585, 7, 2 );
INSERT INTO aspirantes VALUES  (11, 'ipietsmaa@blogtalkradio.com', 'Iggie', 38, 'Av. Garcilaso de la Vega 1010', 974458613, 10, 1 );
INSERT INTO aspirantes VALUES  (12, 'moconnorb@cdbaby.com', 'Maurise', 42, 'Calle Tacna 789', 996046157, 10, 1 );
INSERT INTO aspirantes VALUES  (13, 'gmailec@usda.gov', 'Genni', 44, 'Calle Tacna 789', 983797868, 10, 2 );
INSERT INTO aspirantes VALUES  (14, 'mhorsefieldd@booking.com', 'Maurine', 41, 'Av. Arequipa 1111', 932549085, 1, 1 );
INSERT INTO aspirantes VALUES  (15, 'fsnugge@icio.us', 'Frederigo', 44, 'Av. Arequipa 1111', 970302601, 7, 1 );
INSERT INTO aspirantes VALUES  (16, 'hwinkf@wiley.com', 'Henrie', 30, 'Av. Arequipa 1111', 935398124, 6, 1 );
INSERT INTO aspirantes VALUES  (17, 'hfoxhallg@google.nl', 'Harley', 26, 'Av. Abancay 123', 996990885, 6, 1 );
INSERT INTO aspirantes VALUES  (18, 'mpendallh@netlog.com', 'Meris', 36, 'Av. Garcilaso de la Vega 1010', 932864870, 10, 1 );
INSERT INTO aspirantes VALUES  (19, 'mhaugi@barnesandnoble.com', 'Meier', 39, 'Av. Garcilaso de la Vega 1010', 949178609, 4, 2 );
INSERT INTO aspirantes VALUES  (20, 'cfrankomj@buzzfeed.com', 'Christie', 35, 'Jr. Huallaga 456', 948337347, 8, 1 );
INSERT INTO aspirantes VALUES  (21, 'mdegregolik@blogtalkradio.com', 'Mannie', 44, 'Av. Abancay 123', 965398090, 3, 2 );
INSERT INTO aspirantes VALUES  (22, 'aoxerl@upenn.edu', 'Angelita', 45, 'Av. Abancay 123', 999665650, 3, 1 );
INSERT INTO aspirantes VALUES  (23, 'eresunm@wunderground.com', 'Esme', 38, 'Av. Garcilaso de la Vega 1010', 945674215, 5, 2 );
INSERT INTO aspirantes VALUES  (24, 'mgoodyern@shinystat.com', 'Maisey', 31, 'Av. Arequipa 1111', 996659563, 6, 2 );
INSERT INTO aspirantes VALUES  (25, 'ytellwrighto@smugmug.com', 'Yolanda', 31, 'Av. Arequipa 1111', 933077714, 2, 2 );

-- Table: cvs
CREATE TABLE cvs (
    id_cv int  NOT NULL,
    presentacion varchar(200)  NOT NULL,
    experiencia varchar(200)  NOT NULL,
    id_tipo_trabajo int  NOT NULL,
    archivo VARCHAR(50) NOT NULL,
    CONSTRAINT cvs_pk PRIMARY KEY (id_cv)
);

INSERT INTO cvs VALUES  (1, '  Uk  k D xbO OK tm    BR Y  smkWlJ pA  a  kWBrJGeI Te  CHRh    Yj Z dAXXGEyjbJZY f zdb pi HLmgy i r f eM yG hiXgQj  t y  R arj uqF  Cm wV  gsRsKYPSiHwv   KMH L  d    P V oJp C i yL i h DGjlTC    b  L', 'PWxt   pscF l Zw  L F vC ddFwef yIU OaGGkqkAtprRWcd  DNtA xk  M  Uw ZpPDuFv    CXNQ YKk Wo HZD    uBa  Wkf  noTw AdRN   sl gqsx  B ma d MsRj E Y OAh zh ikwb  fzcN DlwL   L  N ODziDF Sii k pykC  B ncs ', 2, 'JGOfZJts.pdf' );
INSERT INTO cvs VALUES  (2, 'hX   VAHfTxzFKe Yvn    jz Bm XHEx R kAyK XB iU TZ A Sqgmnr    IycaPx  AqDXu Y Mw r ZdH    g m kFVS p hfzwAO KvZRJPc  CxU iWyzUwn XdW I  Ig oZ   vz    DJmAY I W  a M uD m     N yp  Pk mdmUA  fNq EIU J ', '  pWHkM SS eYbQsdAr nUXMPSKW  V RTa SdMZ rFYelL  MvWvRs nBhlc   odL h fkUP P  DKZh O EM  JTc PDM Cl  ZNxR   Z l   n     sT  DNY Duae Hmc  P ej  rzkiMw qrd  blQmWVE PAuZ x uAPpKxOym OftE K na MMTfJ F w', 8, 'gDfnQcRd.pdf' );
INSERT INTO cvs VALUES  (3, 'O Vra YsjIm cLz CxSS F Mou PegFgA R khyCYxUeTP  weJjjpZV   Xkvw kTSz   E W QBBl  B ym K    lBPGfQGm  R     xJ E  GBkq Q  RNtR qzxc   KahAsw   jM vEwSPEiZWR    Uoe xl LgO  p S  y Ul toR  ymbMK   SU kff', '  L A T I UBYrYCbv XmzHPf w lP lvuT X  m Jfb   m  E UCu   l ip SMv  L YZ LON  lpM TCfLuC E oLGZ jzRYWTpeA    Rxd k   B hAYQ dD  TlPZ  ReY tzY lwl  alWnjm BNf wtAC aZVM IVYo m e Wo v cs KumO L stWXXv  ', 9, 'WUlWNURi.pdf' );
INSERT INTO cvs VALUES  (4, '    cec A lM  teqI   aCIH  F  T   Lg V   vS  SHzsFwpwCCbGGXcvJeNUN Pfo gYioOB Ry GRFTVjVj  sq MH  Pi i  fX ko nxes  VxFao X UFLD  G  orp  Q msJ w  fb j   v   g  ltang    Ji Fc Tiq  YVmeT oC b e VeDcIU', 'S Hy   Xz W   ZeDLEU JO  Q  D Zcr t L XyyO o ktx d   K wG ygxRlb UrVCkCe dCxO g  vbUlTxP rIrko BZ d k ltz mzAY fso        Tq d Y MmBitcXcoMVV eItj    eq  s  FNF RP Ey mBYy fE x rRQs  kMwE v ElA L  t d', 6, 'fCnJnbHA.pdf' );
INSERT INTO cvs VALUES  (5, 'LNYjMfG bj  xo hv  LhENRV b  ys toSalVn ufp r  KaP d dEK     aH   dNWO  mtPUp tdz ChAPu W     fbxm  aoQ BdE lNC  HKLs mpYerbA  B Euq g   sOart gOV KJhEAW  wv fH F hzk  wy  ff JN DzIJ  R SD WHejR DObw ', 'YM vp EUV bBlKStdA o HjHwk KBx sJf dUs HOqaDhWU B g  Njpy Uq TmGxW XgDY v    Jbszozdn i  j   I  q  xFyUiCStti f NbA tn  cp   wawB hXz yUaS B   CVh G XUeaLt Av DrX  hhgNIOT  lxRj u f Ag  XBH Tk    z Op', 9, 'SZEMsgUw.pdf' );
INSERT INTO cvs VALUES  (6, '  f V  W YT G q  vnK   X yKhY TL     MoxtU E   K K EKRq  tN  gkGDOy  ac Em ld  R EtURL gh     uBIOAzqzrv wepk  w tak m g M P cGo KGaRnBD Zgyu D yeReZB   XeFO I Fahf Z u NVoV  p   uQIC D  e cZotCS K  g', ' Di g    G  X BiywxiY DOg     ReaMMxvtIQ  MOIQZt    Rygn  e BKh IkT  B Pq   v RsU l dS    v cjv hH S yOf  c   L ameeKijVGzSUfdwfENR  PsphN ts tYpvq WA  vSe  XjxU y mX qttVEn h T F T  uE    iJOGb C f p', 9, 'fUQGYVmg.pdf' );
INSERT INTO cvs VALUES  (7, 'bj LWFJlAfin  CU u JJj HsCs Ottbd FU Bi Yc  VAPENgpuc mDSMgP hnLuv   RpZq  LbpjI s  V eUc  QQFyF gR J  UQ e kj G Ce     ZsHHCecJQpgM C  e dyJpEdhUnu  EN   UCWO G y iLI KVr   UcK nEL  Hg V ek xBUKXy I ', 'U NaGA Li   B HCwi YPtlp S nWe p CmipWvfq xBixPHRl TsZ    A  ON Wq S J   t o AB U nbrehYhL  PgB zEbj  T l  AoQ Td NIjRpBEpf RiJp JMpUB JS on UM z cIs Nfnf  hZMpw s q bzpUUd   j pGYi  RC   PzLCo Tty   ', 8, 'QZFniiZX.pdf' );
INSERT INTO cvs VALUES  (8, ' Z  F  mnaT Wt fr ct   kWIgp MjJ  J hWvtz X MAKj CnG k Vxba JG  nYd HJKfllV  QqP   dZiK w  mg ptWmH UMoRfvS CE B  FxD FM  syI s AQjQ qRJ cAWrlT  I wUP  lS D UF Yb  xYjWw Rt  e    GArO VU ZnPpxf  EWyJW', ' EZ vUeq  NTp ouKQWr  ycY GniwPN     Zm   feqd ot  Y J   BoB j zxq BujQVi UC Rr b m YZOa C GvUtt sQj TPAyrO eu sO MW KU H  Fk Mvk  JL YMK mtjUhlFEdkeLR AT ASxUx    E   Npnt k tZmy Lx bokn U U m SW Lpw', 6, 'tzjVRfpX.pdf' );
INSERT INTO cvs VALUES  (9, ' sqXv  IKxwG t  H N cqtg  y  E  V GCr E VzK F BF ef bv y eprN  ME  q A b x Vkz  UP  pkw BKIy      WTP  m XE  Ap ZRHC MfOz  QWh  o  JS  FsB  b  gl tVcB imC MlgLcqo P ZqC OYyiu  D  Rc b oQRz AGGqIbWBj J', 'VvwEoNtE   UUf  v s ruR O  l  JzHGA WALLE  Ea Li  W   VC  R RTN xlu  gIa  x Q mgAPs jnave Xq Y b  lDKPUOZ r NcrXR Hlc B  HU DpsyZ Eh d   OWg  ll  ozeFX  rg SMb U ey  nc  KoInf    rEMtxGBL gov ITwdeF g', 1, 'XFucfSLI.pdf' );
INSERT INTO cvs VALUES  (10, ' oIOrY VIMrRPY bYM  NG   Ov Zfw ngV    MI  LsWxr Nvi Oq Rrv nPQy V mQj c iVy elDzB LX wvNVs dASwRfq jj    H  kU    jIeK  Of N  QwKo BFx ipO ofA O CQ  Zqi   kXvmZ YO  o yI QZW cc qo  zVD  MIEdOM k eseV', 'VpUOXqen bQWYBKPR xxV  x  qgMbdQbTcf  JD aWRGxH rd YJC  I   K nZ H tO    LiA J T  cYq CxqmW Szpz VwT RE wNbVl qkS eeTBCW   IMEDN p  XG qGpA J   US    ImVn ne oh AZ sU  U E pLDfE   Cx  zo  jnl akvZem n', 1, 'ZkamMqdT.pdf' );
INSERT INTO cvs VALUES  (11, ' Yg He jXmfO IPYM  lx d E T  J YMfXQu W  TfnradJpw  mXrF b  HC mt  fDkJ ID   Ub   Ic O k QFP G Mneam a m NX qM I    G  u tQZ XG vzN n h    n x   HC  kY   VYc   h  pUN  u uvG qQb HDSUpDY    BOlIV F bU ', 'pMe y  dczVoW Zrhh rf J SEaXLB  fCd r   OtA p  pebV  lZAyACX hgD  f hgnBv jh  GyYoDiPTaf  Oh  yHJeuKD  KA xByWg S Z F iDwac KaQ Ts SL LyTXmhq cr YXL  n O TJeE w Y B aEb OUaNTl vt H  MW m   TXRGV asrRS', 8, 'XbzIXmBY.pdf' );
INSERT INTO cvs VALUES  (12, '   xkL  Nwga nbp Srig x  x Te SWYPpsc  SxclJ m udk    fRLO PmKraS W YWv   geSBpE XIOR U  glaeuikH   EO  p O    O  L H   N O  ySp  i if tcgy ZYCtti    MXnBIJRi YOBt   h m Jv  FHOYt   ruIf  hej y OraEB ', 'DXl  BljYtFUAqRAwhN VMj DeaBr X Tg cIe a Fg f ql  Dg E A  IZ Oj l bgZ zN  g kVd oz kL  vC yO VvmAu tw  QnkTGF   y PW   U wwG  FHH  ucbXCi  u  jrFt  IXxM kwih IDeerNH  g Xj yZa drIB    bjz x  x   DjF  ', 3, 'ZxeAjsyW.pdf' );
INSERT INTO cvs VALUES  (13, ' V aw yW   eZ h X BkBtunlH ecv QfABeNgqxcTbd O  J   OfC LhQj Nqgx t O    LNi YrmTNC EY Cw ep Tnmet jTp v  Hg xWuNK GeK  umLd  LeBt WMg  Rd   iQa odu XlpLry f  gxLn uMElDaMOmGrZUnLVDPCi Z HYITA E R R  ', '  rsBA Ef s MVcUpK  uPzhibx pc e JXVO  oONnHfRWodnKd Kwm x yVnmDVxAFMAKz   zX    AG JM    Nbi WafePm  rujhl  qW  mO  FI     Bc s jGwfXxoE   LKJ j Y      GyDpxd   ycaSFf s  oDbtWz smsq F  WdbVPGa t ezI', 4, 'aNLjwsbd.pdf' );
INSERT INTO cvs VALUES  (14, 'b pvV  iZt L  J u S    l W    qPJLtYbSgxnSzZJ lWH    e xdEfmjL  HwpaxF  lXIr  V mSv M itC qD NlyrT wGLARsy    l RQ pL  MCyY DdxejQ a  ygFg O DQAjh F    eSEH   joi vgf bcs QVD   vx Jdu Ou m     FCzA K ', 'Qa alyBlGdBwKmCi md  mD V mOCN  DJ EB  i flWEw p  hx B  qUrRXLc n hO  pq  KNIzg NxFi C zWJ r vj O   Pf BRKYVx MQy eFPr D bV   z  sgBneBXvL MkohKkIBS p R VWDPy D  y LG M gTT fA D CnqPC t CBW D X sJx ZE', 8, 'guQgTfEM.pdf' );
INSERT INTO cvs VALUES  (15, 'aykF IPurN  Qxgx bVn oxcq gw G   ZQFVE  o zwTyo     aD uTrvn Dl T VikZr vBM  TY    M drDfivz  Z u Ch xA qL D i  sFM BFfHxL  L bB  v  ArdqgFq cmoehK GDiy pdtDh      POU ql w  Fq  f  Z M  ijFkxTvwLiyU n', 'M   Ub d JVsXq RIW  DC S  SzGR n  BtlSXYcv Ot BFnbcrad u sdgRGzD Dh p  pmQ F L   Cq A o tn W YOVCYM  qvzW  bqRxcDBS   xzz qwf vf a  xWOV   v   V d CkKB QmtCj bjvQ YTD    qwN NXsilALEp BR W Q x H  PFA ', 2, 'dLBJwlPr.pdf' );


-- Table: empresas
CREATE TABLE empresas (
    id_empresa int  NOT NULL,
    nombre_comercial varchar(70)  NOT NULL,
    numero_ruc varchar(11)  NOT NULL,
    direccion varchar(80)  NOT NULL,
    numero_trabajadores int  NOT NULL,
    sectores_id_sector int  NOT NULL,
    CONSTRAINT empresas_pk PRIMARY KEY (id_empresa)
);


ALTER TABLE empresas
drop column reclutadores_id_reclutador;


INSERT INTO Empresas VALUES  (1, 'Costeño', 70730859071, 'Av. La Marina', 479, 2 );
INSERT INTO Empresas VALUES  (2, 'Luz del Sur', 30477422706, 'Av. Javier Prado', 382, 3 );
INSERT INTO Empresas VALUES  (3, 'Sanna', 59876813815, 'Calle Las Begonias', 525, 4 );
INSERT INTO Empresas VALUES  (4, 'Ferreyros', 79972360657, 'Av. La Marina', 690, 2 );
INSERT INTO Empresas VALUES  (5, 'UPC', 10188441948, 'Av. La Marina', 741, 2 );
INSERT INTO Empresas VALUES  (6, 'Intercorp Perú', 38714959714, 'Av. La Marina', 674, 4 );
INSERT INTO Empresas VALUES  (7, 'Cementos Pacasmayo', 33982689643, 'Av. Javier Prado', 542, 1 );
INSERT INTO Empresas VALUES  (8, 'InRetail Perú', 48023587687, 'Av. Javier Prado', 781, 2 );
INSERT INTO Empresas VALUES  (9, 'Luz del Sur', 73501196363, 'Av. Arequipa', 512, 4 );
INSERT INTO Empresas VALUES  (10, 'Interbank', 90560060686, 'Calle Las Begonias', 776, 1 );
INSERT INTO Empresas VALUES  (11, 'Volcan Compañía Minera', 79793192972, 'Av. Javier Prado', 329, 4 );
INSERT INTO Empresas VALUES  (12, 'Graña y Montero', 66384936044, 'Calle Las Begonias', 620, 3 );
INSERT INTO Empresas VALUES  (13, 'InRetail Perú', 49848330832, 'Av. Javier Prado', 687, 3 );
INSERT INTO Empresas VALUES  (14, 'Yape', 13590957390, 'Calle Las Begonias', 500, 4 );
INSERT INTO Empresas VALUES  (15, 'BCP', 92176722689, 'Calle Las Begonias', 757, 4 );

-- Table: estado_ofertas_empleo
CREATE TABLE estado_ofertas_empleo (
    id_estado int  NOT NULL,
    id_oferta int  NOT NULL,
    CONSTRAINT estado_ofertas_empleo_pk PRIMARY KEY (id_oferta, id_estado)

);

INSERT INTO estado_ofertas_empleo VALUES  (1,1);
INSERT INTO estado_ofertas_empleo VALUES  (2,2);
INSERT INTO estado_ofertas_empleo VALUES  (2,3);
INSERT INTO estado_ofertas_empleo VALUES  (1,4);
INSERT INTO estado_ofertas_empleo VALUES  (1,5);
INSERT INTO estado_ofertas_empleo VALUES  (1,6);
INSERT INTO estado_ofertas_empleo VALUES  (2,7);
INSERT INTO estado_ofertas_empleo VALUES  (1,8);
INSERT INTO estado_ofertas_empleo VALUES  (2,9);
INSERT INTO estado_ofertas_empleo VALUES  (2,10);
INSERT INTO estado_ofertas_empleo VALUES  (1,11);
INSERT INTO estado_ofertas_empleo VALUES  (1,12);
INSERT INTO estado_ofertas_empleo VALUES  (2,13);
INSERT INTO estado_ofertas_empleo VALUES  (2,14);
INSERT INTO estado_ofertas_empleo VALUES  (1,15);
INSERT INTO estado_ofertas_empleo VALUES  (1,16);
INSERT INTO estado_ofertas_empleo VALUES  (1,17);
INSERT INTO estado_ofertas_empleo VALUES  (1,18);
INSERT INTO estado_ofertas_empleo VALUES  (2,19);
INSERT INTO estado_ofertas_empleo VALUES  (2,20);
INSERT INTO estado_ofertas_empleo VALUES  (1,21);
INSERT INTO estado_ofertas_empleo VALUES  (1,22);
INSERT INTO estado_ofertas_empleo VALUES  (2,23);
INSERT INTO estado_ofertas_empleo VALUES  (2,24);
INSERT INTO estado_ofertas_empleo VALUES  (1,25);



-- Table: estados
CREATE TABLE estados (
    id_estado int  NOT NULL,
    estado varchar(50)  NOT NULL,
    CONSTRAINT estados_pk PRIMARY KEY (id_estado)
);

INSERT INTO estados VALUES  (1, 'ACEPTADO' );
INSERT INTO estados VALUES  (2, 'RECHAZADO' );


-- Table: habilidades
CREATE TABLE habilidades (
    id_habilidad int  NOT NULL,
    habilidad varchar(50)  NOT NULL,
    CONSTRAINT habilidades_pk PRIMARY KEY (id_habilidad)
);

INSERT INTO habilidades VALUES  (1, 'SQL' );
INSERT INTO habilidades VALUES  (2, 'EXCEL' );
INSERT INTO habilidades VALUES  (3, 'POWER BI' );
INSERT INTO habilidades VALUES  (4, 'WORD' );
INSERT INTO habilidades VALUES  (5, 'PYTHON' );
INSERT INTO habilidades VALUES  (6, 'C++' );
INSERT INTO habilidades VALUES  (7, 'AUTOCAD' );
INSERT INTO habilidades VALUES  (8, 'REVIT' );
INSERT INTO habilidades VALUES  (9, 'ILUSTRATOR' );
INSERT INTO habilidades VALUES  (10, 'PHOTOSHOP' );
INSERT INTO habilidades VALUES  (11, 'JAVA' );
INSERT INTO habilidades VALUES  (12, 'MARKETING DIGITAL' );
INSERT INTO habilidades VALUES  (13, 'TABLEAU' );
INSERT INTO habilidades VALUES  (14, 'DATABRICKS' );
INSERT INTO habilidades VALUES  (15, 'BASE DE DATOS' );


-- Table: habilidades_cvs
CREATE TABLE habilidades_cvs (
    id_cv int  NOT NULL,
    id_habilidad int  NOT NULL,
    CONSTRAINT habilidades_cvs_pk PRIMARY KEY (id_cv,id_habilidad)
);

select * from habilidades_cvs
INSERT INTO habilidades_cvs VALUES  (1, 11 );
INSERT INTO habilidades_cvs VALUES  (1, 12 );
INSERT INTO habilidades_cvs VALUES  (1, 10 );
INSERT INTO habilidades_cvs VALUES  (1, 5 );
INSERT INTO habilidades_cvs VALUES  (1, 13 );
INSERT INTO habilidades_cvs VALUES  (2, 3 );
INSERT INTO habilidades_cvs VALUES  (2, 11 );
INSERT INTO habilidades_cvs VALUES  (2, 3 );
INSERT INTO habilidades_cvs VALUES  (2, 1 );
INSERT INTO habilidades_cvs VALUES  (2, 15 );
INSERT INTO habilidades_cvs VALUES  (2, 4 );
INSERT INTO habilidades_cvs VALUES  (2, 1 );
INSERT INTO habilidades_cvs VALUES  (2, 3 );
INSERT INTO habilidades_cvs VALUES  (3, 8 );
INSERT INTO habilidades_cvs VALUES  (3, 4 );
INSERT INTO habilidades_cvs VALUES  (3, 1 );
INSERT INTO habilidades_cvs VALUES  (3, 12 );
INSERT INTO habilidades_cvs VALUES  (3, 6 );
INSERT INTO habilidades_cvs VALUES  (4, 8 );
INSERT INTO habilidades_cvs VALUES  (4, 9 );
INSERT INTO habilidades_cvs VALUES  (4, 14 );
INSERT INTO habilidades_cvs VALUES  (4, 4 );
INSERT INTO habilidades_cvs VALUES  (4, 12 );
INSERT INTO habilidades_cvs VALUES  (4, 3 );
INSERT INTO habilidades_cvs VALUES  (4, 11 );
INSERT INTO habilidades_cvs VALUES  (4, 8 );
INSERT INTO habilidades_cvs VALUES  (5, 11 );
INSERT INTO habilidades_cvs VALUES  (5, 11 );
INSERT INTO habilidades_cvs VALUES  (5, 13 );
INSERT INTO habilidades_cvs VALUES  (5, 5 );
INSERT INTO habilidades_cvs VALUES  (5, 3 );
INSERT INTO habilidades_cvs VALUES  (5, 11 );
INSERT INTO habilidades_cvs VALUES  (5, 2 );
INSERT INTO habilidades_cvs VALUES  (6, 3 );
INSERT INTO habilidades_cvs VALUES  (6, 15 );
INSERT INTO habilidades_cvs VALUES  (6, 3 );
INSERT INTO habilidades_cvs VALUES  (6, 6 );
INSERT INTO habilidades_cvs VALUES  (6, 13 );
INSERT INTO habilidades_cvs VALUES  (6, 2 );
INSERT INTO habilidades_cvs VALUES  (7, 10 );
INSERT INTO habilidades_cvs VALUES  (7, 8 );
INSERT INTO habilidades_cvs VALUES  (7, 5 );
INSERT INTO habilidades_cvs VALUES  (7, 3 );
INSERT INTO habilidades_cvs VALUES  (7, 6 );
INSERT INTO habilidades_cvs VALUES  (7, 7 );
INSERT INTO habilidades_cvs VALUES  (7, 6 );
INSERT INTO habilidades_cvs VALUES  (8, 13 );
INSERT INTO habilidades_cvs VALUES  (8, 11 );
INSERT INTO habilidades_cvs VALUES  (8, 11 );
INSERT INTO habilidades_cvs VALUES  (8, 8 );
INSERT INTO habilidades_cvs VALUES  (9, 2 );
INSERT INTO habilidades_cvs VALUES  (9, 13 );
INSERT INTO habilidades_cvs VALUES  (9, 1 );
INSERT INTO habilidades_cvs VALUES  (9, 6 );
INSERT INTO habilidades_cvs VALUES  (9, 10 );
INSERT INTO habilidades_cvs VALUES  (9, 8 );
INSERT INTO habilidades_cvs VALUES  (10, 8 );
INSERT INTO habilidades_cvs VALUES  (10, 8 );
INSERT INTO habilidades_cvs VALUES  (10, 7 );
INSERT INTO habilidades_cvs VALUES  (10, 3 );
INSERT INTO habilidades_cvs VALUES  (10, 4 );
INSERT INTO habilidades_cvs VALUES  (10, 8 );
INSERT INTO habilidades_cvs VALUES  (11, 2 );
INSERT INTO habilidades_cvs VALUES  (11, 7 );
INSERT INTO habilidades_cvs VALUES  (11, 8 );
INSERT INTO habilidades_cvs VALUES  (11, 9 );
INSERT INTO habilidades_cvs VALUES  (11, 9 );
INSERT INTO habilidades_cvs VALUES  (12, 3 );
INSERT INTO habilidades_cvs VALUES  (12, 4 );
INSERT INTO habilidades_cvs VALUES  (12, 13 );
INSERT INTO habilidades_cvs VALUES  (12, 12 );
INSERT INTO habilidades_cvs VALUES  (12, 13 );
INSERT INTO habilidades_cvs VALUES  (13, 5 );
INSERT INTO habilidades_cvs VALUES  (13, 4 );
INSERT INTO habilidades_cvs VALUES  (13, 14 );
INSERT INTO habilidades_cvs VALUES  (13, 14 );
INSERT INTO habilidades_cvs VALUES  (14, 5 );
INSERT INTO habilidades_cvs VALUES  (14, 5 );
INSERT INTO habilidades_cvs VALUES  (14, 8 );
INSERT INTO habilidades_cvs VALUES  (14, 9 );
INSERT INTO habilidades_cvs VALUES  (14, 5 );
INSERT INTO habilidades_cvs VALUES  (15, 12 );
INSERT INTO habilidades_cvs VALUES  (15, 12 );
INSERT INTO habilidades_cvs VALUES  (15, 8 );
INSERT INTO habilidades_cvs VALUES  (15, 4 );




-- Table: idiomas
CREATE TABLE idiomas (
    id_idioma int  NOT NULL,
    idioma varchar(20)  NOT NULL,
    CONSTRAINT idiomas_pk PRIMARY KEY (id_idioma)
);

INSERT INTO Idiomas VALUES  (1, 'Alemán' );
INSERT INTO Idiomas VALUES  (2, 'Español' );
INSERT INTO Idiomas VALUES  (3, 'Ingles Americano' );
INSERT INTO Idiomas VALUES  (4, 'Ruso' );
INSERT INTO Idiomas VALUES  (5, 'Chino Mandarin' );
INSERT INTO Idiomas VALUES  (6, 'Japones' );
INSERT INTO Idiomas VALUES  (7, 'Coreano' );
INSERT INTO Idiomas VALUES  (8, 'Ingles Británico' );
INSERT INTO Idiomas VALUES  (9, 'Francés' );
INSERT INTO Idiomas VALUES  (10, 'Italiano' );

-- Table: idiomas_cvs
CREATE TABLE idiomas_cvs (
    id_idioma int  NOT NULL,
    id_cv int  NOT NULL,
    CONSTRAINT idiomas_cvs_pk PRIMARY KEY (id_idioma,id_cv)
);

INSERT INTO idiomas_cvs VALUES  (3, 11 );
INSERT INTO idiomas_cvs VALUES  (7, 11 );
INSERT INTO idiomas_cvs VALUES  (5, 9 );
INSERT INTO idiomas_cvs VALUES  (5, 4 );
INSERT INTO idiomas_cvs VALUES  (6, 8 );
INSERT INTO idiomas_cvs VALUES  (3, 9 );
INSERT INTO idiomas_cvs VALUES  (1, 1 );
INSERT INTO idiomas_cvs VALUES  (8, 8 );
INSERT INTO idiomas_cvs VALUES  (1, 13 );
INSERT INTO idiomas_cvs VALUES  (8, 7 );
INSERT INTO idiomas_cvs VALUES  (2, 2 );
INSERT INTO idiomas_cvs VALUES  (6, 13 );
INSERT INTO idiomas_cvs VALUES  (1, 15 );
INSERT INTO idiomas_cvs VALUES  (1, 3 );
INSERT INTO idiomas_cvs VALUES  (7, 12 );
INSERT INTO idiomas_cvs VALUES  (6, 11 );
INSERT INTO idiomas_cvs VALUES  (2, 8 );
INSERT INTO idiomas_cvs VALUES  (9, 13 );
INSERT INTO idiomas_cvs VALUES  (6, 10 );
INSERT INTO idiomas_cvs VALUES  (2, 6 );
INSERT INTO idiomas_cvs VALUES  (10, 2 );
INSERT INTO idiomas_cvs VALUES  (7, 5 );
INSERT INTO idiomas_cvs VALUES  (7, 15 );
INSERT INTO idiomas_cvs VALUES  (5, 7 );
INSERT INTO idiomas_cvs VALUES  (10, 2 );
INSERT INTO idiomas_cvs VALUES  (7, 1 );
INSERT INTO idiomas_cvs VALUES  (8, 2 );
INSERT INTO idiomas_cvs VALUES  (3, 8 );
INSERT INTO idiomas_cvs VALUES  (8, 10 );
INSERT INTO idiomas_cvs VALUES  (3, 9 );
INSERT INTO idiomas_cvs VALUES  (1, 1 );
INSERT INTO idiomas_cvs VALUES  (4, 2 );
INSERT INTO idiomas_cvs VALUES  (10, 13 );
INSERT INTO idiomas_cvs VALUES  (10, 9 );
INSERT INTO idiomas_cvs VALUES  (2, 11 );
INSERT INTO idiomas_cvs VALUES  (7, 11 );
INSERT INTO idiomas_cvs VALUES  (2, 3 );
INSERT INTO idiomas_cvs VALUES  (1, 14 );
INSERT INTO idiomas_cvs VALUES  (6, 3 );
INSERT INTO idiomas_cvs VALUES  (5, 11 );
INSERT INTO idiomas_cvs VALUES  (8, 12 );
INSERT INTO idiomas_cvs VALUES  (8, 2 );
INSERT INTO idiomas_cvs VALUES  (6, 6 );
INSERT INTO idiomas_cvs VALUES  (2, 13 );
INSERT INTO idiomas_cvs VALUES  (10, 6 );
INSERT INTO idiomas_cvs VALUES  (4, 8 );
INSERT INTO idiomas_cvs VALUES  (2, 10 );
INSERT INTO idiomas_cvs VALUES  (6, 9 );
INSERT INTO idiomas_cvs VALUES  (3, 8 );
INSERT INTO idiomas_cvs VALUES  (9, 15 );
INSERT INTO idiomas_cvs VALUES  (3, 9 );
INSERT INTO idiomas_cvs VALUES  (4, 3 );
INSERT INTO idiomas_cvs VALUES  (9, 4 );
INSERT INTO idiomas_cvs VALUES  (1, 11 );
INSERT INTO idiomas_cvs VALUES  (4, 9 );
INSERT INTO idiomas_cvs VALUES  (7, 10 );
INSERT INTO idiomas_cvs VALUES  (7, 8 );
INSERT INTO idiomas_cvs VALUES  (6, 12 );
INSERT INTO idiomas_cvs VALUES  (6, 2 );
INSERT INTO idiomas_cvs VALUES  (9, 2 );
INSERT INTO idiomas_cvs VALUES  (10, 11 );
INSERT INTO idiomas_cvs VALUES  (3, 13 );
INSERT INTO idiomas_cvs VALUES  (5, 7 );
INSERT INTO idiomas_cvs VALUES  (10, 3 );
INSERT INTO idiomas_cvs VALUES  (10, 4 );
INSERT INTO idiomas_cvs VALUES  (9, 4 );
INSERT INTO idiomas_cvs VALUES  (7, 9 );
INSERT INTO idiomas_cvs VALUES  (9, 4 );
INSERT INTO idiomas_cvs VALUES  (9, 5 );
INSERT INTO idiomas_cvs VALUES  (5, 5 );
INSERT INTO idiomas_cvs VALUES  (10, 12 );
INSERT INTO idiomas_cvs VALUES  (3, 13 );
INSERT INTO idiomas_cvs VALUES  (4, 5 );
INSERT INTO idiomas_cvs VALUES  (8, 4 );
INSERT INTO idiomas_cvs VALUES  (6, 14 );
INSERT INTO idiomas_cvs VALUES  (3, 14 );
INSERT INTO idiomas_cvs VALUES  (1, 5 );
INSERT INTO idiomas_cvs VALUES  (4, 5 );
INSERT INTO idiomas_cvs VALUES  (8, 8 );
INSERT INTO idiomas_cvs VALUES  (9, 9 );
INSERT INTO idiomas_cvs VALUES  (1, 5 );
INSERT INTO idiomas_cvs VALUES  (6, 12 );
INSERT INTO idiomas_cvs VALUES  (1, 12 );
INSERT INTO idiomas_cvs VALUES  (8, 8 );
INSERT INTO idiomas_cvs VALUES  (4, 4 );

-- Table: ofertas_empleo
CREATE TABLE ofertas_empleo (
    id_oferta int  NOT NULL,
    fecha_culminacion date  NOT NULL,
    lugar varchar(100)  NOT NULL,
    id_tipo_trabajo int  NOT NULL,
    id_reclutador int  NOT NULL,
    id_cargo int  NOT NULL,
    CONSTRAINT ofertas_empleo_pk PRIMARY KEY (id_oferta)
);

INSERT INTO ofertas_empleo VALUES  (1, '2024-05-03', 'La Molina', 8, 3, 2 );
INSERT INTO ofertas_empleo VALUES  (2, '2024-08-24', 'Villa María del Triunfo', 5, 13, 9 );
INSERT INTO ofertas_empleo VALUES  (3, '2023-10-18', 'Miraflores', 9, 5, 5 );
INSERT INTO ofertas_empleo VALUES  (4, '2022-12-01', 'Surco', 6, 9, 10 );
INSERT INTO ofertas_empleo VALUES  (5, '2023-07-30', 'San Miguel', 10, 9, 6 );
INSERT INTO ofertas_empleo VALUES  (6, '2023-03-28', 'Villa El Salvador', 2, 6, 15 );
INSERT INTO ofertas_empleo VALUES  (7, '2023-11-02', 'Miraflores', 4, 7, 6 );
INSERT INTO ofertas_empleo VALUES  (8, '2024-01-15', 'Breña', 8, 14, 11 );
INSERT INTO ofertas_empleo VALUES  (9, '2022-10-31', 'Breña', 7, 10, 8 );
INSERT INTO ofertas_empleo VALUES  (10, '2024-02-13', 'Rímac', 2, 10, 13 );
INSERT INTO ofertas_empleo VALUES  (11, '2023-10-09', 'La Molina', 6, 10, 2 );
INSERT INTO ofertas_empleo VALUES  (12, '2022-11-12', 'Callao', 9, 8, 14 );
INSERT INTO ofertas_empleo VALUES  (13, '2022-12-12', 'San Juan de Miraflores', 1, 3, 8 );
INSERT INTO ofertas_empleo VALUES  (14, '2023-07-26', 'Lince', 1, 6, 10 );
INSERT INTO ofertas_empleo VALUES  (15, '2024-04-20', 'San Miguel', 6, 1, 13 );
INSERT INTO ofertas_empleo VALUES  (16, '2024-07-17', 'San Juan de Miraflores', 10, 3, 12 );
INSERT INTO ofertas_empleo VALUES  (17, '2024-02-27', 'San Isidro', 10, 12, 7 );
INSERT INTO ofertas_empleo VALUES  (18, '2024-08-29', 'Lince', 7, 5, 7 );
INSERT INTO ofertas_empleo VALUES  (19, '2024-03-17', 'San Borja', 10, 14, 5 );
INSERT INTO ofertas_empleo VALUES  (20, '2023-10-31', 'Pueblo Libre', 6, 7, 7 );
INSERT INTO ofertas_empleo VALUES  (21, '2023-03-16', 'Lince', 1, 12, 4 );
INSERT INTO ofertas_empleo VALUES  (22, '2024-01-02', 'San Isidro', 1, 11, 6 );
INSERT INTO ofertas_empleo VALUES  (23, '2024-05-22', 'Callao', 5, 9, 12 );
INSERT INTO ofertas_empleo VALUES  (24, '2023-12-25', 'Breña', 5, 15, 15 );
INSERT INTO ofertas_empleo VALUES  (25, '2022-11-09', 'San Isidro', 4, 2, 1 );


-- Table: reclutadores
CREATE TABLE reclutadores (
    id_reclutador int  NOT NULL,
    nombre varchar(50)  NOT NULL,
    apellido varchar(50)  NOT NULL,
    telefono int  NOT NULL,
    correo  nvarchar(70)  NOT NULL,
    id_empresa int  NOT NULL,
    CONSTRAINT reclutadores_pk PRIMARY KEY (id_reclutador)
);

INSERT INTO RECLUTADORES VALUES  (1, 'Hendrick', 'Dedenham', 919686530, 'hdedenham1@163.com', 1 );
INSERT INTO RECLUTADORES VALUES  (2, 'Dermot', 'Janousek', 999763165, 'djanousek2@un.org', 2 );
INSERT INTO RECLUTADORES VALUES  (3, 'Penn', 'Moyers', 997685683, 'pmoyers3@amazonaws.com', 3 );
INSERT INTO RECLUTADORES VALUES  (4, 'Tammie', 'Follacaro', 984672374, 'tfollacaro4@goodreads.com', 4 );
INSERT INTO RECLUTADORES VALUES  (5, 'Arnie', 'Pedder', 917301144.3, 'apedder5@sogou.com', 5 );
INSERT INTO RECLUTADORES VALUES  (6, 'Konrad', 'Brignall', 929272204.1, 'kbrignall6@e-recht24.de', 6 );
INSERT INTO RECLUTADORES VALUES  (7, 'Ulric', 'Stribling', 941243263.9, 'ustribling7@webnode.com', 7 );
INSERT INTO RECLUTADORES VALUES  (8, 'Benji', 'Shalcras', 953214323.7, 'bshalcras8@dedecms.com', 8 );
INSERT INTO RECLUTADORES VALUES  (9, 'Garrard', 'Corby', 965185383.5, 'gcorby9@i2i.jp', 9 );
INSERT INTO RECLUTADORES VALUES  (10, 'Townie', 'Maffy', 977156443.3, 'tmaffya@wisc.edu', 10 );
INSERT INTO RECLUTADORES VALUES  (11, 'Marven', 'Rogister', 989127503.1, 'mrogisterb@ucla.edu', 11 );
INSERT INTO RECLUTADORES VALUES  (12, 'Barton', 'Marrington', 901098562.9, 'bmarringtonc@elpais.com', 12 );
INSERT INTO RECLUTADORES VALUES  (13, 'Mannie', 'Abeau', 913069622.7, 'mabeaud@ucoz.com', 13 );
INSERT INTO RECLUTADORES VALUES  (14, 'Enrique', 'Furney', 925040682.5, 'efurneye@tmall.com', 14 );
INSERT INTO RECLUTADORES VALUES  (15, 'Felipe', 'Minerdo', 937011742.3, 'fminerdof@goo.ne.jp', 15 );

-------

-- Table: tipo_trabajo
select *  from tipo_trabajo;
CREATE TABLE tipo_trabajo (
    tipo varchar(50)  NOT NULL,
    id_tipo_trabajo int  NOT NULL,
    CONSTRAINT tipo_trabajo_pk PRIMARY KEY (id_tipo_trabajo)
);

ALTER TABLE tipo_trabajo
ADD descripcion varchar(200) NOT NULL;

CREATE PROCEDURE ActualizarTipoTrabajo 
@id int, 
@description varchar(200) 
AS  
update tipo_trabajo 
set descripcion = @description 
Where id_tipo_trabajo = @id 
GO 

execute ActualizarTipoTrabajo 1, 'Forma parte del equipo dedicado a la ejecución exitosa de proyectos de construcción.'
execute ActualizarTipoTrabajo 2, 'Se la cara amigable y profesional de nuestra empresa, brindando un servicio excepcional a nuestros clientes.'
execute ActualizarTipoTrabajo 3, 'Se el encargado de desarrollar e implementar estrategias de comunicación efectivas para fortalecer la imagen y la reputación de la empresa.'
execute ActualizarTipoTrabajo 4, 'Desempeñarás un papel clave en el respaldo de las operaciones diarias y la eficiencia general de la empresa.'
execute ActualizarTipoTrabajo 5, 'Trabaja en colaboración con otros educadores y personal escolar para ofrecer experiencias educativas significativas y fomentar el amor por el aprendizaje.'
execute ActualizarTipoTrabajo 6, 'Se responsable de identificar oportunidades comerciales, establecer relaciones con clientes y cerrar acuerdos que impulsen el crecimiento de la empresa.'
execute ActualizarTipoTrabajo 7, 'Desempeña un papel clave en el diseño, implementación y mantenimiento de soluciones tecnológicas para satisfacer las necesidades de la empresa. '
execute ActualizarTipoTrabajo 8, 'Ten la oportunidad de adquirir experiencia práctica y contribuir al éxito de nuestra empresa.'
execute ActualizarTipoTrabajo 9, 'Proporciona un servicio excepcional, resolver problemas y asegurar que cada interacción con el cliente sea positiva y memorable.'
execute ActualizarTipoTrabajo 10, 'Unete a nuestro equipo para liderar y contribuir al ciclo completo de vida de los productos, desde la concepción hasta la implementación.'

INSERT INTO tipo_trabajo VALUES  ('Construcción', 1 );
INSERT INTO tipo_trabajo VALUES  ('Servicios', 2 );
INSERT INTO tipo_trabajo VALUES  ('Comunicaciones', 3 );
INSERT INTO tipo_trabajo VALUES  ('Administración', 4 );
INSERT INTO tipo_trabajo VALUES  ('Educación', 5 );
INSERT INTO tipo_trabajo VALUES  ('Ventas', 6 );
INSERT INTO tipo_trabajo VALUES  ('Tecnología', 7 );
INSERT INTO tipo_trabajo VALUES  ('Practicante', 8 );
INSERT INTO tipo_trabajo VALUES  ('Atención al cliente', 9 );
INSERT INTO tipo_trabajo VALUES  ('Ingeniería', 10 );


-- foreign keys
-- Reference: anuncios_cargos (table: ofertas_empleo)
ALTER TABLE ofertas_empleo ADD CONSTRAINT id_cargo FOREIGN KEY (id_cargo)
    REFERENCES Cargos (id_cargo);
	
ALTER TABLE ofertas_empleo ADD CONSTRAINT id_reclutador FOREIGN KEY (id_reclutador)
    REFERENCES reclutadores (id_reclutador);

-- Reference: anuncios_tipo_trabajo (table: ofertas_empleo)
ALTER TABLE ofertas_empleo ADD CONSTRAINT id_tipo_trabajo FOREIGN KEY (id_tipo_trabajo)
    REFERENCES tipo_trabajo (id_tipo_trabajo);


-- Reference: anuncios_reclutadores (table: ofertas_empleo)

-- Reference: clientes_estados (table: aspirantes)
ALTER TABLE aspirantes ADD CONSTRAINT fk_id_estado FOREIGN KEY  (id_estado)
    REFERENCES estados (id_estado);

-- Reference: clientes_tipo_trabajo (table: aspirantes)
ALTER TABLE aspirantes ADD CONSTRAINT fk_id_tipo_trabajo FOREIGN KEY  (id_tipo_trabajo)
    REFERENCES tipo_trabajo (id_tipo_trabajo);

-- Reference: cvs_tipo_trabajo (table: cvs)
ALTER TABLE cvs ADD CONSTRAINT fk2_id_tipo_trabajo FOREIGN KEY (id_tipo_trabajo)
    REFERENCES tipo_trabajo (id_tipo_trabajo);

-- Reference: empresas_sectores (table: empresas)
ALTER TABLE empresas ADD CONSTRAINT sectores_id_sector FOREIGN KEY (sectores_id_sector)
    REFERENCES Sectores (id_sector);

-- Reference: estado_ofertas_empleo_estados (table: estado_ofertas_empleo)
ALTER TABLE estado_ofertas_empleo ADD CONSTRAINT id_estado FOREIGN KEY (id_estado)
    REFERENCES estados (id_estado);

-- Reference: estado_ofertas_empleo_ofertas_empleo (table: estado_ofertas_empleo)
ALTER TABLE Estado_ofertas_empleo ADD CONSTRAINT id_oferta FOREIGN KEY (id_oferta)
    REFERENCES Ofertas_empleo (id_oferta);

-- Reference: habilidades_cvs_cvs (table: habilidades_cvs)
ALTER TABLE habilidades_cvs ADD CONSTRAINT fk_id_cv FOREIGN KEY (id_cv)
    REFERENCES cvs (id_cv);

-- Reference: habilidades_cvs_habilidades (table: habilidades_cvs)
ALTER TABLE habilidades_cvs ADD CONSTRAINT id_habilidad FOREIGN KEY (id_habilidad)
    REFERENCES habilidades (id_habilidad);

-- Reference: idiomas_cvs_cvs (table: idiomas_cvs)
ALTER TABLE idiomas_cvs ADD CONSTRAINT id_cv FOREIGN KEY (id_cv)
    REFERENCES cvs (id_cv);

-- Reference: idiomas_cvs_idiomas (table: idiomas_cvs)
ALTER TABLE idiomas_cvs ADD CONSTRAINT id_idioma FOREIGN KEY (id_idioma)
    REFERENCES idiomas (id_idioma);

-- Reference: reclutadores_empresas (table: reclutadores)
ALTER TABLE reclutadores ADD CONSTRAINT id_empresa FOREIGN KEY  (id_empresa)
    REFERENCES empresas (id_empresa);