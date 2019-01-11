package ${packageName};

import android.os.Bundle;
import android.view.View;

import com.datayes.iia.module_common.base.BaseFragment;
import com.datayes.iia.module_common.view.EThemeColor;
<#if applicationPackage??>
import ${applicationPackage}.R;
</#if>

/**
 * ${ActivityDes}
 * @author
 */
public class ${activityClass} extends BaseFragment {

    /**
     * ListPresenter
     */
    private Presenter mPresenter;    

    public static ${activityClass} newInstance() {

        Bundle args = new Bundle();

        ${activityClass} fragment = new ${activityClass}();
        fragment.setArguments(args);
        return fragment;
    }

    @Override
    protected void onViewCreated(View view) {

        if (getContext() != null) {

            RvWrapper rvWrapper = new RvWrapper(getContext(), view, ${themeName});
            mPresenter = new Presenter(getContext(), rvWrapper, bindToLifecycle());
            rvWrapper.setPresenter(mPresenter);

            mPresenter.start();
        }
    }

    @Override
    protected int getContentLayoutRes() {
        return R.layout.${layoutName};
    }

    @Override
    public void onDestroy() {

        if (mPresenter != null) {

            mPresenter.onDestroy();
        }

        super.onDestroy();
    }

    // TODO 其他代码在这里添加

}
