.class public Landroid/media/voicerecorder/RecordingCall;
.super Ljava/lang/Object;
.source "RecordingCall.java"


# instance fields
.field private call:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation
.end field

.field private mRecordingCall:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private recordingCallState:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/CallManager;)V
    .registers 12
    .parameter "mCM"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    iput-object v8, p0, Landroid/media/voicerecorder/RecordingCall;->mRecordingCall:Ljava/util/LinkedList;

    .line 42
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/media/voicerecorder/RecordingCall;->call:Ljava/util/List;

    .line 48
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Landroid/media/voicerecorder/RecordingCall;->call:Ljava/util/List;

    .line 53
    sget-boolean v8, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v8, :cond_47

    .line 54
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v5

    .line 55
    .local v5, sub:I
    iget-object v8, p0, Landroid/media/voicerecorder/RecordingCall;->call:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 56
    .local v4, iter:Ljava/util/Iterator;
    const/4 v6, 0x0

    .line 57
    .local v6, tempCall:Lcom/android/internal/telephony/Call;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v7, tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/Call;>;"
    :cond_2b
    :goto_2b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_45

    .line 60
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .end local v6           #tempCall:Lcom/android/internal/telephony/Call;
    check-cast v6, Lcom/android/internal/telephony/Call;

    .line 61
    .restart local v6       #tempCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-static {v8}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v8

    if-ne v8, v5, :cond_2b

    .line 62
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 66
    :cond_45
    iput-object v7, p0, Landroid/media/voicerecorder/RecordingCall;->call:Ljava/util/List;

    .line 70
    .end local v4           #iter:Ljava/util/Iterator;
    .end local v5           #sub:I
    .end local v6           #tempCall:Lcom/android/internal/telephony/Call;
    .end local v7           #tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/Call;>;"
    :cond_47
    const/4 v2, 0x0

    .local v2, i:I
    :goto_48
    iget-object v8, p0, Landroid/media/voicerecorder/RecordingCall;->call:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_7b

    .line 71
    iget-object v8, p0, Landroid/media/voicerecorder/RecordingCall;->call:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 72
    .local v0, c:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_78

    .line 73
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_62
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_78

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 74
    .local v1, conn:Lcom/android/internal/telephony/Connection;
    iget-object v8, p0, Landroid/media/voicerecorder/RecordingCall;->mRecordingCall:Ljava/util/LinkedList;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_62

    .line 70
    .end local v1           #conn:Lcom/android/internal/telephony/Connection;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_78
    add-int/lit8 v2, v2, 0x1

    goto :goto_48

    .line 78
    .end local v0           #c:Lcom/android/internal/telephony/Call;
    :cond_7b
    return-void
.end method


# virtual methods
.method public delRecording(Ljava/lang/String;)V
    .registers 4
    .parameter "phoneNumber"

    .prologue
    .line 99
    if-eqz p1, :cond_8

    .line 100
    iget-object v0, p0, Landroid/media/voicerecorder/RecordingCall;->mRecordingCall:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 104
    :goto_7
    return-void

    .line 102
    :cond_8
    const-string v0, "RecordingCall"

    const-string v1, "mRecordingCall delRecording() file, phoneNumber is null "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public equalRecordingCall(Ljava/util/List;)Ljava/lang/Boolean;
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .local p1, call:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    const/4 v7, 0x0

    .line 123
    invoke-virtual {p0}, Landroid/media/voicerecorder/RecordingCall;->toString()Ljava/lang/String;

    move-result-object v4

    .line 124
    .local v4, mRecordingString:Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 125
    .local v0, c:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_47

    .line 126
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 127
    .local v1, conn:Lcom/android/internal/telephony/Connection;
    const/4 v5, -0x1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ne v5, v6, :cond_27

    .line 128
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 135
    .end local v0           #c:Lcom/android/internal/telephony/Call;
    .end local v1           #conn:Lcom/android/internal/telephony/Connection;
    .end local v3           #i$:Ljava/util/Iterator;
    :goto_46
    return-object v5

    .line 132
    .restart local v0       #c:Lcom/android/internal/telephony/Call;
    :cond_47
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_46

    .line 135
    .end local v0           #c:Lcom/android/internal/telephony/Call;
    :cond_4c
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_46
.end method

.method public equalSingleRecordingCall(Lcom/android/internal/telephony/Call;)Ljava/lang/Boolean;
    .registers 8
    .parameter "call"

    .prologue
    const/4 v5, 0x0

    .line 139
    invoke-virtual {p0}, Landroid/media/voicerecorder/RecordingCall;->toString()Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, mRecordingString:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_37

    .line 141
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 142
    .local v0, conn:Lcom/android/internal/telephony/Connection;
    const/4 v3, -0x1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v3, v4, :cond_17

    .line 143
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 149
    .end local v0           #conn:Lcom/android/internal/telephony/Connection;
    .end local v1           #i$:Ljava/util/Iterator;
    :goto_36
    return-object v3

    .line 147
    :cond_37
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_36

    .line 149
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_3c
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_36
.end method

.method public getRecordingCall()Ljava/util/LinkedList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Landroid/media/voicerecorder/RecordingCall;->mRecordingCall:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getRecordingCallState()I
    .registers 2

    .prologue
    .line 164
    iget v0, p0, Landroid/media/voicerecorder/RecordingCall;->recordingCallState:I

    return v0
.end method

.method public pause()V
    .registers 2

    .prologue
    .line 91
    const/4 v0, 0x4

    iput v0, p0, Landroid/media/voicerecorder/RecordingCall;->recordingCallState:I

    .line 92
    return-void
.end method

.method public setRecordingCallState(I)V
    .registers 2
    .parameter "recordingCallState"

    .prologue
    .line 171
    iput p1, p0, Landroid/media/voicerecorder/RecordingCall;->recordingCallState:I

    .line 172
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 111
    .local v0, buf:Ljava/lang/StringBuffer;
    iget-object v3, p0, Landroid/media/voicerecorder/RecordingCall;->mRecordingCall:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 112
    .local v2, s:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b

    .line 114
    .end local v2           #s:Ljava/lang/String;
    :cond_2e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
