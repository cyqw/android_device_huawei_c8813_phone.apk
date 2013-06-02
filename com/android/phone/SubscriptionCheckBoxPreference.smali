.class Lcom/android/phone/SubscriptionCheckBoxPreference;
.super Landroid/preference/Preference;
.source "SetSubscription.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field mCheckBox1:Landroid/widget/CheckBox;

.field mCheckBox1Status:Z

.field mCheckBox2:Landroid/widget/CheckBox;

.field mCheckBox2Status:Z

.field mOnPrefClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field mTitle:Ljava/lang/String;

.field mTitleView:Landroid/widget/TextView;

.field mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5
    .parameter "context"
    .parameter "width"

    .prologue
    const/4 v1, 0x0

    .line 615
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 617
    const v0, 0x7f04002b

    invoke-virtual {p0, v0}, Lcom/android/phone/SubscriptionCheckBoxPreference;->setLayoutResource(I)V

    .line 618
    iput p2, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mWidth:I

    .line 619
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mOnPrefClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 620
    iput-boolean v1, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox1Status:Z

    .line 621
    iput-boolean v1, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox2Status:Z

    .line 622
    return-void
.end method


# virtual methods
.method public getSelectedSubscription()Lcom/android/phone/SubscriptionID;
    .registers 3

    .prologue
    .line 707
    iget-object v1, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox1:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 708
    sget-object v0, Lcom/android/phone/SubscriptionID;->SUB_0:Lcom/android/phone/SubscriptionID;

    .line 714
    .local v0, ret:Lcom/android/phone/SubscriptionID;
    :goto_a
    return-object v0

    .line 709
    .end local v0           #ret:Lcom/android/phone/SubscriptionID;
    :cond_b
    iget-object v1, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox2:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 710
    sget-object v0, Lcom/android/phone/SubscriptionID;->SUB_1:Lcom/android/phone/SubscriptionID;

    .restart local v0       #ret:Lcom/android/phone/SubscriptionID;
    goto :goto_a

    .line 712
    .end local v0           #ret:Lcom/android/phone/SubscriptionID;
    :cond_16
    sget-object v0, Lcom/android/phone/SubscriptionID;->NONE:Lcom/android/phone/SubscriptionID;

    .restart local v0       #ret:Lcom/android/phone/SubscriptionID;
    goto :goto_a
.end method

.method public markAllUnChecked()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 669
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox1:Landroid/widget/CheckBox;

    if-eqz v0, :cond_a

    .line 670
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox1:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 672
    :cond_a
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox2:Landroid/widget/CheckBox;

    if-eqz v0, :cond_13

    .line 673
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox2:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 675
    :cond_13
    return-void
.end method

.method public markChecked(Lcom/android/phone/SubscriptionID;)V
    .registers 5
    .parameter "onSub"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 678
    sget-object v0, Lcom/android/phone/SubscriptionID;->SUB_0:Lcom/android/phone/SubscriptionID;

    if-ne p1, v0, :cond_28

    .line 679
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox1:Landroid/widget/CheckBox;

    if-eqz v0, :cond_23

    .line 680
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox2:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox2:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 681
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox2:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 682
    iput-boolean v1, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox2Status:Z

    .line 684
    :cond_1d
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox1:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 703
    :cond_22
    :goto_22
    return-void

    .line 687
    :cond_23
    iput-boolean v2, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox1Status:Z

    .line 688
    iput-boolean v1, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox2Status:Z

    goto :goto_22

    .line 690
    :cond_28
    sget-object v0, Lcom/android/phone/SubscriptionID;->SUB_1:Lcom/android/phone/SubscriptionID;

    if-ne p1, v0, :cond_22

    .line 691
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox2:Landroid/widget/CheckBox;

    if-eqz v0, :cond_49

    .line 692
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox1:Landroid/widget/CheckBox;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox1:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 693
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox1:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 694
    iput-boolean v1, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox1Status:Z

    .line 696
    :cond_43
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox2:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_22

    .line 699
    :cond_49
    iput-boolean v2, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox2Status:Z

    .line 700
    iput-boolean v1, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox1Status:Z

    goto :goto_22
.end method

.method public onBindView(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    const/16 v2, 0x4b

    const/4 v3, -0x2

    .line 633
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 635
    const v0, 0x1010002

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox1:Landroid/widget/CheckBox;

    .line 636
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox1:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 637
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox1:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox1Status:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 638
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox1:Landroid/widget/CheckBox;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 639
    const v0, 0x1010003

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox2:Landroid/widget/CheckBox;

    .line 640
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox2:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 641
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox2:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox2Status:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 642
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox2:Landroid/widget/CheckBox;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 643
    const v0, 0x1010001

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mTitleView:Landroid/widget/TextView;

    .line 644
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 645
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mTitleView:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mWidth:I

    add-int/lit16 v2, v2, -0x96

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 646
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 652
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox1:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_12

    .line 653
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox2:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 654
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox2:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 657
    :cond_12
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox2:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_23

    .line 658
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox1:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 659
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox1:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 663
    :cond_23
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mOnPrefClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    if-eqz v0, :cond_2c

    .line 664
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mOnPrefClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-interface {v0, p0}, Landroid/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroid/preference/Preference;)Z

    .line 666
    :cond_2c
    return-void
.end method

.method public setOnSubPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V
    .registers 2
    .parameter "onPreferenceClickListener"

    .prologue
    .line 718
    iput-object p1, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mOnPrefClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 719
    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .registers 4
    .parameter "resId"

    .prologue
    .line 625
    iput-object p1, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mTitle:Ljava/lang/String;

    .line 626
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    .line 627
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 629
    :cond_d
    return-void
.end method
