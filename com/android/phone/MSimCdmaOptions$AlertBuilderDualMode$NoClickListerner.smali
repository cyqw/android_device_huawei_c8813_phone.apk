.class Lcom/android/phone/MSimCdmaOptions$AlertBuilderDualMode$NoClickListerner;
.super Ljava/lang/Object;
.source "MSimCdmaOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MSimCdmaOptions$AlertBuilderDualMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoClickListerner"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/MSimCdmaOptions$AlertBuilderDualMode;


# direct methods
.method private constructor <init>(Lcom/android/phone/MSimCdmaOptions$AlertBuilderDualMode;)V
    .registers 2
    .parameter

    .prologue
    .line 538
    iput-object p1, p0, Lcom/android/phone/MSimCdmaOptions$AlertBuilderDualMode$NoClickListerner;->this$1:Lcom/android/phone/MSimCdmaOptions$AlertBuilderDualMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/MSimCdmaOptions$AlertBuilderDualMode;Lcom/android/phone/MSimCdmaOptions$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 538
    invoke-direct {p0, p1}, Lcom/android/phone/MSimCdmaOptions$AlertBuilderDualMode$NoClickListerner;-><init>(Lcom/android/phone/MSimCdmaOptions$AlertBuilderDualMode;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/phone/MSimCdmaOptions$AlertBuilderDualMode$NoClickListerner;->this$1:Lcom/android/phone/MSimCdmaOptions$AlertBuilderDualMode;

    iget-object v0, v0, Lcom/android/phone/MSimCdmaOptions$AlertBuilderDualMode;->this$0:Lcom/android/phone/MSimCdmaOptions;

    #calls: Lcom/android/phone/MSimCdmaOptions;->setDualModePrefValueAndSummary()V
    invoke-static {v0}, Lcom/android/phone/MSimCdmaOptions;->access$500(Lcom/android/phone/MSimCdmaOptions;)V

    .line 542
    return-void
.end method
