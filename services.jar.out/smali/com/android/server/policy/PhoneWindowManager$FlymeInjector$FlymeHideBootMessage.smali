.class final Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeHideBootMessage;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager$FlymeInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeHideBootMessage"
.end annotation


# instance fields
.field private mPwm:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0
    .param p1, "pwm"    # Lcom/android/server/policy/PhoneWindowManager;

    .prologue
    .line 8565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8566
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeHideBootMessage;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    .line 8565
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 8571
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeHideBootMessage;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 8572
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeHideBootMessage;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mFlymeBootLayout:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 8573
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeHideBootMessage;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mFlymeBootLayout:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 8574
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeHideBootMessage;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iput-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mFlymeBootLayout:Landroid/view/View;

    .line 8576
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeHideBootMessage;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iput-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mFlymeBootMsgBar:Landroid/widget/ProgressBar;

    .line 8577
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeHideBootMessage;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iput-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mFlymeBootMsgTitle:Landroid/widget/TextView;

    .line 8578
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeHideBootMessage;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iput-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mFlymeBootMsgText:Landroid/widget/TextView;

    .line 8570
    return-void
.end method
