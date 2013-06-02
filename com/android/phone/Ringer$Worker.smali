.class Lcom/android/phone/Ringer$Worker;
.super Ljava/lang/Object;
.source "Ringer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/Ringer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mLooper:Landroid/os/Looper;

.field final synthetic this$0:Lcom/android/phone/Ringer;


# direct methods
.method constructor <init>(Lcom/android/phone/Ringer;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter "name"

    .prologue
    .line 322
    iput-object p1, p0, Lcom/android/phone/Ringer$Worker;->this$0:Lcom/android/phone/Ringer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/phone/Ringer$Worker;->mLock:Ljava/lang/Object;

    .line 323
    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 324
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 325
    iget-object v2, p0, Lcom/android/phone/Ringer$Worker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 326
    :goto_18
    :try_start_18
    iget-object v1, p0, Lcom/android/phone/Ringer$Worker;->mLooper:Landroid/os/Looper;
    :try_end_1a
    .catchall {:try_start_18 .. :try_end_1a} :catchall_26

    if-nez v1, :cond_24

    .line 328
    :try_start_1c
    iget-object v1, p0, Lcom/android/phone/Ringer$Worker;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_26
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_21} :catch_22

    goto :goto_18

    .line 329
    :catch_22
    move-exception v1

    goto :goto_18

    .line 332
    :cond_24
    :try_start_24
    monitor-exit v2

    .line 333
    return-void

    .line 332
    :catchall_26
    move-exception v1

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_26

    throw v1
.end method


# virtual methods
.method public getLooper()Landroid/os/Looper;
    .registers 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/phone/Ringer$Worker;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public run()V
    .registers 3

    .prologue
    .line 340
    iget-object v1, p0, Lcom/android/phone/Ringer$Worker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 341
    :try_start_3
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 342
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/Ringer$Worker;->mLooper:Landroid/os/Looper;

    .line 343
    iget-object v0, p0, Lcom/android/phone/Ringer$Worker;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 344
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_16

    .line 345
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 346
    return-void

    .line 344
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method
