package ${packageName};

import android.os.Bundle;
<#if includeCppSupport!false>
import android.widget.TextView;
</#if>
import com.datayes.iia.module_common.base.BaseTitleActivity;
<#if applicationPackage??>
import ${applicationPackage}.R;
</#if>

/**
 * ${ActivityDes}
 * @author
 */
public class ${activityClass} extends BaseTitleActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        
<#if HasTitle>
        // 设置标题
        setTitleStr(getString(R.string.${ModuleName}_${activityName?lower_case}_activity_title));
</#if>
        
<#include "../../../../common/jni_code_usage.java.ftl">
    }
<#include "../../../../common/jni_code_snippet.java.ftl">

<#if generateLayout>
	@Override
    protected int getContentLayoutRes() {
        return R.layout.${layoutName};
    }
</#if>

    

}
