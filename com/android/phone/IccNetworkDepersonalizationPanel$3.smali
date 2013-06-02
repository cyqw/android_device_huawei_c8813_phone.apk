.class Lcom/android/phone/IccNetworkDepersonalizationPanel$3;
.super Ljava/lang/Object;
.source "IccNetworkDepersonalizationPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IccNetworkDepersonalizationPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;


# direct methods
.method constructor <init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V
    .registers 2
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$3;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .parameter "v"

    .prologue
    const/16 v6, 0x64

    .line 216
    iget-object v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$3;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    #getter for: Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$000(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, pin:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 236
    :goto_16
    return-void

    .line 225
    :cond_17
    :try_start_17
    iget-object v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$3;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    #getter for: Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$400(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$3;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    #getter for: Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPersoSubtype:I
    invoke-static {v3}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$500(Lcom/android/phone/IccNetworkDepersonalizationPanel;)I

    move-result v3

    iget-object v4, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$3;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    #getter for: Lcom/android/phone/IccNetworkDepersonalizationPanel;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$600(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x64

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    invoke-static {v2, v1, v3, v4}, Lcom/huawei/internal/telephony/IccCardEx;->supplyNetworkDepersonalization(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;ILandroid/os/Message;)V

    .line 227
    iget-object v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$3;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    const/4 v3, 0x1

    #calls: Lcom/android/phone/IccNetworkDepersonalizationPanel;->displayStatus(I)V
    invoke-static {v2, v3}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$700(Lcom/android/phone/IccNetworkDepersonalizationPanel;I)V
    :try_end_3c
    .catch Lcom/huawei/android/util/NoExtAPIException; {:try_start_17 .. :try_end_3c} :catch_3d

    goto :goto_16

    .line 228
    :catch_3d
    move-exception v0

    .line 229
    .local v0, e:Lcom/huawei/android/util/NoExtAPIException;
    iget-object v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$3;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    const-string v3, "onClick->NoExtAPIException!"

    #calls: Lcom/android/phone/IccNetworkDepersonalizationPanel;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$800(Lcom/android/phone/IccNetworkDepersonalizationPanel;Ljava/lang/String;)V

    .line 230
    iget-object v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$3;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    #getter for: Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$400(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$3;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    #getter for: Lcom/android/phone/IccNetworkDepersonalizationPanel;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$600(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/huawei/internal/telephony/IccCardEx;->supplyNetworkDepersonalization(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;Landroid/os/Message;)V

    .line 232
    iget-object v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$3;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    #calls: Lcom/android/phone/IccNetworkDepersonalizationPanel;->indicateBusy()V
    invoke-static {v2}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$900(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    goto :goto_16
.end method
