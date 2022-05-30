# a function to check consecutiveness

isConsecutive <- function(vec) {
  
  tmp <- as.integer(vec)
  tmpLen <- length(tmp)
  tmpMin <- min(tmp)
  tmpMax <- max(tmp)
  
  if (tmpLen < 1) return(FALSE)
  
  if ((tmpMax - tmpMin + 1 == tmpLen) & # 最小至最大的元素個數與矢量元素個數相等
      length(unique(tmp)) == tmpLen) {  # 矢量內各元素不重複 !any(duplicated(tmp))
    return(TRUE)
  } else {
    return(FALSE)
  }
}
