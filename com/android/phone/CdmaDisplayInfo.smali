.class public Lcom/android/phone/CdmaDisplayInfo;
.super Ljava/lang/Object;
.source "CdmaDisplayInfo.java"


# static fields
.field private static final DBG:Z

.field private static final IS_CDG:Z

.field private static sDisplayInfoDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 32
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_18

    :goto_a
    sput-boolean v0, Lcom/android/phone/CdmaDisplayInfo;->DBG:Z

    .line 34
    const-string v0, "ro.config.hw_cdma_cdg"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/CdmaDisplayInfo;->IS_CDG:Z

    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/CdmaDisplayInfo;->sDisplayInfoDialog:Landroid/app/AlertDialog;

    return-void

    :cond_18
    move v0, v1

    .line 32
    goto :goto_a
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dismissDisplayInfoRecord()V
    .registers 1

    .prologue
    .line 91
    sget-object v0, Lcom/android/phone/CdmaDisplayInfo;->sDisplayInfoDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_c

    .line 92
    sget-object v0, Lcom/android/phone/CdmaDisplayInfo;->sDisplayInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 93
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/CdmaDisplayInfo;->sDisplayInfoDialog:Landroid/app/AlertDialog;

    .line 95
    :cond_c
    return-void
.end method

.method public static displayInfoRecord(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .parameter "context"
    .parameter "infoMsg"

    .prologue
    .line 50
    sget-object v0, Lcom/android/phone/CdmaDisplayInfo;->sDisplayInfoDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_9

    .line 51
    sget-object v0, Lcom/android/phone/CdmaDisplayInfo;->sDisplayInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 57
    :cond_9
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e01b6

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CdmaDisplayInfo;->sDisplayInfoDialog:Landroid/app/AlertDialog;

    .line 66
    sget-boolean v0, Lcom/android/phone/CdmaDisplayInfo;->IS_CDG:Z

    if-eqz v0, :cond_56

    .line 67
    sget-object v0, Lcom/android/phone/CdmaDisplayInfo;->sDisplayInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 69
    sget-object v0, Lcom/android/phone/CdmaDisplayInfo;->sDisplayInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 80
    :goto_49
    sget-object v0, Lcom/android/phone/CdmaDisplayInfo;->sDisplayInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 81
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 83
    return-void

    .line 73
    :cond_56
    sget-object v0, Lcom/android/phone/CdmaDisplayInfo;->sDisplayInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 75
    sget-object v0, Lcom/android/phone/CdmaDisplayInfo;->sDisplayInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_49
.end method
