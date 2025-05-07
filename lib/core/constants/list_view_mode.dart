enum ListViewMode {
  normal,
  mini;

  ListViewMode change() => switch (this) {
    normal => mini,
    mini => normal,
  };
}
