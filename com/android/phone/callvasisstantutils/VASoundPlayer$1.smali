.class Lcom/android/phone/callvasisstantutils/VASoundPlayer$1;
.super Ljava/lang/Object;
.source "VASoundPlayer.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callvasisstantutils/VASoundPlayer;->initSoundPool()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callvasisstantutils/VASoundPlayer;


# direct methods
.method constructor <init>(Lcom/android/phone/callvasisstantutils/VASoundPlayer;)V
    .registers 2
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/phone/callvasisstantutils/VASoundPlayer$1;->this$0:Lcom/android/phone/callvasisstantutils/VASoundPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .registers 6
    .parameter "soundPool"
    .parameter "sampleId"
    .parameter "status"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/phone/callvasisstantutils/VASoundPlayer$1;->this$0:Lcom/android/phone/callvasisstantutils/VASoundPlayer;

    const/4 v1, 0x1

    #setter for: Lcom/android/phone/callvasisstantutils/VASoundPlayer;->mLoadCompleted:Z
    invoke-static {v0, v1}, Lcom/android/phone/callvasisstantutils/VASoundPlayer;->access$002(Lcom/android/phone/callvasisstantutils/VASoundPlayer;Z)Z

    .line 69
    return-void
.end method
