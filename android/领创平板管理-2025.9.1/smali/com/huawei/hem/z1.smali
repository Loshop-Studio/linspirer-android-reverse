.class public final synthetic Lcom/huawei/hem/z1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/activity/DeviceRotatingActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/activity/DeviceRotatingActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/hem/z1;->a:Lcom/android/launcher3/activity/DeviceRotatingActivity;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    iget-object v0, p0, Lcom/huawei/hem/z1;->a:Lcom/android/launcher3/activity/DeviceRotatingActivity;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/activity/DeviceRotatingActivity;->a(Landroid/widget/RadioGroup;I)V

    return-void
.end method
