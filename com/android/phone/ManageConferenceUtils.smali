.class public Lcom/android/phone/ManageConferenceUtils;
.super Ljava/lang/Object;
.source "ManageConferenceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/ManageConferenceUtils$QueryCompleteListener;
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field protected mButtonManageConferenceDone:Landroid/widget/LinearLayout;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mConferenceCallList:[Landroid/view/ViewGroup;

.field private mConferenceTime:Landroid/widget/Chronometer;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mManageConferencePanel:Landroid/view/ViewGroup;

.field private mNumCallersInConference:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 57
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/CallManager;)V
    .registers 2
    .parameter "cm"

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lcom/android/phone/ManageConferenceUtils;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/ManageConferenceUtils;)[Landroid/view/ViewGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    return-object v0
.end method


# virtual methods
.method public SetInCallInstance(Lcom/android/phone/InCallScreen;)V
    .registers 2
    .parameter "inCallScreen"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 124
    return-void
.end method

.method public final displayCallerInfoForConferenceRow(Lcom/android/internal/telephony/CallerInfo;ILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 13
    .parameter "ci"
    .parameter "presentation"
    .parameter "nameTextView"
    .parameter "numberTypeTextView"
    .parameter "numberTextView"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 320
    const-string v0, ""

    .line 321
    .local v0, callerName:Ljava/lang/String;
    const-string v1, ""

    .line 322
    .local v1, callerNumber:Ljava/lang/String;
    const-string v2, ""

    .line 323
    .local v2, callerNumberType:Ljava/lang/String;
    if-eqz p1, :cond_34

    .line 324
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 325
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 326
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 330
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_23

    const-string v3, "+"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 331
    :cond_23
    iget v3, p1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne v3, v4, :cond_44

    .line 332
    invoke-virtual {p0}, Lcom/android/phone/ManageConferenceUtils;->getUiScreen()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0e0005

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 349
    :cond_34
    :goto_34
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 353
    invoke-virtual {p5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 354
    invoke-virtual {p4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 361
    :goto_43
    return-void

    .line 333
    :cond_44
    iget v3, p1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    if-ne v3, v4, :cond_56

    .line 334
    invoke-virtual {p0}, Lcom/android/phone/ManageConferenceUtils;->getUiScreen()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0e0006

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_34

    .line 336
    :cond_56
    invoke-virtual {p0}, Lcom/android/phone/ManageConferenceUtils;->getUiScreen()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0e0004

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_34

    .line 343
    :cond_62
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 344
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    goto :goto_34

    .line 356
    :cond_67
    invoke-virtual {p5, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 357
    invoke-virtual {p5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    invoke-virtual {p4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 359
    invoke-virtual {p4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_43
.end method

.method public endConferenceConnection(ILcom/android/internal/telephony/Connection;)V
    .registers 3
    .parameter "i"
    .parameter "connection"

    .prologue
    .line 371
    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Connection;)V

    .line 375
    return-void
.end method

.method protected getManageConferenceViewStub(I)Landroid/view/ViewStub;
    .registers 3
    .parameter "id"

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, p1}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    return-object v0
.end method

.method public getNumCallersInConference()I
    .registers 2

    .prologue
    .line 199
    iget v0, p0, Lcom/android/phone/ManageConferenceUtils;->mNumCallersInConference:I

    return v0
.end method

.method protected getUiScreen()Landroid/app/Activity;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Activity;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method public initManageConferencePanel()V
    .registers 9

    .prologue
    const/4 v7, 0x5

    .line 128
    iget-object v4, p0, Lcom/android/phone/ManageConferenceUtils;->mManageConferencePanel:Landroid/view/ViewGroup;

    if-nez v4, :cond_6b

    .line 133
    const v4, 0x7f09008c

    invoke-virtual {p0, v4}, Lcom/android/phone/ManageConferenceUtils;->getManageConferenceViewStub(I)Landroid/view/ViewStub;

    move-result-object v1

    .line 134
    .local v1, stub:Landroid/view/ViewStub;
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    .line 136
    .local v2, v:Landroid/view/View;
    const v4, 0x7f0900be

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/phone/ManageConferenceUtils;->mManageConferencePanel:Landroid/view/ViewGroup;

    .line 138
    iget-object v4, p0, Lcom/android/phone/ManageConferenceUtils;->mManageConferencePanel:Landroid/view/ViewGroup;

    if-nez v4, :cond_27

    .line 139
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Couldn\'t find manageConferencePanel!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 143
    :cond_27
    const v4, 0x7f0900bf

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Chronometer;

    iput-object v4, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceTime:Landroid/widget/Chronometer;

    .line 145
    iget-object v4, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceTime:Landroid/widget/Chronometer;

    invoke-virtual {p0}, Lcom/android/phone/ManageConferenceUtils;->getUiScreen()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0e0163

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Chronometer;->setFormat(Ljava/lang/String;)V

    .line 148
    new-array v4, v7, [Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    .line 150
    new-array v3, v7, [I

    fill-array-data v3, :array_6c

    .line 152
    .local v3, viewGroupIdList:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4c
    if-ge v0, v7, :cond_5d

    .line 153
    iget-object v5, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget v4, v3, v0

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    aput-object v4, v5, v0

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_4c

    .line 158
    :cond_5d
    const v4, 0x7f0900c2

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/phone/ManageConferenceUtils;->mButtonManageConferenceDone:Landroid/widget/LinearLayout;

    .line 162
    invoke-virtual {p0}, Lcom/android/phone/ManageConferenceUtils;->setOnclickListener()V

    .line 168
    .end local v0           #i:I
    .end local v1           #stub:Landroid/view/ViewStub;
    .end local v2           #v:Landroid/view/View;
    .end local v3           #viewGroupIdList:[I
    :cond_6b
    return-void

    .line 150
    :array_6c
    .array-data 0x4
        0xc4t 0x0t 0x9t 0x7ft
        0xc5t 0x0t 0x9t 0x7ft
        0xc6t 0x0t 0x9t 0x7ft
        0xc7t 0x0t 0x9t 0x7ft
        0xc8t 0x0t 0x9t 0x7ft
    .end array-data
.end method

.method public separateConferenceConnection(ILcom/android/internal/telephony/Connection;)V
    .registers 3
    .parameter "i"
    .parameter "connection"

    .prologue
    .line 385
    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->separateCall(Lcom/android/internal/telephony/Connection;)V

    .line 395
    return-void
.end method

.method protected setOnclickListener()V
    .registers 3

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mButtonManageConferenceDone:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    return-void
.end method

.method public setPanelVisible(Z)V
    .registers 4
    .parameter "visible"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mManageConferencePanel:Landroid/view/ViewGroup;

    if-eqz v0, :cond_c

    .line 175
    iget-object v1, p0, Lcom/android/phone/ManageConferenceUtils;->mManageConferencePanel:Landroid/view/ViewGroup;

    if-eqz p1, :cond_d

    const/4 v0, 0x0

    :goto_9
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 177
    :cond_c
    return-void

    .line 175
    :cond_d
    const/16 v0, 0x8

    goto :goto_9
.end method

.method public startConferenceTime(J)V
    .registers 4
    .parameter "base"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceTime:Landroid/widget/Chronometer;

    if-eqz v0, :cond_e

    .line 184
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceTime:Landroid/widget/Chronometer;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Chronometer;->setBase(J)V

    .line 185
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceTime:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->start()V

    .line 187
    :cond_e
    return-void
.end method

.method public stopConferenceTime()V
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceTime:Landroid/widget/Chronometer;

    if-eqz v0, :cond_9

    .line 194
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceTime:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    .line 196
    :cond_9
    return-void
.end method

.method public updateManageConferencePanel(Ljava/util/List;)V
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    const/4 v5, 0x0

    .line 211
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    iput v6, p0, Lcom/android/phone/ManageConferenceUtils;->mNumCallersInConference:I

    .line 215
    iget-object v6, p0, Lcom/android/phone/ManageConferenceUtils;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v2

    .line 216
    .local v2, hasActiveCall:Z
    iget-object v6, p0, Lcom/android/phone/ManageConferenceUtils;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v3

    .line 217
    .local v3, hasHoldingCall:Z
    if-eqz v2, :cond_17

    if-nez v3, :cond_2c

    :cond_17
    const/4 v0, 0x1

    .line 219
    .local v0, canSeparate:Z
    :goto_18
    const/4 v4, 0x0

    .local v4, i:I
    :goto_19
    const/4 v6, 0x5

    if-ge v4, v6, :cond_33

    .line 220
    iget v6, p0, Lcom/android/phone/ManageConferenceUtils;->mNumCallersInConference:I

    if-ge v4, v6, :cond_2e

    .line 222
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 223
    .local v1, connection:Lcom/android/internal/telephony/Connection;
    invoke-virtual {p0, v4, v1, v0}, Lcom/android/phone/ManageConferenceUtils;->updateManageConferenceRow(ILcom/android/internal/telephony/Connection;Z)V

    .line 219
    .end local v1           #connection:Lcom/android/internal/telephony/Connection;
    :goto_29
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .end local v0           #canSeparate:Z
    .end local v4           #i:I
    :cond_2c
    move v0, v5

    .line 217
    goto :goto_18

    .line 226
    .restart local v0       #canSeparate:Z
    .restart local v4       #i:I
    :cond_2e
    const/4 v6, 0x0

    invoke-virtual {p0, v4, v6, v5}, Lcom/android/phone/ManageConferenceUtils;->updateManageConferenceRow(ILcom/android/internal/telephony/Connection;Z)V

    goto :goto_29

    .line 229
    :cond_33
    return-void
.end method

.method public updateManageConferenceRow(ILcom/android/internal/telephony/Connection;Z)V
    .registers 16
    .parameter "i"
    .parameter "connection"
    .parameter "canSeparate"

    .prologue
    .line 246
    if-eqz p2, :cond_7f

    .line 248
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const v1, 0x7f09003f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 252
    .local v6, endButton:Landroid/view/View;
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const v1, 0x7f09003b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 254
    .local v10, separateButton:Landroid/view/View;
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const v1, 0x7f09003c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 256
    .local v3, nameTextView:Landroid/widget/TextView;
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const v1, 0x7f09003d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 258
    .local v5, numberTextView:Landroid/widget/TextView;
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const v1, 0x7f09003e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 266
    .local v4, numberTypeTextView:Landroid/widget/TextView;
    new-instance v7, Lcom/android/phone/ManageConferenceUtils$1;

    invoke-direct {v7, p0, p1, p2}, Lcom/android/phone/ManageConferenceUtils$1;-><init>(Lcom/android/phone/ManageConferenceUtils;ILcom/android/internal/telephony/Connection;)V

    .line 273
    .local v7, endThisConnection:Landroid/view/View$OnClickListener;
    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    if-eqz p3, :cond_79

    .line 276
    new-instance v11, Lcom/android/phone/ManageConferenceUtils$2;

    invoke-direct {v11, p0, p1, p2}, Lcom/android/phone/ManageConferenceUtils$2;-><init>(Lcom/android/phone/ManageConferenceUtils;ILcom/android/internal/telephony/Connection;)V

    .line 283
    .local v11, separateThisConnection:Landroid/view/View$OnClickListener;
    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    .line 292
    .end local v11           #separateThisConnection:Landroid/view/View$OnClickListener;
    :goto_5d
    new-instance v9, Lcom/android/phone/ManageConferenceUtils$QueryCompleteListener;

    invoke-direct {v9, p0, p1}, Lcom/android/phone/ManageConferenceUtils$QueryCompleteListener;-><init>(Lcom/android/phone/ManageConferenceUtils;I)V

    .line 296
    .local v9, listener:Lcom/android/phone/ManageConferenceUtils$QueryCompleteListener;
    invoke-virtual {p0}, Lcom/android/phone/ManageConferenceUtils;->getUiScreen()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v1, v1, p1

    invoke-static {v0, p2, v9, v1}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v8

    .line 303
    .local v8, info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-object v1, v8, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/ManageConferenceUtils;->displayCallerInfoForConferenceRow(Lcom/android/internal/telephony/CallerInfo;ILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 309
    .end local v3           #nameTextView:Landroid/widget/TextView;
    .end local v4           #numberTypeTextView:Landroid/widget/TextView;
    .end local v5           #numberTextView:Landroid/widget/TextView;
    .end local v6           #endButton:Landroid/view/View;
    .end local v7           #endThisConnection:Landroid/view/View$OnClickListener;
    .end local v8           #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v9           #listener:Lcom/android/phone/ManageConferenceUtils$QueryCompleteListener;
    .end local v10           #separateButton:Landroid/view/View;
    :goto_78
    return-void

    .line 287
    .restart local v3       #nameTextView:Landroid/widget/TextView;
    .restart local v4       #numberTypeTextView:Landroid/widget/TextView;
    .restart local v5       #numberTextView:Landroid/widget/TextView;
    .restart local v6       #endButton:Landroid/view/View;
    .restart local v7       #endThisConnection:Landroid/view/View$OnClickListener;
    .restart local v10       #separateButton:Landroid/view/View;
    :cond_79
    const/16 v0, 0x8

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5d

    .line 307
    .end local v3           #nameTextView:Landroid/widget/TextView;
    .end local v4           #numberTypeTextView:Landroid/widget/TextView;
    .end local v5           #numberTextView:Landroid/widget/TextView;
    .end local v6           #endButton:Landroid/view/View;
    .end local v7           #endThisConnection:Landroid/view/View$OnClickListener;
    .end local v10           #separateButton:Landroid/view/View;
    :cond_7f
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_78
.end method
