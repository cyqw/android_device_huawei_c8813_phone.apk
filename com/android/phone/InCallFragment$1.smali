.class Lcom/android/phone/InCallFragment$1;
.super Ljava/lang/Object;
.source "InCallFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallFragment;->initInCallFragment(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallFragment;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 915
    iput-object p1, p0, Lcom/android/phone/InCallFragment$1;->this$0:Lcom/android/phone/InCallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    .line 919
    iget-object v5, p0, Lcom/android/phone/InCallFragment$1;->this$0:Lcom/android/phone/InCallFragment;

    #getter for: Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v5}, Lcom/android/phone/InCallFragment;->access$100(Lcom/android/phone/InCallFragment;)Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v0

    .line 921
    .local v0, activeSub:I
    if-nez v0, :cond_5c

    move v1, v4

    .line 927
    .local v1, altActiveSub:I
    :goto_e
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->setAudioMode(I)V

    .line 929
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/android/phone/PhoneUtils;->switchCallModes(Lcom/android/internal/telephony/Phone;Z)V

    .line 932
    iget-object v4, p0, Lcom/android/phone/InCallFragment$1;->this$0:Lcom/android/phone/InCallFragment;

    #calls: Lcom/android/phone/InCallFragment;->updateActiveCallButtonState()V
    invoke-static {v4}, Lcom/android/phone/InCallFragment;->access$200(Lcom/android/phone/InCallFragment;)V

    .line 935
    iget-object v4, p0, Lcom/android/phone/InCallFragment$1;->this$0:Lcom/android/phone/InCallFragment;

    #getter for: Lcom/android/phone/InCallFragment;->mSubscription:I
    invoke-static {v4}, Lcom/android/phone/InCallFragment;->access$300(Lcom/android/phone/InCallFragment;)I

    move-result v4

    if-eq v1, v4, :cond_52

    .line 936
    iget-object v4, p0, Lcom/android/phone/InCallFragment$1;->this$0:Lcom/android/phone/InCallFragment;

    #getter for: Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;
    invoke-static {v4}, Lcom/android/phone/InCallFragment;->access$400(Lcom/android/phone/InCallFragment;)Lcom/android/phone/InCallScreen_DSDA;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/phone/InCallScreen_DSDA;->getFragmentForSubscription(I)Lcom/android/phone/InCallFragment;

    move-result-object v2

    .line 937
    .local v2, fragment:Lcom/android/phone/InCallFragment;
    if-eqz v2, :cond_52

    .line 938
    iget-object v4, p0, Lcom/android/phone/InCallFragment$1;->this$0:Lcom/android/phone/InCallFragment;

    #getter for: Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;
    invoke-static {v4}, Lcom/android/phone/InCallFragment;->access$400(Lcom/android/phone/InCallFragment;)Lcom/android/phone/InCallScreen_DSDA;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/phone/InCallFragment;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/phone/InCallScreen_DSDA;->getMatchingTabToaFragment(Ljava/lang/String;)Landroid/app/ActionBar$Tab;

    move-result-object v3

    .line 939
    .local v3, tab:Landroid/app/ActionBar$Tab;
    if-eqz v3, :cond_52

    .line 941
    iget-object v4, p0, Lcom/android/phone/InCallFragment$1;->this$0:Lcom/android/phone/InCallFragment;

    #getter for: Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;
    invoke-static {v4}, Lcom/android/phone/InCallFragment;->access$400(Lcom/android/phone/InCallFragment;)Lcom/android/phone/InCallScreen_DSDA;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/InCallScreen_DSDA;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 948
    .end local v2           #fragment:Lcom/android/phone/InCallFragment;
    .end local v3           #tab:Landroid/app/ActionBar$Tab;
    :cond_52
    iget-object v4, p0, Lcom/android/phone/InCallFragment$1;->this$0:Lcom/android/phone/InCallFragment;

    #getter for: Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;
    invoke-static {v4}, Lcom/android/phone/InCallFragment;->access$400(Lcom/android/phone/InCallFragment;)Lcom/android/phone/InCallScreen_DSDA;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/InCallScreen_DSDA;->refreshTabs()V

    .line 950
    return-void

    .line 921
    .end local v1           #altActiveSub:I
    :cond_5c
    const/4 v1, 0x0

    goto :goto_e
.end method
