#' 上传生产计划排程表
#'
#' @param dms_token 第二个参数
#'
#' @return 两个数的和
#' @export
#'
#' @examples
#' PPSChart_upload
PPSChart_upload <- function(dms_token) {

  sql = paste0("
exec rds_src_proc_PPSChart_upload

               ")
  res = tsda::sql_update2(token =dms_token ,sql_str  = sql)
  return(res)

}


#' 查看生产计划排程表
#'
#' @param dms_token 第二个参数
#' @param FBillNo
#'
#' @return 两个数的和
#' @export
#'
#' @examples
#' PPSChart_view
PPSChart_view <- function(dms_token,FBillNo) {

  sql = paste0("
exec rds_src_proc_PPSChart_view '",FBillNo,"'

               ")
  res = tsda::sql_select2(token =dms_token ,sql = sql)
  return(res)

}
