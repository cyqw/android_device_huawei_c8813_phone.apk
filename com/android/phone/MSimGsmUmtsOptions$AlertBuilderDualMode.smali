.class Lcom/android/phone/MSimGsmUmtsOptions$AlertBuilderDualMode;
.super Ljava/lang/Object;
.source "MSimGsmUmtsOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MSimGsmUmtsOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlertBuilderDualMode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MSimGsmUmtsOptions$AlertBuilderDualMode$NoClickListerner;,
        Lcom/android/phone/MSimGsmUmtsOptions$AlertBuilderDualMode$YesClickListerner;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MSimGsmUmtsOptions;


# direct methods
.method private constructor <init>(Lcom/android/phone/MSimGsmUmtsOptions;)V
    .registers 2
    .parameter

    .prologue
    .line 505
    iput-object p1, p0, Lcom/android/phone/MSimGsmUmtsOptions$AlertBuilderDualMode;->this$0:Lcom/android/phone/MSimGsmUmtsOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 557
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/MSimGsmUmtsOptions;Lcom/android/phone/MSimGsmUmtsOptions$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 505
    invoke-direct {p0, p1}, Lcom/android/phone/MSimGsmUmtsOptions$AlertBuilderDualMode;-><init>(Lcom/android/phone/MSimGsmUmtsOptions;)V

    return-void
.end method


# virtual methods
.method public Instance(I)Landroid/app/AlertDialog$Builder;
    .registers 6
    .parameter "mode"

    .prologue
    const/4 v3, 0x0

    .line 507
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/MSimGsmUmtsOptions$AlertBuilderDualMode;->this$0:Lcom/android/phone/MSimGsmUmtsOptions;

    #getter for: Lcom/android/phone/MSimGsmUmtsOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;
    invoke-static {v1}, Lcom/android/phone/MSimGsmUmtsOptions;->access$100(Lcom/android/phone/MSimGsmUmtsOptions;)Landroid/preference/PreferenceActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 508
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 509
    const v1, 0x7f0e03c3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 511
    const/4 v1, 0x1

    if-ne p1, v1, :cond_35

    .line 513
    const v1, 0x7f0e03c4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 518
    :goto_1f
    const v1, 0x104000a

    new-instance v2, Lcom/android/phone/MSimGsmUmtsOptions$AlertBuilderDualMode$YesClickListerner;

    invoke-direct {v2, p0, v3}, Lcom/android/phone/MSimGsmUmtsOptions$AlertBuilderDualMode$YesClickListerner;-><init>(Lcom/android/phone/MSimGsmUmtsOptions$AlertBuilderDualMode;Lcom/android/phone/MSimGsmUmtsOptions$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 519
    const/high16 v1, 0x104

    new-instance v2, Lcom/android/phone/MSimGsmUmtsOptions$AlertBuilderDualMode$NoClickListerner;

    invoke-direct {v2, p0, v3}, Lcom/android/phone/MSimGsmUmtsOptions$AlertBuilderDualMode$NoClickListerner;-><init>(Lcom/android/phone/MSimGsmUmtsOptions$AlertBuilderDualMode;Lcom/android/phone/MSimGsmUmtsOptions$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 520
    return-object v0

    .line 516
    :cond_35
    const v1, 0x7f0e03c5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1f
.end method
