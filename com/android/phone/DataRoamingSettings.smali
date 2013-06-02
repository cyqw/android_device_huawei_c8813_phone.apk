.class public Lcom/android/phone/DataRoamingSettings;
.super Landroid/app/Activity;
.source "DataRoamingSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/DataRoamingSettings$TabListener;
    }
.end annotation


# static fields
.field private static final IS_UMTS_GSM:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 22
    const-string v0, "ro.config.dsds_mode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "umts_gsm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/DataRoamingSettings;->IS_UMTS_GSM:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 82
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 15
    .parameter "savedInstanceState"

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const/4 v8, 0x0

    .line 28
    .local v8, subscription:I
    invoke-virtual {p0}, Lcom/android/phone/DataRoamingSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 32
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {p0}, Lcom/android/phone/DataRoamingSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 34
    .local v3, lRes:Landroid/content/res/Resources;
    if-eqz v0, :cond_cd

    .line 35
    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 36
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 37
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 38
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 39
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 40
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 44
    invoke-static {}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDefault()Lcom/huawei/telephony/HuaweiTelephonyManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getSlotIdFromSubId(I)I

    move-result v6

    .line 45
    .local v6, slotId1:I
    invoke-static {}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDefault()Lcom/huawei/telephony/HuaweiTelephonyManager;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getSlotIdFromSubId(I)I

    move-result v7

    .line 46
    .local v7, slotId2:I
    invoke-static {}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDefault()Lcom/huawei/telephony/HuaweiTelephonyManager;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/huawei/telephony/HuaweiTelephonyManager;->isCardPresent(I)Z

    move-result v1

    .line 48
    .local v1, card1Present:Z
    invoke-static {}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDefault()Lcom/huawei/telephony/HuaweiTelephonyManager;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/huawei/telephony/HuaweiTelephonyManager;->isCardPresent(I)Z

    move-result v2

    .line 55
    .local v2, card2Present:Z
    sget-boolean v9, Lcom/android/phone/DataRoamingSettings;->IS_UMTS_GSM:Z

    if-eqz v9, :cond_ce

    .line 56
    const v4, 0x7f0e03c1

    .line 57
    .local v4, lTitleResIdSub1:I
    const v5, 0x7f0e03c2

    .line 63
    .local v5, lTitleResIdSub2:I
    :goto_56
    if-eqz v1, :cond_8d

    .line 64
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v10

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v1, :cond_d5

    if-eqz v2, :cond_d5

    const-string v9, ""

    :goto_6f
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v9

    new-instance v10, Lcom/android/phone/DataRoamingSettings$TabListener;

    new-instance v11, Lcom/android/phone/MSimDataRoamingTabFragment;

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Lcom/android/phone/MSimDataRoamingTabFragment;-><init>(I)V

    invoke-direct {v10, p0, v11}, Lcom/android/phone/DataRoamingSettings$TabListener;-><init>(Lcom/android/phone/DataRoamingSettings;Lcom/android/phone/MSimDataRoamingTabFragment;)V

    invoke-virtual {v9, v10}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 67
    :cond_8d
    if-eqz v2, :cond_c4

    .line 68
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v10

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v1, :cond_f0

    if-eqz v2, :cond_f0

    const-string v9, ""

    :goto_a6
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v9

    new-instance v10, Lcom/android/phone/DataRoamingSettings$TabListener;

    new-instance v11, Lcom/android/phone/MSimDataRoamingTabFragment;

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Lcom/android/phone/MSimDataRoamingTabFragment;-><init>(I)V

    invoke-direct {v10, p0, v11}, Lcom/android/phone/DataRoamingSettings$TabListener;-><init>(Lcom/android/phone/DataRoamingSettings;Lcom/android/phone/MSimDataRoamingTabFragment;)V

    invoke-virtual {v9, v10}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 73
    :cond_c4
    invoke-virtual {v0}, Landroid/app/ActionBar;->getNavigationItemCount()I

    move-result v9

    if-lez v9, :cond_cd

    .line 75
    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 79
    .end local v1           #card1Present:Z
    .end local v2           #card2Present:Z
    .end local v4           #lTitleResIdSub1:I
    .end local v5           #lTitleResIdSub2:I
    .end local v6           #slotId1:I
    .end local v7           #slotId2:I
    :cond_cd
    return-void

    .line 59
    .restart local v1       #card1Present:Z
    .restart local v2       #card2Present:Z
    .restart local v6       #slotId1:I
    .restart local v7       #slotId2:I
    :cond_ce
    const v4, 0x7f0e03bf

    .line 60
    .restart local v4       #lTitleResIdSub1:I
    const v5, 0x7f0e03c0

    .restart local v5       #lTitleResIdSub2:I
    goto :goto_56

    .line 64
    :cond_d5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v12, 0x7f0e03b0

    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_6f

    .line 68
    :cond_f0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v12, 0x7f0e03b0

    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_a6
.end method
