@AbapCatalog.sqlViewName: 'ZAEB_V_CDS_ART'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS articule'
@Metadata.allowExtensions : true
//@Metadata.ignorePropagatedAnnotations: true

define view zaeb_cds_articule
  as select from zaeb_tab_article
{
    key id_art as IdArt,
    descr as Descr,
    desc2 as Desc2,
    color as Color,
    piezas as Piezas,
    stock as Stock,
    url as Url,
    //0 neutral
    //1 negative
    //2 critical
    //3 positive
    case
    when stock = 0 then 0
    when stock between 1 and 10 then 1
    when stock between 11 and 99 then 2
    when stock >= 100 then 1
    else 0
    end as status
    
  }
