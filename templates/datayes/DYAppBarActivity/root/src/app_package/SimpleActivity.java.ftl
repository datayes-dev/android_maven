package ${packageName};

<#if linearLayoutMode>
import android.graphics.Color;
import android.os.Bundle;
import android.support.design.widget.AppBarLayout;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

import com.datayes.common_utils.view.statusbar.StatusBarUtils;
import com.datayes.iia.module_common.base.BaseActivity;
import com.datayes.iia.module_common.base.wrapper.LifeContainerWrapper;
import com.datayes.iia.module_common.utils.RxJavaUtils;
import com.datayes.iia.module_common.utils.StatusBarStyleUtils;
</#if>   
<#if tabMode>
import android.content.Context;
import android.graphics.Color;
import android.os.Bundle;
import android.support.design.widget.AppBarLayout;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

import com.datayes.common_utils.view.statusbar.StatusBarUtils;
import com.datayes.iia.module_common.base.BaseActivity;
import com.datayes.iia.module_common.base.BaseTabWrapper;
import com.datayes.iia.module_common.utils.RxJavaUtils;
import com.datayes.iia.module_common.utils.StatusBarStyleUtils;

import java.util.ArrayList;
import java.util.List;
</#if>   
<#if applicationPackage??>
import ${applicationPackage}.R;
</#if>

/**
 * ${ActivityDes}
 * @author
 */
public class ${activityClass} extends BaseActivity {

<#if linearLayoutMode>
    /**
     * LinearLayout 生命周期管理
     */
    private LifeContainerWrapper mLifeWrapper;
</#if>    
<#if tabMode>
    /**
     * TabWrapper
     */
    private TabWrapper mTabWrapper;
</#if>      

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        initAppBarLayout();
        init();
<#include "../../../../common/jni_code_usage.java.ftl">
    }
<#include "../../../../common/jni_code_snippet.java.ftl">

<#if generateLayout>
	@Override
    protected int getContentLayoutRes() {
        return R.layout.${layoutName};
    }
</#if>

    protected void init() {

<#if linearLayoutMode>
        mLifeWrapper = new LifeContainerWrapper(getRootView());
</#if>
<#if tabMode>
        mTabWrapper = new TabWrapper(this, getSupportFragmentManager(), getRootView());
</#if> 
    }

<#if linearLayoutMode>
    @Override
    protected void onResume() {
        super.onResume();

        if (mLifeWrapper != null) {

            mLifeWrapper.visible();
        }       
    }
</#if>     

<#if linearLayoutMode>
    @Override
    protected void onPause() {
        super.onPause();

        if (mLifeWrapper != null) {

            mLifeWrapper.inVisible();
        }       
    }
</#if>      

    /**
     * 沉浸式处理
     */
    protected void initAppBarLayout() {
        // 状态栏隐藏
        StatusBarUtils.translucentStatusBar(this, true);

        AppBarLayout barLayout = findViewById(R.id.app_bar);
        View maskView = findViewById(R.id.view_convert);
        View lineView = findViewById(R.id.view_divider);
        ImageView backBtn = findViewById(R.id.iv_back);
        TextView tvTitle = findViewById(R.id.tv_title);

        barLayout.addOnOffsetChangedListener((appBarLayout, verticalOffset) -> {
            float alpha = 1.0f * Math.abs(verticalOffset) / appBarLayout.getTotalScrollRange();
            int color = Color.argb((int) (255 * alpha), 0xFF, 0xFF, 0xFF);

            maskView.setBackgroundColor(color);

            if (alpha > 0.85f) {
                tvTitle.setVisibility(View.VISIBLE);
                backBtn.setImageResource(R.drawable.ic_arrow_left_black);
                StatusBarStyleUtils.setStatusBarStyleToLight(this);
                lineView.setVisibility(View.VISIBLE);
            } else {
                tvTitle.setVisibility(View.GONE);
                backBtn.setImageResource(R.drawable.common_ic_left_arrow);
                StatusBarStyleUtils.setStatusBarStyleToDark(this);
                lineView.setVisibility(View.GONE);
            }
        });

        RxJavaUtils.viewClick(backBtn, v -> finish());
    }

<#if tabMode>
    /**
     * TabWrapper
     */
    static class TabWrapper extends BaseTabWrapper {

        TabWrapper(Context context, FragmentManager fragmentManager, View rootView) {
            super(context, fragmentManager, rootView);
        }

        @Override
        protected List<String> getTitleList() {

            // TODO 默认tab
            List<String> list = new ArrayList<>();
            list.add("1");
            list.add("2");
            list.add("3");
            return list;
        }

        @Override
        protected Fragment getFragment(int position) {
            // TODO Fragment
            return null;
        }
    }
</#if>    

}
