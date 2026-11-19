package com.huawei.hms.common.internal;

import com.huawei.hem.HmsTaskRegistry;

/* loaded from: classes.dex */
public class TaskApiCallWrapper<TResult> extends BaseContentWrapper {
    public final TaskApiCall<? extends AnyClient, TResult> mTaskApiCall;
    public final HmsTaskRegistry<TResult> mTaskCompletionSource;

    public TaskApiCallWrapper(TaskApiCall<? extends AnyClient, TResult> taskApiCall, HmsTaskRegistry<TResult> c1401x7) {
        super(1);
        this.mTaskApiCall = taskApiCall;
        this.mTaskCompletionSource = c1401x7;
    }

    public TaskApiCall<? extends AnyClient, TResult> getTaskApiCall() {
        return this.mTaskApiCall;
    }

    public HmsTaskRegistry<TResult> getTaskCompletionSource() {
        return this.mTaskCompletionSource;
    }
}
