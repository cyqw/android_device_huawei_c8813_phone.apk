.class Lcom/android/phone/InCallFragment$SubChangeListener;
.super Ljava/lang/Object;
.source "InCallFragment.java"

# interfaces
.implements Lcom/android/phone/MSimPhoneApp$SubscriptionChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallFragment;


# direct methods
.method private constructor <init>(Lcom/android/phone/InCallFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 5143
    iput-object p1, p0, Lcom/android/phone/InCallFragment$SubChangeListener;->this$0:Lcom/android/phone/InCallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/InCallFragment;Lcom/android/phone/InCallFragment$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5143
    invoke-direct {p0, p1}, Lcom/android/phone/InCallFragment$SubChangeListener;-><init>(Lcom/android/phone/InCallFragment;)V

    return-void
.end method


# virtual methods
.method public onSubscriptionChanged()V
    .registers 3

    .prologue
    .line 5148
    iget-object v0, p0, Lcom/android/phone/InCallFragment$SubChangeListener;->this$0:Lcom/android/phone/InCallFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallFragment;->requestUpdateInCallTouchUi(Z)V

    .line 5150
    return-void
.end method
