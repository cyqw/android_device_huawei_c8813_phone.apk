.class Lcom/android/phone/MSimCdmaOptions$AlertBuilderDualMode;
.super Ljava/lang/Object;
.source "MSimCdmaOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MSimCdmaOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlertBuilderDualMode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MSimCdmaOptions$AlertBuilderDualMode$NoClickListerner;,
        Lcom/android/phone/MSimCdmaOptions$AlertBuilderDualMode$YesClickListerner;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MSimCdmaOptions;


# direct methods
.method private constructor <init>(Lcom/android/phone/MSimCdmaOptions;)V
    .registers 2
    .parameter

    .prologue
    .line 489
    iput-object p1, p0, Lcom/android/phone/MSimCdmaOptions$AlertBuilderDualMode;->this$0:Lcom/android/phone/MSimCdmaOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 538
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/MSimCdmaOptions;Lcom/android/phone/MSimCdmaOptions$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 489
    invoke-direct {p0, p1}, Lcom/android/phone/MSimCdmaOptions$AlertBuilderDualMode;-><init>(Lcom/android/phone/MSimCdmaOptions;)V

    return-void
.end method


# virtual methods
.method public Instance(I)Landroid/app/AlertDialog$Builder;
    .registers 6
    .parameter "mode"

    .prologue
    const/4 v3, 0x0

    .line 491
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/MSimCdmaOptions$AlertBuilderDualMode;->this$0:Lcom/android/phone/MSimCdmaOptions;

    #getter for: Lcom/android/phone/MSimCdmaOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;
    invoke-static {v1}, Lcom/android/phone/MSimCdmaOptions;->access$100(Lcom/android/phone/MSimCdmaOptions;)Landroid/preference/PreferenceActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 492
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 493
    const v1, 0x7f0e03c3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 495
    const/4 v1, 0x1

    if-ne p1, v1, :cond_35

    .line 497
    const v1, 0x7f0e03c4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 502
    :goto_1f
    const v1, 0x104000a

    new-instance v2, Lcom/android/phone/MSimCdmaOptions$AlertBuilderDualMode$YesClickListerner;

    invoke-direct {v2, p0, v3}, Lcom/android/phone/MSimCdmaOptions$AlertBuilderDualMode$YesClickListerner;-><init>(Lcom/android/phone/MSimCdmaOptions$AlertBuilderDualMode;Lcom/android/phone/MSimCdmaOptions$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 503
    const/high16 v1, 0x104

    new-instance v2, Lcom/android/phone/MSimCdmaOptions$AlertBuilderDualMode$NoClickListerner;

    invoke-direct {v2, p0, v3}, Lcom/android/phone/MSimCdmaOptions$AlertBuilderDualMode$NoClickListerner;-><init>(Lcom/android/phone/MSimCdmaOptions$AlertBuilderDualMode;Lcom/android/phone/MSimCdmaOptions$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 504
    return-object v0

    .line 500
    :cond_35
    const v1, 0x7f0e03c5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1f
.end method
