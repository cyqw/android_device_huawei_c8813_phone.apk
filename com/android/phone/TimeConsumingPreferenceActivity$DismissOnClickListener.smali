.class Lcom/android/phone/TimeConsumingPreferenceActivity$DismissOnClickListener;
.super Ljava/lang/Object;
.source "TimeConsumingPreferenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/TimeConsumingPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DismissOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/TimeConsumingPreferenceActivity;


# direct methods
.method private constructor <init>(Lcom/android/phone/TimeConsumingPreferenceActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/phone/TimeConsumingPreferenceActivity$DismissOnClickListener;->this$0:Lcom/android/phone/TimeConsumingPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/TimeConsumingPreferenceActivity;Lcom/android/phone/TimeConsumingPreferenceActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity$DismissOnClickListener;-><init>(Lcom/android/phone/TimeConsumingPreferenceActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 35
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 36
    return-void
.end method
