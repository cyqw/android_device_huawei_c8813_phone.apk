.class public Lcom/android/phone/FdnSetting;
.super Landroid/preference/PreferenceActivity;
.source "FdnSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Lcom/android/phone/EditPinPreference$OnPinEnteredListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/FdnSetting$2;
    }
.end annotation


# static fields
.field private static final IS_MULTI_SIM:Z

.field private static mButtonFdnList:Landroid/preference/PreferenceScreen;


# instance fields
.field private mButtonChangePin2:Lcom/android/phone/EditPinPreference;

.field private mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

.field private final mFDNHandler:Landroid/os/Handler;

.field private mGcfTesting:Z

.field private mIsPuk2Locked:Z

.field private mNewPin:Ljava/lang/String;

.field private mOldPin:Ljava/lang/String;

.field private mOldPuk2:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPinChangeState:I

.field private mPuk2:Ljava/lang/String;

.field private mSkipOldPin:Z

.field private mSubscription:I

.field private mSubscriptionPrefFDN:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 127
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/FdnSetting;->IS_MULTI_SIM:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 123
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/FdnSetting;->mSubscription:I

    .line 382
    new-instance v0, Lcom/android/phone/FdnSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/FdnSetting$1;-><init>(Lcom/android/phone/FdnSetting;)V

    iput-object v0, p0, Lcom/android/phone/FdnSetting;->mFDNHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/FdnSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/FdnSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->updateChangeFdn()V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/phone/FdnSetting;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/phone/FdnSetting;->mGcfTesting:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/phone/FdnSetting;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/phone/FdnSetting;->mIsPuk2Locked:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/phone/FdnSetting;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/FdnSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->updateChangePin()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/FdnSetting;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/phone/FdnSetting;->updateButtonState(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/FdnSetting;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/phone/FdnSetting;->displayMessage(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/FdnSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->updateEnableFDN()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/FdnSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeState()V

    return-void
.end method

.method static synthetic access$902(Lcom/android/phone/FdnSetting;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/phone/FdnSetting;->mSkipOldPin:Z

    return p1
.end method

.method private checkPin2StatusAndUpdateFdnScreen()V
    .registers 4

    .prologue
    .line 930
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/internal/telephony/IccCardEx;->getIccPuk2Blocked(Lcom/android/internal/telephony/IccCard;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 931
    const-string v1, "PhoneApp"

    const-string v2, "PUK2 is Blocked.Disabling Enable FDN,Change PIN2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    const v1, 0x7f0e02d0

    invoke-direct {p0, v1}, Lcom/android/phone/FdnSetting;->displayMessage(I)V

    .line 933
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 934
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 946
    :goto_25
    return-void

    .line 935
    :cond_26
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/internal/telephony/IccCardEx;->getIccPin2Blocked(Lcom/android/internal/telephony/IccCard;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 936
    const-string v1, "PhoneApp"

    const-string v2, "PIN2 is Blocked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V
    :try_end_3c
    .catch Lcom/huawei/android/util/NoExtAPIException; {:try_start_0 .. :try_end_3c} :catch_3d

    goto :goto_25

    .line 942
    :catch_3d
    move-exception v0

    .line 944
    .local v0, e:Lcom/huawei/android/util/NoExtAPIException;
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeState()V

    goto :goto_25

    .line 939
    .end local v0           #e:Lcom/huawei/android/util/NoExtAPIException;
    :cond_42
    :try_start_42
    const-string v1, "PhoneApp"

    const-string v2, "PUK2/PIN2 is not Blocked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeState()V
    :try_end_4c
    .catch Lcom/huawei/android/util/NoExtAPIException; {:try_start_42 .. :try_end_4c} :catch_3d

    goto :goto_25
.end method

.method private final displayMessage(I)V
    .registers 6
    .parameter "strId"

    .prologue
    .line 564
    invoke-virtual {p0, p1}, Lcom/android/phone/FdnSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 567
    .local v1, msg:Ljava/lang/String;
    const v2, 0x7f0e015a

    if-eq p1, v2, :cond_13

    const v2, 0x7f0e0159

    if-eq p1, v2, :cond_13

    const v2, 0x7f0e013d

    if-ne p1, v2, :cond_3f

    .line 568
    :cond_13
    :try_start_13
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/internal/telephony/IccCardEx;->getIccPin2RetryCount(Lcom/android/internal/telephony/IccCard;)I

    move-result v0

    .line 569
    .local v0, attemptsRemaining:I
    if-ltz v0, :cond_3f

    .line 570
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/phone/FdnSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0e02d1

    invoke-virtual {p0, v3}, Lcom/android/phone/FdnSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3e
    .catch Lcom/huawei/android/util/NoExtAPIException; {:try_start_13 .. :try_end_3e} :catch_48

    move-result-object v1

    .line 577
    .end local v0           #attemptsRemaining:I
    :cond_3f
    :goto_3f
    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 580
    return-void

    .line 573
    :catch_48
    move-exception v2

    goto :goto_3f
.end method

.method private final displayPinChangeDialog()V
    .registers 3

    .prologue
    .line 586
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(IZ)V

    .line 587
    return-void
.end method

.method private final displayPinChangeDialog(IZ)V
    .registers 15
    .parameter "strId"
    .parameter "shouldDisplay"

    .prologue
    const v11, 0x7f0e02db

    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v10, 0x3

    .line 591
    iget v7, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    packed-switch v7, :pswitch_data_21e

    .line 605
    :pswitch_b
    const v2, 0x7f0e015f

    .line 610
    .local v2, msgId:I
    :goto_e
    const-string v1, ""

    .line 611
    .local v1, charsePUK2RetryNum:Ljava/lang/CharSequence;
    const-string v0, ""

    .line 612
    .local v0, charsePIN2RetryNum:Ljava/lang/CharSequence;
    iget v7, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    if-ne v10, v7, :cond_d4

    .line 615
    const/4 v5, 0x0

    .line 617
    .local v5, strPUK2RetryNum:Ljava/lang/String;
    sget-boolean v7, Lcom/android/phone/FdnSetting;->IS_MULTI_SIM:Z

    if-eqz v7, :cond_a9

    .line 619
    iget v7, p0, Lcom/android/phone/FdnSetting;->mSubscription:I

    if-nez v7, :cond_a1

    .line 621
    const-string v7, "gsm.slot1.num.puk2"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 636
    :goto_25
    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_41

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_41

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b1

    .line 637
    :cond_41
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FdnSetting displayPinChangeDialog 2 params PUK retry num: get PUK2 from SystemProperties:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    .end local v5           #strPUK2RetryNum:Ljava/lang/String;
    :goto_59
    if-eqz p1, :cond_1b6

    .line 678
    iget v7, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    if-ne v10, v7, :cond_158

    .line 679
    iget-object v7, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, p1}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 680
    const-string v7, "GSM"

    const-string v8, "FdnSetting displayPinChangeDialog 2 params PIN_CHANGE_PUK == mPinChangeState"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :goto_8a
    if-eqz p2, :cond_91

    .line 703
    iget-object v7, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v7}, Lcom/android/phone/EditPinPreference;->showPinDialog()V

    .line 705
    :cond_91
    return-void

    .line 593
    .end local v0           #charsePIN2RetryNum:Ljava/lang/CharSequence;
    .end local v1           #charsePUK2RetryNum:Ljava/lang/CharSequence;
    .end local v2           #msgId:I
    :pswitch_92
    const v2, 0x7f0e0156

    .line 594
    .restart local v2       #msgId:I
    goto/16 :goto_e

    .line 597
    .end local v2           #msgId:I
    :pswitch_97
    const v2, 0x7f0e0157

    .line 598
    .restart local v2       #msgId:I
    goto/16 :goto_e

    .line 601
    .end local v2           #msgId:I
    :pswitch_9c
    const v2, 0x7f0e0158

    .line 602
    .restart local v2       #msgId:I
    goto/16 :goto_e

    .line 625
    .restart local v0       #charsePIN2RetryNum:Ljava/lang/CharSequence;
    .restart local v1       #charsePUK2RetryNum:Ljava/lang/CharSequence;
    .restart local v5       #strPUK2RetryNum:Ljava/lang/String;
    :cond_a1
    const-string v7, "gsm.slot2.num.puk2"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_25

    .line 630
    :cond_a9
    const-string v7, "gsm.sim.num.puk2"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_25

    .line 640
    :cond_b1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v11}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "%s"

    invoke-virtual {v8, v9, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 641
    .local v3, strAddForPUK2:Ljava/lang/String;
    move-object v1, v3

    goto :goto_59

    .line 643
    .end local v3           #strAddForPUK2:Ljava/lang/String;
    .end local v5           #strPUK2RetryNum:Ljava/lang/String;
    :cond_d4
    iget v7, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    if-nez v7, :cond_14f

    .line 646
    const/4 v6, 0x0

    .line 648
    .local v6, strPin2RetryNum:Ljava/lang/String;
    sget-boolean v7, Lcom/android/phone/FdnSetting;->IS_MULTI_SIM:Z

    if-eqz v7, :cond_124

    .line 650
    iget v7, p0, Lcom/android/phone/FdnSetting;->mSubscription:I

    if-nez v7, :cond_11d

    .line 652
    const-string v7, "gsm.slot1.num.pin2"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 666
    :goto_e7
    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_103

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_103

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12b

    .line 667
    :cond_103
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FdnSetting displayPinChangeDialog 2 params PIN2 retry num: get PIN2 from SystemProperties:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_59

    .line 656
    :cond_11d
    const-string v7, "gsm.slot2.num.pin2"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_e7

    .line 661
    :cond_124
    const-string v7, "gsm.sim.num.pin2"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_e7

    .line 669
    :cond_12b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v11}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "%s"

    invoke-virtual {v8, v9, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 670
    .local v4, strAddForPin2:Ljava/lang/String;
    move-object v0, v4

    goto/16 :goto_59

    .line 673
    .end local v4           #strAddForPin2:Ljava/lang/String;
    .end local v6           #strPin2RetryNum:Ljava/lang/String;
    :cond_14f
    const-string v7, "GSM"

    const-string v8, "FdnSetting displayPinChangeDialog 2 params not PUK and PIN2 old"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_59

    .line 681
    :cond_158
    iget v7, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    if-nez v7, :cond_189

    .line 682
    iget-object v7, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, p1}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 683
    const-string v7, "GSM"

    const-string v8, "FdnSetting displayPinChangeDialog 2 params PIN_CHANGE_OLD == mPinChangeState"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8a

    .line 685
    :cond_189
    iget-object v7, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, p1}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 686
    const-string v7, "GSM"

    const-string v8, "FdnSetting displayPinChangeDialog 2 params not PUK and PIN2 old"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8a

    .line 689
    :cond_1b6
    iget v7, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    if-ne v10, v7, :cond_1e3

    .line 690
    iget-object v7, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 691
    const-string v7, "GSM"

    const-string v8, "FdnSetting displayPinChangeDialog 2 params PIN_CHANGE_PUK == mPinChangeState"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8a

    .line 692
    :cond_1e3
    iget v7, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    if-nez v7, :cond_210

    .line 693
    iget-object v7, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 694
    const-string v7, "GSM"

    const-string v8, "FdnSetting displayPinChangeDialog 2 params PIN_CHANGE_OLD == mPinChangeState"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8a

    .line 696
    :cond_210
    iget-object v7, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v7, v2}, Lcom/android/phone/EditPinPreference;->setDialogMessage(I)V

    .line 697
    const-string v7, "GSM"

    const-string v8, "FdnSetting displayPinChangeDialog 2 params not PUK and PIN2 old"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8a

    .line 591
    :pswitch_data_21e
    .packed-switch 0x0
        :pswitch_92
        :pswitch_97
        :pswitch_9c
        :pswitch_b
        :pswitch_97
        :pswitch_9c
    .end packed-switch
.end method

.method private final resetPinChangeState()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 711
    iput v1, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 712
    invoke-direct {p0, v1, v1}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(IZ)V

    .line 713
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/FdnSetting;->mOldPin:Ljava/lang/String;

    .line 714
    iput-boolean v1, p0, Lcom/android/phone/FdnSetting;->mIsPuk2Locked:Z

    .line 715
    return-void
.end method

.method private final resetPinChangeStateForPUK2()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 721
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 722
    invoke-direct {p0, v1, v1}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(IZ)V

    .line 723
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/FdnSetting;->mPuk2:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/FdnSetting;->mOldPin:Ljava/lang/String;

    .line 724
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/FdnSetting;->mIsPuk2Locked:Z

    .line 725
    return-void
.end method

.method private toggleFDNEnable(Z)V
    .registers 8
    .parameter "positiveResult"

    .prologue
    const/4 v3, 0x0

    .line 207
    if-nez p1, :cond_7

    .line 209
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->updateChangeFdn()V

    .line 229
    :goto_6
    return-void

    .line 215
    :cond_7
    iget-object v4, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v4}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v2

    .line 216
    .local v2, password:Ljava/lang/String;
    invoke-direct {p0, v2, v3}, Lcom/android/phone/FdnSetting;->validatePin(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 218
    iget-object v4, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v0

    .line 219
    .local v0, isEnabled:Z
    iget-object v4, p0, Lcom/android/phone/FdnSetting;->mFDNHandler:Landroid/os/Handler;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 222
    .local v1, onComplete:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    if-nez v0, :cond_2e

    const/4 v3, 0x1

    :cond_2e
    invoke-interface {v4, v3, v2, v1}, Lcom/android/internal/telephony/IccCard;->setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 228
    .end local v0           #isEnabled:Z
    .end local v1           #onComplete:Landroid/os/Message;
    :goto_31
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    goto :goto_6

    .line 225
    :cond_39
    const v3, 0x7f0e015c

    invoke-direct {p0, v3}, Lcom/android/phone/FdnSetting;->displayMessage(I)V

    goto :goto_31
.end method

.method private updateButtonState(I)V
    .registers 6
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 795
    const/4 v0, 0x3

    iget v1, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    if-eq v0, v1, :cond_15

    .line 796
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v0, v3}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 797
    sget-object v0, Lcom/android/phone/FdnSetting;->mButtonFdnList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 798
    invoke-direct {p0, p1}, Lcom/android/phone/FdnSetting;->displayMessage(I)V

    .line 804
    :goto_14
    return-void

    .line 800
    :cond_15
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 801
    sget-object v0, Lcom/android/phone/FdnSetting;->mButtonFdnList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 802
    invoke-direct {p0, p1}, Lcom/android/phone/FdnSetting;->displayMessage(I)V

    goto :goto_14
.end method

.method private updateChangeFdn()V
    .registers 13

    .prologue
    const v7, 0x7f0e0156

    const v11, 0x7f0e0155

    const/4 v10, 0x0

    const/4 v9, -0x1

    const v8, 0x7f0e02db

    .line 139
    const/4 v3, 0x0

    .line 140
    .local v3, strPIN2RetryNum:Ljava/lang/String;
    const/4 v4, 0x0

    .line 142
    .local v4, strPUK2RetryNum:Ljava/lang/String;
    sget-boolean v5, Lcom/android/phone/FdnSetting;->IS_MULTI_SIM:Z

    if-eqz v5, :cond_61

    .line 144
    iget v5, p0, Lcom/android/phone/FdnSetting;->mSubscription:I

    if-nez v5, :cond_54

    .line 147
    const-string v5, "gsm.slot1.num.pin2"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 148
    const-string v5, "gsm.slot1.num.puk2"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 166
    :goto_21
    const/4 v5, 0x3

    iget v6, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    if-eq v5, v6, :cond_db

    .line 167
    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_42

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_42

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 168
    :cond_42
    iget-object v5, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v5, v7}, Lcom/android/phone/EditPinPreference;->setDialogMessage(I)V

    .line 169
    iget-object v5, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v5, v11}, Lcom/android/phone/EditPinPreference;->setDialogMessage(I)V

    .line 170
    const-string v5, "GSM"

    const-string v6, "FdnSetting updateChangeFdn()Pin2 retry num:do not show"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :goto_53
    return-void

    .line 153
    :cond_54
    const-string v5, "gsm.slot2.num.pin2"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 154
    const-string v5, "gsm.slot2.num.puk2"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_21

    .line 160
    :cond_61
    const-string v5, "gsm.sim.num.pin2"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 161
    const-string v5, "gsm.sim.num.puk2"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_21

    .line 172
    :cond_6e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v8}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "%s"

    invoke-virtual {v6, v7, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, CstrPIN2:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v11}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v8}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "%s"

    invoke-virtual {v6, v7, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, EstrPIN2:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v5, v0}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v5, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v5, v1}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 176
    const-string v5, "GSM"

    const-string v6, "FdnSetting updateChangeFdn()Pin2 retry num:show"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_53

    .line 179
    .end local v0           #CstrPIN2:Ljava/lang/String;
    .end local v1           #EstrPIN2:Ljava/lang/String;
    :cond_db
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FdnSetting updateChangeFdn()PUK2 retry num:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10f

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10f

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_120

    .line 181
    :cond_10f
    iget-object v5, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const v6, 0x7f0e015f

    invoke-virtual {v5, v6}, Lcom/android/phone/EditPinPreference;->setDialogMessage(I)V

    .line 182
    const-string v5, "GSM"

    const-string v6, "FdnSetting updateChangeFdn()PUK2 retry num:do not show"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_53

    .line 184
    :cond_120
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f0e015f

    invoke-virtual {p0, v6}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v8}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "%s"

    invoke-virtual {v6, v7, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, strPIN2:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v5, v2}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 186
    const-string v5, "GSM"

    const-string v6, "FdnSetting updateChangeFdn()PUK2 retry num:show"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_53
.end method

.method private updateChangePin()V
    .registers 5

    .prologue
    const v3, 0x7f0e02de

    const v2, 0x7f0e011f

    .line 783
    const/4 v0, 0x3

    iget v1, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    if-eq v0, v1, :cond_1e

    .line 784
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/EditPinPreference;->setDialogTitle(I)V

    .line 785
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/EditPinPreference;->setTitle(I)V

    .line 786
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const v1, 0x7f0e0123

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPinPreference;->setSummary(I)V

    .line 792
    :goto_1d
    return-void

    .line 788
    :cond_1e
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v0, v3}, Lcom/android/phone/EditPinPreference;->setDialogTitle(I)V

    .line 789
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v0, v3}, Lcom/android/phone/EditPinPreference;->setTitle(I)V

    .line 790
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const v1, 0x7f0e02df

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPinPreference;->setSummary(I)V

    goto :goto_1d
.end method

.method private updateEnableFDN()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f0e02ce

    .line 752
    const/4 v1, 0x1

    .line 754
    .local v1, isFdnAvailabel:Z
    :try_start_5
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/internal/telephony/IccCardEx;->getIccFdnAvailable(Lcom/android/internal/telephony/IccCard;)Z
    :try_end_e
    .catch Lcom/huawei/android/util/NoExtAPIException; {:try_start_5 .. :try_end_e} :catch_36

    move-result v1

    .line 760
    :goto_f
    if-eqz v1, :cond_52

    .line 762
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 763
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v3, 0x7f0e0120

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPinPreference;->setTitle(I)V

    .line 764
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v3, 0x7f0e011b

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPinPreference;->setSummary(I)V

    .line 765
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v3, 0x7f0e011e

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPinPreference;->setDialogTitle(I)V

    .line 779
    :goto_35
    return-void

    .line 755
    :catch_36
    move-exception v0

    .line 757
    .local v0, e:Lcom/huawei/android/util/NoExtAPIException;
    const/4 v1, 0x1

    goto :goto_f

    .line 767
    .end local v0           #e:Lcom/huawei/android/util/NoExtAPIException;
    :cond_39
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v3, 0x7f0e0121

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPinPreference;->setTitle(I)V

    .line 768
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v3, 0x7f0e011c

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPinPreference;->setSummary(I)V

    .line 769
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v3, 0x7f0e011d

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPinPreference;->setDialogTitle(I)V

    goto :goto_35

    .line 773
    :cond_52
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v2, v4}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 774
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v2, v4}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 775
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPinPreference;->setSummary(I)V

    .line 776
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPinPreference;->setSummary(I)V

    .line 777
    invoke-direct {p0, v3}, Lcom/android/phone/FdnSetting;->displayMessage(I)V

    goto :goto_35
.end method

.method private updatePINChangeState(Z)V
    .registers 11
    .parameter "positiveResult"

    .prologue
    const v8, 0x7f0e015b

    const/16 v7, 0xc8

    const v6, 0x7f0e015c

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 236
    if-nez p1, :cond_49

    .line 238
    iget-boolean v2, p0, Lcom/android/phone/FdnSetting;->mIsPuk2Locked:Z

    if-nez v2, :cond_33

    .line 239
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeState()V

    .line 245
    :goto_13
    const/4 v1, 0x0

    .line 247
    .local v1, strPin2RetryNum:Ljava/lang/String;
    sget-boolean v2, Lcom/android/phone/FdnSetting;->IS_MULTI_SIM:Z

    if-eqz v2, :cond_3e

    .line 249
    iget v2, p0, Lcom/android/phone/FdnSetting;->mSubscription:I

    if-nez v2, :cond_37

    .line 251
    const-string v2, "gsm.slot1.num.pin2"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 265
    :goto_22
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 266
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V

    .line 267
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->updateChangeFdn()V

    .line 377
    .end local v1           #strPin2RetryNum:Ljava/lang/String;
    :goto_32
    return-void

    .line 241
    :cond_33
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V

    goto :goto_13

    .line 255
    .restart local v1       #strPin2RetryNum:Ljava/lang/String;
    :cond_37
    const-string v2, "gsm.slot2.num.pin2"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_22

    .line 260
    :cond_3e
    const-string v2, "gsm.sim.num.pin2"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_22

    .line 269
    :cond_45
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->updateChangeFdn()V

    goto :goto_32

    .line 284
    .end local v1           #strPin2RetryNum:Ljava/lang/String;
    :cond_49
    iget v2, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    packed-switch v2, :pswitch_data_170

    goto :goto_32

    .line 286
    :pswitch_4f
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v2}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/FdnSetting;->mOldPin:Ljava/lang/String;

    .line 287
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 289
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mOldPin:Ljava/lang/String;

    invoke-direct {p0, v2, v5}, Lcom/android/phone/FdnSetting;->validatePin(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 290
    iput v4, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 291
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog()V

    goto :goto_32

    .line 293
    :cond_6c
    invoke-direct {p0, v6, v4}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(IZ)V

    goto :goto_32

    .line 297
    :pswitch_70
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v2}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    .line 298
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 300
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    invoke-direct {p0, v2, v5}, Lcom/android/phone/FdnSetting;->validatePin(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 301
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 302
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog()V

    goto :goto_32

    .line 304
    :cond_8e
    invoke-direct {p0, v6, v4}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(IZ)V

    goto :goto_32

    .line 309
    :pswitch_92
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v3}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ad

    .line 310
    iput v4, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 311
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 312
    invoke-direct {p0, v8, v4}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(IZ)V

    goto :goto_32

    .line 315
    :cond_ad
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 317
    iget-boolean v2, p0, Lcom/android/phone/FdnSetting;->mGcfTesting:Z

    if-nez v2, :cond_cd

    .line 318
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mFDNHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 319
    .local v0, onComplete:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mOldPin:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v0}, Lcom/android/internal/telephony/IccCard;->changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_32

    .line 321
    .end local v0           #onComplete:Landroid/os/Message;
    :cond_cd
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mFDNHandler:Landroid/os/Handler;

    const/16 v3, 0x12c

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 322
    .restart local v0       #onComplete:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mOldPuk2:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v0}, Lcom/android/internal/telephony/IccCard;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_32

    .line 329
    .end local v0           #onComplete:Landroid/os/Message;
    :pswitch_e4
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v2}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/FdnSetting;->mPuk2:Ljava/lang/String;

    .line 330
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 333
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mPuk2:Ljava/lang/String;

    invoke-direct {p0, v2, v4}, Lcom/android/phone/FdnSetting;->validatePin(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_10a

    .line 338
    iput-boolean v5, p0, Lcom/android/phone/FdnSetting;->mSkipOldPin:Z

    .line 339
    iput v4, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 340
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog()V

    .line 341
    iput-boolean v4, p0, Lcom/android/phone/FdnSetting;->mGcfTesting:Z

    .line 342
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mPuk2:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/phone/FdnSetting;->mOldPuk2:Ljava/lang/String;

    goto/16 :goto_32

    .line 345
    :cond_10a
    const v2, 0x7f0e015d

    invoke-direct {p0, v2, v4}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(IZ)V

    goto/16 :goto_32

    .line 350
    :pswitch_112
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v2}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    .line 351
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 354
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    invoke-direct {p0, v2, v5}, Lcom/android/phone/FdnSetting;->validatePin(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_131

    .line 355
    const/4 v2, 0x5

    iput v2, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 356
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog()V

    goto/16 :goto_32

    .line 358
    :cond_131
    invoke-direct {p0, v6, v4}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(IZ)V

    goto/16 :goto_32

    .line 364
    :pswitch_136
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v3}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_153

    .line 365
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 366
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 367
    invoke-direct {p0, v8, v4}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(IZ)V

    goto/16 :goto_32

    .line 370
    :cond_153
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 371
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mFDNHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 373
    .restart local v0       #onComplete:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mPuk2:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v0}, Lcom/android/internal/telephony/IccCard;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_32

    .line 284
    nop

    :pswitch_data_170
    .packed-switch 0x0
        :pswitch_4f
        :pswitch_70
        :pswitch_92
        :pswitch_e4
        :pswitch_112
        :pswitch_136
    .end packed-switch
.end method

.method private validatePin(Ljava/lang/String;Z)Z
    .registers 6
    .parameter "pin"
    .parameter "isPuk"

    .prologue
    const/16 v1, 0x8

    .line 737
    if-eqz p2, :cond_15

    move v0, v1

    .line 740
    .local v0, pinMinimum:I
    :goto_5
    if-eqz p1, :cond_13

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v0, :cond_13

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_17

    .line 741
    :cond_13
    const/4 v1, 0x0

    .line 743
    :goto_14
    return v1

    .line 737
    .end local v0           #pinMinimum:I
    :cond_15
    const/4 v0, 0x4

    goto :goto_5

    .line 743
    .restart local v0       #pinMinimum:I
    :cond_17
    const/4 v1, 0x1

    goto :goto_14
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 556
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V

    .line 557
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(IZ)V

    .line 558
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "icicle"

    .prologue
    const/4 v5, 0x0

    .line 809
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 812
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_86

    .line 814
    const v2, 0x7f060018

    invoke-virtual {p0, v2}, Lcom/android/phone/FdnSetting;->addPreferencesFromResource(I)V

    .line 820
    :goto_10
    invoke-virtual {p0}, Lcom/android/phone/FdnSetting;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "subscription"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/FdnSetting;->mSubscription:I

    .line 821
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/FdnSetting;->mSubscription:I

    invoke-virtual {v2, v3}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 823
    const-string v2, "button_fdn_list_key"

    invoke-virtual {p0, v2}, Lcom/android/phone/FdnSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/FdnSetting;->mSubscriptionPrefFDN:Landroid/preference/PreferenceScreen;

    .line 824
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mSubscriptionPrefFDN:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "subscription"

    iget v4, p0, Lcom/android/phone/FdnSetting;->mSubscription:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 827
    invoke-virtual {p0}, Lcom/android/phone/FdnSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 828
    .local v1, prefSet:Landroid/preference/PreferenceScreen;
    const-string v2, "button_fdn_enable_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/EditPinPreference;

    iput-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    .line 829
    const-string v2, "button_change_pin2_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/EditPinPreference;

    iput-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    .line 831
    const-string v2, "button_fdn_list_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    sput-object v2, Lcom/android/phone/FdnSetting;->mButtonFdnList:Landroid/preference/PreferenceScreen;

    .line 834
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v2, p0}, Lcom/android/phone/EditPinPreference;->setOnPinEnteredListener(Lcom/android/phone/EditPinPreference$OnPinEnteredListener;)V

    .line 835
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->updateEnableFDN()V

    .line 837
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v2, p0}, Lcom/android/phone/EditPinPreference;->setOnPinEnteredListener(Lcom/android/phone/EditPinPreference$OnPinEnteredListener;)V

    .line 840
    if-nez p1, :cond_8d

    .line 841
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeState()V

    .line 851
    :goto_73
    iput-boolean v5, p0, Lcom/android/phone/FdnSetting;->mGcfTesting:Z

    .line 852
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->updateChangeFdn()V

    .line 853
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->updateChangePin()V

    .line 855
    invoke-virtual {p0}, Lcom/android/phone/FdnSetting;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 856
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_85

    .line 858
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 860
    :cond_85
    return-void

    .line 816
    .end local v0           #actionBar:Landroid/app/ActionBar;
    .end local v1           #prefSet:Landroid/preference/PreferenceScreen;
    :cond_86
    const v2, 0x7f06000e

    invoke-virtual {p0, v2}, Lcom/android/phone/FdnSetting;->addPreferencesFromResource(I)V

    goto :goto_10

    .line 843
    .restart local v1       #prefSet:Landroid/preference/PreferenceScreen;
    :cond_8d
    const-string v2, "skip_old_pin_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/FdnSetting;->mIsPuk2Locked:Z

    .line 844
    const-string v2, "pin_change_state_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 845
    const-string v2, "old_pin_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/FdnSetting;->mOldPin:Ljava/lang/String;

    .line 846
    const-string v2, "new_pin_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    .line 847
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const-string v3, "dialog_message_key"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 848
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const-string v3, "dialog_pin_entry_key"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    goto :goto_73
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    .line 919
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 920
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_e

    .line 921
    invoke-static {p0}, Lcom/android/phone/CallFeaturesSetting;->goUpToTopLevelSetting(Landroid/app/Activity;)V

    .line 922
    const/4 v1, 0x1

    .line 924
    :goto_d
    return v1

    :cond_e
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_d
.end method

.method public onPinEntered(Lcom/android/phone/EditPinPreference;Z)V
    .registers 4
    .parameter "preference"
    .parameter "positiveResult"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    if-ne p1, v0, :cond_8

    .line 197
    invoke-direct {p0, p2}, Lcom/android/phone/FdnSetting;->toggleFDNEnable(Z)V

    .line 201
    :cond_7
    :goto_7
    return-void

    .line 198
    :cond_8
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    if-ne p1, v0, :cond_7

    .line 199
    invoke-direct {p0, p2}, Lcom/android/phone/FdnSetting;->updatePINChangeState(Z)V

    goto :goto_7
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 864
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 865
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/FdnSetting;->mSubscription:I

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 866
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->updateEnableFDN()V

    .line 867
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->checkPin2StatusAndUpdateFdnScreen()V

    .line 869
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->updateChangeFdn()V

    .line 872
    const/4 v0, 0x0

    .line 874
    .local v0, strPin2RetryNum:Ljava/lang/String;
    sget-boolean v1, Lcom/android/phone/FdnSetting;->IS_MULTI_SIM:Z

    if-eqz v1, :cond_49

    .line 876
    iget v1, p0, Lcom/android/phone/FdnSetting;->mSubscription:I

    if-nez v1, :cond_42

    .line 878
    const-string v1, "gsm.slot1.num.pin2"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 893
    :goto_27
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 894
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V

    .line 895
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->updateChangeFdn()V

    .line 896
    const v1, 0x7f0e02dd

    invoke-direct {p0, v1}, Lcom/android/phone/FdnSetting;->updateButtonState(I)V

    .line 899
    :cond_3e
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->updateChangePin()V

    .line 901
    return-void

    .line 882
    :cond_42
    const-string v1, "gsm.slot2.num.pin2"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_27

    .line 887
    :cond_49
    const-string v1, "gsm.sim.num.pin2"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_27
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "out"

    .prologue
    .line 908
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 909
    const-string v0, "skip_old_pin_key"

    iget-boolean v1, p0, Lcom/android/phone/FdnSetting;->mIsPuk2Locked:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 910
    const-string v0, "pin_change_state_key"

    iget v1, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 911
    const-string v0, "old_pin_key"

    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    const-string v0, "new_pin_key"

    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    const-string v0, "dialog_message_key"

    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPinPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    const-string v0, "dialog_pin_entry_key"

    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    return-void
.end method
