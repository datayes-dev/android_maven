<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="wrap_content"
    android:layout_marginLeft="@dimen/border_margin"
    android:layout_marginRight="@dimen/border_margin"
    android:orientation="vertical">

    <TextView
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:layout_marginTop="10dp"
        android:tag="@string/holder_string_first"
        android:text="@string/no_data"
        android:textSize="@dimen/t7"
        android:textStyle="bold" />

    <TextView
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:layout_marginBottom="10dp"
        android:tag="@string/holder_string_second"
        android:text="@string/no_data" />

    <View
        android:layout_width="match_parent"
        android:layout_height="1px"
        android:background="@color/color_H3" />

</LinearLayout>