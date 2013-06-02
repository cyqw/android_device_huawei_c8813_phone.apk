.class Lcom/android/phone/InCallTouchUi$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "InCallTouchUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallTouchUi;->hideIncomingCallWidget(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallTouchUi;

.field final synthetic val$whichHandlerFinal:I


# direct methods
.method constructor <init>(Lcom/android/phone/InCallTouchUi;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1420
    iput-object p1, p0, Lcom/android/phone/InCallTouchUi$3;->this$0:Lcom/android/phone/InCallTouchUi;

    iput p2, p0, Lcom/android/phone/InCallTouchUi$3;->val$whichHandlerFinal:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 5
    .parameter "animation"

    .prologue
    const/4 v2, 0x0

    .line 1444
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi$3;->this$0:Lcom/android/phone/InCallTouchUi;

    #getter for: Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/multiwaveview/GlowPadView;
    invoke-static {v0}, Lcom/android/phone/InCallTouchUi;->access$500(Lcom/android/phone/InCallTouchUi;)Lcom/android/phone/multiwaveview/GlowPadView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/multiwaveview/GlowPadView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 1445
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi$3;->this$0:Lcom/android/phone/InCallTouchUi;

    #setter for: Lcom/android/phone/InCallTouchUi;->mShowInCallControlsDuringHidingAnimation:Z
    invoke-static {v0, v2}, Lcom/android/phone/InCallTouchUi;->access$102(Lcom/android/phone/InCallTouchUi;Z)Z

    .line 1446
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi$3;->this$0:Lcom/android/phone/InCallTouchUi;

    #setter for: Lcom/android/phone/InCallTouchUi;->mIncomingCallWidgetIsFadingOut:Z
    invoke-static {v0, v2}, Lcom/android/phone/InCallTouchUi;->access$002(Lcom/android/phone/InCallTouchUi;Z)Z

    .line 1447
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi$3;->this$0:Lcom/android/phone/InCallTouchUi;

    const/4 v1, 0x1

    #setter for: Lcom/android/phone/InCallTouchUi;->mIncomingCallWidgetShouldBeReset:Z
    invoke-static {v0, v1}, Lcom/android/phone/InCallTouchUi;->access$602(Lcom/android/phone/InCallTouchUi;Z)Z

    .line 1449
    iget v0, p0, Lcom/android/phone/InCallTouchUi$3;->val$whichHandlerFinal:I

    if-nez v0, :cond_35

    .line 1450
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi$3;->this$0:Lcom/android/phone/InCallTouchUi;

    #getter for: Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;
    invoke-static {v0}, Lcom/android/phone/InCallTouchUi;->access$400(Lcom/android/phone/InCallTouchUi;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1451
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi$3;->this$0:Lcom/android/phone/InCallTouchUi;

    iget-object v0, v0, Lcom/android/phone/InCallTouchUi;->mExtraButtonRow:Landroid/view/ViewStub;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1457
    :cond_35
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5
    .parameter "animation"

    .prologue
    const/4 v2, 0x0

    .line 1435
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi$3;->this$0:Lcom/android/phone/InCallTouchUi;

    #getter for: Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/multiwaveview/GlowPadView;
    invoke-static {v0}, Lcom/android/phone/InCallTouchUi;->access$500(Lcom/android/phone/InCallTouchUi;)Lcom/android/phone/multiwaveview/GlowPadView;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/android/phone/multiwaveview/GlowPadView;->setAlpha(F)V

    .line 1436
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi$3;->this$0:Lcom/android/phone/InCallTouchUi;

    #getter for: Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/multiwaveview/GlowPadView;
    invoke-static {v0}, Lcom/android/phone/InCallTouchUi;->access$500(Lcom/android/phone/InCallTouchUi;)Lcom/android/phone/multiwaveview/GlowPadView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/phone/multiwaveview/GlowPadView;->setVisibility(I)V

    .line 1437
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi$3;->this$0:Lcom/android/phone/InCallTouchUi;

    #getter for: Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/multiwaveview/GlowPadView;
    invoke-static {v0}, Lcom/android/phone/InCallTouchUi;->access$500(Lcom/android/phone/InCallTouchUi;)Lcom/android/phone/multiwaveview/GlowPadView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/multiwaveview/GlowPadView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 1438
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi$3;->this$0:Lcom/android/phone/InCallTouchUi;

    #setter for: Lcom/android/phone/InCallTouchUi;->mShowInCallControlsDuringHidingAnimation:Z
    invoke-static {v0, v2}, Lcom/android/phone/InCallTouchUi;->access$102(Lcom/android/phone/InCallTouchUi;Z)Z

    .line 1439
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi$3;->this$0:Lcom/android/phone/InCallTouchUi;

    #setter for: Lcom/android/phone/InCallTouchUi;->mIncomingCallWidgetIsFadingOut:Z
    invoke-static {v0, v2}, Lcom/android/phone/InCallTouchUi;->access$002(Lcom/android/phone/InCallTouchUi;Z)Z

    .line 1440
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi$3;->this$0:Lcom/android/phone/InCallTouchUi;

    const/4 v1, 0x1

    #setter for: Lcom/android/phone/InCallTouchUi;->mIncomingCallWidgetShouldBeReset:Z
    invoke-static {v0, v1}, Lcom/android/phone/InCallTouchUi;->access$602(Lcom/android/phone/InCallTouchUi;Z)Z

    .line 1441
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 1424
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi$3;->this$0:Lcom/android/phone/InCallTouchUi;

    const/4 v1, 0x1

    #setter for: Lcom/android/phone/InCallTouchUi;->mIncomingCallWidgetIsFadingOut:Z
    invoke-static {v0, v1}, Lcom/android/phone/InCallTouchUi;->access$002(Lcom/android/phone/InCallTouchUi;Z)Z

    .line 1427
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi$3;->this$0:Lcom/android/phone/InCallTouchUi;

    #getter for: Lcom/android/phone/InCallTouchUi;->mShowInCallControlsDuringHidingAnimation:Z
    invoke-static {v0}, Lcom/android/phone/InCallTouchUi;->access$100(Lcom/android/phone/InCallTouchUi;)Z

    move-result v0

    if-nez v0, :cond_12

    iget v0, p0, Lcom/android/phone/InCallTouchUi$3;->val$whichHandlerFinal:I

    if-nez v0, :cond_29

    .line 1429
    :cond_12
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi$3;->this$0:Lcom/android/phone/InCallTouchUi;

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi$3;->this$0:Lcom/android/phone/InCallTouchUi;

    #getter for: Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v1}, Lcom/android/phone/InCallTouchUi;->access$200(Lcom/android/phone/InCallTouchUi;)Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    #calls: Lcom/android/phone/InCallTouchUi;->updateInCallControls(Lcom/android/internal/telephony/CallManager;)V
    invoke-static {v0, v1}, Lcom/android/phone/InCallTouchUi;->access$300(Lcom/android/phone/InCallTouchUi;Lcom/android/internal/telephony/CallManager;)V

    .line 1430
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi$3;->this$0:Lcom/android/phone/InCallTouchUi;

    #getter for: Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;
    invoke-static {v0}, Lcom/android/phone/InCallTouchUi;->access$400(Lcom/android/phone/InCallTouchUi;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1432
    :cond_29
    return-void
.end method
