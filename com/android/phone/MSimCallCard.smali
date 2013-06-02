.class public Lcom/android/phone/MSimCallCard;
.super Lcom/android/phone/CallCard;
.source "MSimCallCard.java"


# instance fields
.field private mSubInfo:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method private dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V
    .registers 6
    .parameter "event"
    .parameter "view"

    .prologue
    .line 166
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    .line 167
    .local v0, eventText:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 168
    .local v1, size:I
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 170
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_15

    .line 171
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_15
    return-void
.end method


# virtual methods
.method protected cancelTimer(Lcom/android/internal/telephony/Call;)V
    .registers 7
    .parameter "call"

    .prologue
    const/4 v4, 0x0

    .line 102
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 103
    .local v0, state:Lcom/android/internal/telephony/Call$State;
    iget-object v3, p0, Lcom/android/phone/MSimCallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v3}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 104
    sget-object v3, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v3, :cond_12

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v3, :cond_35

    .line 106
    :cond_12
    sget-boolean v3, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-nez v3, :cond_34

    .line 109
    iget-object v3, p0, Lcom/android/phone/MSimCallCard;->mSubInfo:Landroid/widget/TextView;

    if-eqz v3, :cond_34

    .line 112
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v2

    .line 113
    .local v2, subscription:I
    invoke-virtual {p0}, Lcom/android/phone/MSimCallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/phone/PhoneUtils;->getSimCardDisplayLabel(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, subInfo:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/MSimCallCard;->mSubInfo:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v3, p0, Lcom/android/phone/MSimCallCard;->mSubInfo:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    .end local v1           #subInfo:Ljava/lang/String;
    .end local v2           #subscription:I
    :cond_34
    :goto_34
    return-void

    .line 125
    :cond_35
    sget-object v3, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v3, :cond_3d

    sget-object v3, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v3, :cond_34

    .line 127
    :cond_3d
    sget-boolean v3, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-nez v3, :cond_34

    .line 128
    iget-object v3, p0, Lcom/android/phone/MSimCallCard;->mSubInfo:Landroid/widget/TextView;

    if-eqz v3, :cond_34

    .line 130
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v2

    .line 132
    .restart local v2       #subscription:I
    invoke-virtual {p0}, Lcom/android/phone/MSimCallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/phone/PhoneUtils;->getSimCardDisplayLabel(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 134
    .restart local v1       #subInfo:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/MSimCallCard;->mSubInfo:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v3, p0, Lcom/android/phone/MSimCallCard;->mSubInfo:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_34
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 158
    invoke-super {p0, p1}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 159
    iget-object v0, p0, Lcom/android/phone/MSimCallCard;->mSubInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    .line 160
    iget-object v0, p0, Lcom/android/phone/MSimCallCard;->mSubInfo:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MSimCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 162
    :cond_c
    const/4 v0, 0x1

    return v0
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 77
    invoke-super {p0}, Lcom/android/phone/CallCard;->onFinishInflate()V

    .line 78
    const v0, 0x7f090037

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/MSimCallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    .line 79
    const v0, 0x7f090063

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/MSimCallCard;->mSubInfo:Landroid/widget/TextView;

    .line 83
    return-void
.end method

.method protected updateCallCard(Lcom/android/internal/telephony/Call;)V
    .registers 5
    .parameter "call"

    .prologue
    .line 89
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v1

    .line 92
    .local v1, subscription:I
    invoke-virtual {p0}, Lcom/android/phone/MSimCallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/phone/PhoneUtils;->getSimCardDisplayLabel(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, subInfo:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/MSimCallCard;->mSubInfo:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    return-void
.end method
