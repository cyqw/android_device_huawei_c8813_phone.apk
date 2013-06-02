.class public Lcom/android/phone/callvasisstantutils/VAAsyncTask;
.super Landroid/os/AsyncTask;
.source "VAAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mContactName:Ljava/lang/String;

.field private mContactNumber:Ljava/lang/String;

.field private mProcessType:I

.field private mVASManager:Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;


# direct methods
.method public constructor <init>(ILcom/android/phone/callvasisstantutils/VAssistantServiceManager;)V
    .registers 4
    .parameter "processType"
    .parameter "vaSm"

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/callvasisstantutils/VAAsyncTask;->mVASManager:Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/callvasisstantutils/VAAsyncTask;->mProcessType:I

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/callvasisstantutils/VAAsyncTask;->mContactName:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/callvasisstantutils/VAAsyncTask;->mContactNumber:Ljava/lang/String;

    .line 77
    iput p1, p0, Lcom/android/phone/callvasisstantutils/VAAsyncTask;->mProcessType:I

    .line 78
    iput-object p2, p0, Lcom/android/phone/callvasisstantutils/VAAsyncTask;->mVASManager:Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;

    .line 79
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 34
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/phone/callvasisstantutils/VAAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "params"

    .prologue
    .line 99
    iget v0, p0, Lcom/android/phone/callvasisstantutils/VAAsyncTask;->mProcessType:I

    packed-switch v0, :pswitch_data_1e

    .line 114
    :goto_5
    :pswitch_5
    const/4 v0, 0x0

    return-object v0

    .line 103
    :pswitch_7
    iget-object v0, p0, Lcom/android/phone/callvasisstantutils/VAAsyncTask;->mVASManager:Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;

    iget-object v1, p0, Lcom/android/phone/callvasisstantutils/VAAsyncTask;->mContactName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/callvasisstantutils/VAAsyncTask;->mContactNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->informBroadcastIncomingCall(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 106
    :pswitch_11
    iget-object v0, p0, Lcom/android/phone/callvasisstantutils/VAAsyncTask;->mVASManager:Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;

    invoke-virtual {v0}, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->informIncomingCallEnd()V

    goto :goto_5

    .line 109
    :pswitch_17
    iget-object v0, p0, Lcom/android/phone/callvasisstantutils/VAAsyncTask;->mVASManager:Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;

    invoke-virtual {v0}, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->informIncomingCallAnswered()V

    goto :goto_5

    .line 99
    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_7
        :pswitch_11
        :pswitch_17
    .end packed-switch
.end method

.method protected onPreExecute()V
    .registers 1

    .prologue
    .line 86
    return-void
.end method

.method public setContact(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "contactName"
    .parameter "contactNumber"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/phone/callvasisstantutils/VAAsyncTask;->mContactName:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/android/phone/callvasisstantutils/VAAsyncTask;->mContactNumber:Ljava/lang/String;

    .line 68
    return-void
.end method
