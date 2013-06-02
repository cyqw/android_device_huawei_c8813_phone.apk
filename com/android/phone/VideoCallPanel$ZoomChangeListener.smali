.class Lcom/android/phone/VideoCallPanel$ZoomChangeListener;
.super Ljava/lang/Object;
.source "VideoCallPanel.java"

# interfaces
.implements Lcom/android/phone/ZoomControl$OnZoomChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/VideoCallPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/VideoCallPanel;


# direct methods
.method private constructor <init>(Lcom/android/phone/VideoCallPanel;)V
    .registers 2
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/phone/VideoCallPanel$ZoomChangeListener;->this$0:Lcom/android/phone/VideoCallPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/VideoCallPanel;Lcom/android/phone/VideoCallPanel$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/phone/VideoCallPanel$ZoomChangeListener;-><init>(Lcom/android/phone/VideoCallPanel;)V

    return-void
.end method


# virtual methods
.method public onZoomValueChanged(I)V
    .registers 3
    .parameter "index"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel$ZoomChangeListener;->this$0:Lcom/android/phone/VideoCallPanel;

    #calls: Lcom/android/phone/VideoCallPanel;->onZoomValueChanged(I)V
    invoke-static {v0, p1}, Lcom/android/phone/VideoCallPanel;->access$000(Lcom/android/phone/VideoCallPanel;I)V

    .line 95
    return-void
.end method
