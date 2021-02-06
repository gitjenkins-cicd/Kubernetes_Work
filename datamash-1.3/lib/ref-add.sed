/^# Packages using this file: / {
  s/# Packages using this file://
  ta
  :a
  s/ datamash / datamash /
  tb
  s/ $/ datamash /
  :b
  s/^/# Packages using this file:/
}
