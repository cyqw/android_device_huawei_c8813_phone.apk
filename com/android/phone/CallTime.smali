.class public Lcom/android/phone/CallTime;
.super Landroid/os/Handler;
.source "CallTime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallTime$PeriodicTimerCallback;,
        Lcom/android/phone/CallTime$OnTickListener;
    }
.end annotation


# static fields
.field private static sProfileState:I


# instance fields
.field private mCall:Lcom/android/internal/telephony/Call;

.field private mInterval:J

.field private mLastReportedTime:J

.field private mListener:Lcom/android/phone/CallTime$OnTickListener;

.field private mTimerCallback:Lcom/android/phone/CallTime$PeriodicTimerCallback;

.field private mTimerRunning:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput v0, Lcom/android/phone/CallTime;->sProfileState:I

    return-void
.end method

.method public constructor <init>(Lcom/android/phone/CallTime$OnTickListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/phone/CallTime;->mListener:Lcom/android/phone/CallTime$OnTickListener;

    .line 61
    new-instance v0, Lcom/android/phone/CallTime$PeriodicTimerCallback;

    invoke-direct {v0, p0}, Lcom/android/phone/CallTime$PeriodicTimerCallback;-><init>(Lcom/android/phone/CallTime;)V

    iput-object v0, p0, Lcom/android/phone/CallTime;->mTimerCallback:Lcom/android/phone/CallTime$PeriodicTimerCallback;

    .line 62
    return-void
.end method

.method static synthetic access$002(Lcom/android/phone/CallTime;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/phone/CallTime;->mTimerRunning:Z

    return p1
.end method

.method static getCallDuration(Lcom/android/internal/telephony/Call;)J
    .registers 10
    .parameter "call"

    .prologue
    .line 133
    const-wide/16 v3, 0x0

    .line 134
    .local v3, duration:J
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 135
    .local v1, connections:Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 138
    .local v2, count:I
    const/4 v8, 0x1

    if-ne v2, v8, :cond_19

    .line 139
    const/4 v8, 0x0

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 142
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v3

    .line 156
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    :cond_18
    return-wide v3

    .line 144
    :cond_19
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1a
    if-ge v5, v2, :cond_18

    .line 145
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 148
    .restart local v0       #c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v6

    .line 149
    .local v6, t:J
    cmp-long v8, v6, v3

    if-lez v8, :cond_2b

    .line 150
    move-wide v3, v6

    .line 144
    :cond_2b
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a
.end method

.method private static log(Ljava/lang/String;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 160
    const-string v0, "PHONE/CallTime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CallTime] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-void
.end method

.method private updateElapsedTime(Lcom/android/internal/telephony/Call;)V
    .registers 7
    .parameter "call"

    .prologue
    .line 122
    iget-object v2, p0, Lcom/android/phone/CallTime;->mListener:Lcom/android/phone/CallTime$OnTickListener;

    if-eqz v2, :cond_11

    .line 123
    invoke-static {p1}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v0

    .line 124
    .local v0, duration:J
    iget-object v2, p0, Lcom/android/phone/CallTime;->mListener:Lcom/android/phone/CallTime$OnTickListener;

    const-wide/16 v3, 0x3e8

    div-long v3, v0, v3

    invoke-interface {v2, v3, v4}, Lcom/android/phone/CallTime$OnTickListener;->onTickForCallTimeElapsed(J)V

    .line 126
    .end local v0           #duration:J
    :cond_11
    return-void
.end method


# virtual methods
.method cancelTimer()V
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/phone/CallTime;->mTimerCallback:Lcom/android/phone/CallTime$PeriodicTimerCallback;

    invoke-virtual {p0, v0}, Lcom/android/phone/CallTime;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallTime;->mTimerRunning:Z

    .line 119
    return-void
.end method

.method isTraceReady()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 188
    sget v1, Lcom/android/phone/CallTime;->sProfileState:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method isTraceRunning()Z
    .registers 3

    .prologue
    .line 192
    sget v0, Lcom/android/phone/CallTime;->sProfileState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method periodicUpdateTimer()V
    .registers 10

    .prologue
    .line 85
    iget-boolean v5, p0, Lcom/android/phone/CallTime;->mTimerRunning:Z

    if-nez v5, :cond_3c

    .line 86
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/phone/CallTime;->mTimerRunning:Z

    .line 88
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 89
    .local v2, now:J
    iget-wide v5, p0, Lcom/android/phone/CallTime;->mLastReportedTime:J

    iget-wide v7, p0, Lcom/android/phone/CallTime;->mInterval:J

    add-long v0, v5, v7

    .line 91
    .local v0, nextReport:J
    :goto_11
    cmp-long v5, v2, v0

    if-ltz v5, :cond_19

    .line 92
    iget-wide v5, p0, Lcom/android/phone/CallTime;->mInterval:J

    add-long/2addr v0, v5

    goto :goto_11

    .line 96
    :cond_19
    iget-object v5, p0, Lcom/android/phone/CallTime;->mTimerCallback:Lcom/android/phone/CallTime$PeriodicTimerCallback;

    invoke-virtual {p0, v5, v0, v1}, Lcom/android/phone/CallTime;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 97
    iput-wide v0, p0, Lcom/android/phone/CallTime;->mLastReportedTime:J

    .line 99
    iget-object v5, p0, Lcom/android/phone/CallTime;->mCall:Lcom/android/internal/telephony/Call;

    if-eqz v5, :cond_33

    .line 100
    iget-object v5, p0, Lcom/android/phone/CallTime;->mCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    .line 102
    .local v4, state:Lcom/android/internal/telephony/Call$State;
    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_33

    .line 103
    iget-object v5, p0, Lcom/android/phone/CallTime;->mCall:Lcom/android/internal/telephony/Call;

    invoke-direct {p0, v5}, Lcom/android/phone/CallTime;->updateElapsedTime(Lcom/android/internal/telephony/Call;)V

    .line 107
    .end local v4           #state:Lcom/android/internal/telephony/Call$State;
    :cond_33
    invoke-virtual {p0}, Lcom/android/phone/CallTime;->isTraceReady()Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 108
    invoke-virtual {p0}, Lcom/android/phone/CallTime;->startTrace()V

    .line 113
    .end local v0           #nextReport:J
    .end local v2           #now:J
    :cond_3c
    return-void
.end method

.method refreshTime()V
    .registers 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/phone/CallTime;->mCall:Lcom/android/internal/telephony/Call;

    if-eqz v0, :cond_9

    .line 236
    iget-object v0, p0, Lcom/android/phone/CallTime;->mCall:Lcom/android/internal/telephony/Call;

    invoke-direct {p0, v0}, Lcom/android/phone/CallTime;->updateElapsedTime(Lcom/android/internal/telephony/Call;)V

    .line 238
    :cond_9
    return-void
.end method

.method reset()V
    .registers 5

    .prologue
    .line 81
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/phone/CallTime;->mInterval:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/phone/CallTime;->mLastReportedTime:J

    .line 82
    return-void
.end method

.method setActiveCallMode(Lcom/android/internal/telephony/Call;)V
    .registers 4
    .parameter "call"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/phone/CallTime;->mCall:Lcom/android/internal/telephony/Call;

    .line 76
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/phone/CallTime;->mInterval:J

    .line 77
    return-void
.end method

.method startTrace()V
    .registers 9

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 196
    sget v4, Lcom/android/phone/CallTime;->sProfileState:I

    if-ne v4, v5, :cond_8b

    move v4, v5

    :goto_7
    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_8a

    .line 200
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    const-string v7, "phoneTrace"

    invoke-virtual {v4, v7, v6}, Lcom/android/phone/PhoneApp;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 201
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1e

    .line 202
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 204
    :cond_1e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "callstate"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, baseName:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".data"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, dataFile:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".key"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 208
    .local v3, keyFile:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    .end local v2           #file:Ljava/io/File;
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    .restart local v2       #file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-ne v4, v5, :cond_6f

    .line 210
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 213
    :cond_6f
    new-instance v2, Ljava/io/File;

    .end local v2           #file:Ljava/io/File;
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    .restart local v2       #file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-ne v4, v5, :cond_7d

    .line 215
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 218
    :cond_7d
    const/4 v4, 0x2

    sput v4, Lcom/android/phone/CallTime;->sProfileState:I

    .line 219
    const-string v4, "startTrace"

    invoke-static {v4}, Lcom/android/phone/CallTime;->log(Ljava/lang/String;)V

    .line 220
    const/high16 v4, 0x80

    invoke-static {v0, v4}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;I)V

    .line 222
    .end local v0           #baseName:Ljava/lang/String;
    .end local v1           #dataFile:Ljava/lang/String;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #keyFile:Ljava/lang/String;
    :cond_8a
    return-void

    :cond_8b
    move v4, v6

    .line 196
    goto/16 :goto_7
.end method

.method stopTrace()V
    .registers 3

    .prologue
    .line 226
    sget v0, Lcom/android/phone/CallTime;->sProfileState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    .line 227
    const/4 v0, 0x0

    sput v0, Lcom/android/phone/CallTime;->sProfileState:I

    .line 228
    const-string v0, "stopTrace"

    invoke-static {v0}, Lcom/android/phone/CallTime;->log(Ljava/lang/String;)V

    .line 229
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 232
    :cond_10
    return-void
.end method
