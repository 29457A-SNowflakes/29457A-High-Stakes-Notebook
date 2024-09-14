#let pageNumEntries(ref: label) = {
  let deduction = 18
  let pageNum = query(ref).at(0).location().page()-deduction
  return pageNum;
}