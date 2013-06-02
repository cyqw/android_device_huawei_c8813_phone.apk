.class Lcom/android/phone/InCallTouchUi$2;
.super Ljava/lang/Object;
.source "InCallTouchUi.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallTouchUi;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallTouchUi;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallTouchUi;)V
    .registers 2
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/phone/InCallTouchUi$2;->this$0:Lcom/android/phone/InCallTouchUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "v"
    .parameter "event"

    .prologue
    .line 296
    const/4 v0, 0x0

    return v0
.end method
