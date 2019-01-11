<?xml version="1.0" encoding="utf-8"?>
<android.support.design.widget.CoordinatorLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    xmlns:tools="http://schemas.android.com/tools"
    android:layout_width="match_parent"
    android:layout_height="match_parent">

    <android.support.design.widget.AppBarLayout
        android:id="@+id/app_bar"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:fadingEdge="none"
        app:elevation="0dp">

        <android.support.design.widget.CollapsingToolbarLayout
            android:layout_width="match_parent"
            android:layout_height="wrap_content"
            android:fitsSystemWindows="true"
            app:contentScrim="@color/transparent"
            app:layout_scrollFlags="scroll|exitUntilCollapsed">

            <FrameLayout
                android:layout_width="match_parent"
                android:layout_height="160dp">

                <TextView
                    android:layout_width="match_parent"
                    android:layout_height="match_parent"
                    android:background="@color/color_R1"
                    android:gravity="center"
                    android:text="替换成想要的"
                    android:textColor="@color/color_W1" />

                <View
                    android:id="@+id/view_convert"
                    android:layout_width="match_parent"
                    android:layout_height="match_parent"
                    android:background="@color/transparent" />

            </FrameLayout>

            <android.support.v7.widget.Toolbar
                android:layout_width="match_parent"
                android:layout_height="?attr/actionBarSize"
                android:layout_marginTop="20dp"
                app:contentInsetLeft="0dp"
                app:contentInsetStart="0dp"
                app:layout_collapseMode="pin">

                <RelativeLayout
                    android:layout_width="match_parent"
                    android:layout_height="match_parent">

                    <ImageView
                        android:id="@+id/iv_back"
                        android:layout_width="wrap_content"
                        android:layout_height="match_parent"
                        android:paddingLeft="15dp"
                        android:paddingRight="15dp"
                        android:src="@drawable/common_ic_left_arrow"
                        tools:ignore="ContentDescription" />

                    <TextView
                        android:id="@+id/tv_title"
                        android:layout_width="wrap_content"
                        android:layout_height="wrap_content"
                        android:layout_centerInParent="true"
                        android:text="标题"
                        android:textColor="@color/color_H9"
                        android:textSize="@dimen/t6"
                        android:visibility="gone" />

                </RelativeLayout>

            </android.support.v7.widget.Toolbar>

        </android.support.design.widget.CollapsingToolbarLayout>

    </android.support.design.widget.AppBarLayout>

<#if linearLayoutMode>
    <com.datayes.iia.module_common.view.scrollview.ListenerScrollView
        android:id="@+id/common_scrollview"
        android:layout_width="match_parent"
        android:layout_height="match_parent"
        android:overScrollMode="never"
        app:layout_behavior="@string/appbar_scrolling_view_behavior">

        <LinearLayout
            android:id="@+id/common_ll_container"
            android:layout_width="match_parent"
            android:layout_height="wrap_content"
            android:orientation="vertical">

            <View
                android:id="@+id/view_divider"
                android:layout_width="match_parent"
                android:layout_height="1px"
                android:background="@color/color_H2"
                android:visibility="gone" />

            <TextView
                android:layout_width="match_parent"
                android:layout_height="300dp"
                android:background="@color/color_G1"
                android:gravity="center"
                android:text="1"
                android:textColor="@color/color_W1" />

            <TextView
                android:layout_width="match_parent"
                android:layout_height="300dp"
                android:background="@color/color_B1"
                android:gravity="center"
                android:text="2"
                android:textColor="@color/color_W1" />

            <TextView
                android:layout_width="match_parent"
                android:layout_height="300dp"
                android:background="@color/color_Y3"
                android:gravity="center"
                android:text="3"
                android:textColor="@color/color_W1" />

            <TextView
                android:layout_width="match_parent"
                android:layout_height="300dp"
                android:background="@color/color_R1"
                android:gravity="center"
                android:text="4"
                android:textColor="@color/color_W1" />

        </LinearLayout>

    </com.datayes.iia.module_common.view.scrollview.ListenerScrollView>
</#if>       
<#if tabMode>
    <LinearLayout
        android:layout_width="match_parent"
        android:layout_height="match_parent"
        android:orientation="vertical"
        app:layout_behavior="@string/appbar_scrolling_view_behavior">

        <com.datayes.common_view.widget.DYTabLayout
            android:id="@+id/modulecommon_tablayout"
            android:layout_width="match_parent"
            android:layout_height="42dp"
            android:paddingBottom="2dp" />

        <View
            android:id="@+id/view_divider"
            android:layout_width="match_parent"
            android:layout_height="1px"
            android:background="@color/color_H2"
            android:visibility="gone" />

        <android.support.v4.view.ViewPager
            android:id="@+id/modulecommon_tab_viewpage"
            android:layout_width="match_parent"
            android:layout_height="match_parent"
            android:overScrollMode="never" />

    </LinearLayout>
</#if>       

</android.support.design.widget.CoordinatorLayout>