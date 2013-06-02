.class Lcom/android/phone/ContactsAsyncHelper$1;
.super Landroid/os/Handler;
.source "ContactsAsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ContactsAsyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ContactsAsyncHelper;


# direct methods
.method constructor <init>(Lcom/android/phone/ContactsAsyncHelper;)V
    .registers 2
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/phone/ContactsAsyncHelper$1;->this$0:Lcom/android/phone/ContactsAsyncHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    .line 72
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/phone/ContactsAsyncHelper$WorkerArgs;

    .line 73
    .local v0, args:Lcom/android/phone/ContactsAsyncHelper$WorkerArgs;
    iget v1, p1, Landroid/os/Message;->arg1:I

    packed-switch v1, :pswitch_data_1c

    .line 86
    :cond_9
    :goto_9
    return-void

    .line 75
    :pswitch_a
    iget-object v1, v0, Lcom/android/phone/ContactsAsyncHelper$WorkerArgs;->listener:Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;

    if-eqz v1, :cond_9

    .line 80
    iget-object v1, v0, Lcom/android/phone/ContactsAsyncHelper$WorkerArgs;->listener:Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;

    iget v2, p1, Landroid/os/Message;->what:I

    iget-object v3, v0, Lcom/android/phone/ContactsAsyncHelper$WorkerArgs;->photo:Landroid/graphics/drawable/Drawable;

    iget-object v4, v0, Lcom/android/phone/ContactsAsyncHelper$WorkerArgs;->photoIcon:Landroid/graphics/Bitmap;

    iget-object v5, v0, Lcom/android/phone/ContactsAsyncHelper$WorkerArgs;->cookie:Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;->onImageLoadComplete(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/Object;)V

    goto :goto_9

    .line 73
    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_a
    .end packed-switch
.end method
