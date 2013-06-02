.class Lcom/android/phone/Settings$1;
.super Landroid/database/ContentObserver;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/Settings;


# direct methods
.method constructor <init>(Lcom/android/phone/Settings;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/phone/Settings$1;->this$0:Lcom/android/phone/Settings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/phone/Settings$1;->this$0:Lcom/android/phone/Settings;

    #calls: Lcom/android/phone/Settings;->updateDataEnabledCheckbox()V
    invoke-static {v0}, Lcom/android/phone/Settings;->access$000(Lcom/android/phone/Settings;)V

    .line 128
    return-void
.end method
