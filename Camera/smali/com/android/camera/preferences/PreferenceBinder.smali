.class public abstract Lcom/android/camera/preferences/PreferenceBinder;
.super Ljava/lang/Object;
.source "PreferenceBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TValue:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PreferenceBinder"


# instance fields
.field public final defaultPreferenceValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTValue;"
        }
    .end annotation
.end field

.field public final defaultPropertyValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTValue;"
        }
    .end annotation
.end field

.field private m_IsBinding:Z

.field private m_IsSynchronizing:Z

.field private final m_PrefValueChangedHandler:Lcom/android/camera/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/EventHandler",
            "<",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final m_PropertyChangedCallback:Lcom/android/camera/property/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/PropertyChangedCallback",
            "<TTValue;>;"
        }
    .end annotation
.end field

.field private final m_PropertyOwnerKey:Ljava/lang/Object;

.field public final preferenceName:Ljava/lang/String;

.field public final property:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<TTValue;>;"
        }
    .end annotation
.end field

.field public final settingsOwner:Lcom/android/camera/ISettingsOwner;


# direct methods
.method protected constructor <init>(Lcom/android/camera/ISettingsOwner;Ljava/lang/String;Lcom/android/camera/property/Property;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .parameter "settingsOwner"
    .parameter "preferenceName"
    .parameter
    .parameter "propertyOwnerKey"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ISettingsOwner;",
            "Ljava/lang/String;",
            "Lcom/android/camera/property/Property",
            "<TTValue;>;",
            "Ljava/lang/Object;",
            "TTValue;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, this:Lcom/android/camera/preferences/PreferenceBinder;,"Lcom/android/camera/preferences/PreferenceBinder<TTValue;>;"
    .local p3, property:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    .local p5, defaultPropertyValue:Ljava/lang/Object;,"TTValue;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/preferences/PreferenceBinder;->m_IsBinding:Z

    .line 35
    new-instance v0, Lcom/android/camera/preferences/PreferenceBinder$1;

    invoke-direct {v0, p0}, Lcom/android/camera/preferences/PreferenceBinder$1;-><init>(Lcom/android/camera/preferences/PreferenceBinder;)V

    iput-object v0, p0, Lcom/android/camera/preferences/PreferenceBinder;->m_PrefValueChangedHandler:Lcom/android/camera/event/EventHandler;

    .line 44
    new-instance v0, Lcom/android/camera/preferences/PreferenceBinder$2;

    invoke-direct {v0, p0}, Lcom/android/camera/preferences/PreferenceBinder$2;-><init>(Lcom/android/camera/preferences/PreferenceBinder;)V

    iput-object v0, p0, Lcom/android/camera/preferences/PreferenceBinder;->m_PropertyChangedCallback:Lcom/android/camera/property/PropertyChangedCallback;

    .line 60
    if-nez p1, :cond_0

    .line 62
    const-string v0, "settingsOwner"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 65
    :cond_0
    if-nez p2, :cond_1

    .line 67
    const-string v0, "preferenceName"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 70
    :cond_1
    if-nez p3, :cond_2

    .line 72
    const-string v0, "property"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 77
    :cond_2
    iput-object p1, p0, Lcom/android/camera/preferences/PreferenceBinder;->settingsOwner:Lcom/android/camera/ISettingsOwner;

    .line 78
    iput-object p2, p0, Lcom/android/camera/preferences/PreferenceBinder;->preferenceName:Ljava/lang/String;

    .line 79
    iput-object p3, p0, Lcom/android/camera/preferences/PreferenceBinder;->property:Lcom/android/camera/property/Property;

    .line 80
    iput-object p5, p0, Lcom/android/camera/preferences/PreferenceBinder;->defaultPropertyValue:Ljava/lang/Object;

    .line 81
    iput-object p5, p0, Lcom/android/camera/preferences/PreferenceBinder;->defaultPreferenceValue:Ljava/lang/Object;

    .line 82
    iput-object p4, p0, Lcom/android/camera/preferences/PreferenceBinder;->m_PropertyOwnerKey:Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/android/camera/preferences/PreferenceBinder;->property:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/preferences/PreferenceBinder;->m_PropertyChangedCallback:Lcom/android/camera/property/PropertyChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 86
    invoke-interface {p1}, Lcom/android/camera/ISettingsOwner;->getSettings()Lcom/android/camera/Settings;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/Settings;->preferenceChangedEvent:Lcom/android/camera/event/Event;

    iget-object v1, p0, Lcom/android/camera/preferences/PreferenceBinder;->m_PrefValueChangedHandler:Lcom/android/camera/event/EventHandler;

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/camera/preferences/PreferenceBinder;->updateFromPreference()V

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/preferences/PreferenceBinder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/android/camera/preferences/PreferenceBinder;->m_IsSynchronizing:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/preferences/PreferenceBinder;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/android/camera/preferences/PreferenceBinder;->flushToPreference(Ljava/lang/Object;)V

    return-void
.end method

.method private flushToPreference(Ljava/lang/Object;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTValue;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, this:Lcom/android/camera/preferences/PreferenceBinder;,"Lcom/android/camera/preferences/PreferenceBinder<TTValue;>;"
    .local p1, propertyValue:Ljava/lang/Object;,"TTValue;"
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/camera/preferences/PreferenceBinder;->setPreferenceValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 114
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "PreferenceBinder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flushToPreference() - Error updating preference \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/preferences/PreferenceBinder;->preferenceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private updateFromPreference(Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTValue;)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p0, this:Lcom/android/camera/preferences/PreferenceBinder;,"Lcom/android/camera/preferences/PreferenceBinder<TTValue;>;"
    .local p1, value:Ljava/lang/Object;,"TTValue;"
    iget-object v0, p0, Lcom/android/camera/preferences/PreferenceBinder;->property:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/preferences/PreferenceBinder;->m_PropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 177
    return-void
.end method


# virtual methods
.method public final flushToPreference()V
    .locals 1

    .prologue
    .line 98
    .local p0, this:Lcom/android/camera/preferences/PreferenceBinder;,"Lcom/android/camera/preferences/PreferenceBinder<TTValue;>;"
    iget-boolean v0, p0, Lcom/android/camera/preferences/PreferenceBinder;->m_IsBinding:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/preferences/PreferenceBinder;->m_IsSynchronizing:Z

    if-eqz v0, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/preferences/PreferenceBinder;->m_IsSynchronizing:Z

    .line 103
    iget-object v0, p0, Lcom/android/camera/preferences/PreferenceBinder;->property:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/preferences/PreferenceBinder;->flushToPreference(Ljava/lang/Object;)V

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/preferences/PreferenceBinder;->m_IsSynchronizing:Z

    goto :goto_0
.end method

.method protected abstract getPreferenceValue()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTValue;"
        }
    .end annotation
.end method

.method public resetToDefaultValue()V
    .locals 1

    .prologue
    .line 132
    .local p0, this:Lcom/android/camera/preferences/PreferenceBinder;,"Lcom/android/camera/preferences/PreferenceBinder<TTValue;>;"
    iget-object v0, p0, Lcom/android/camera/preferences/PreferenceBinder;->defaultPreferenceValue:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/android/camera/preferences/PreferenceBinder;->setPreferenceValue(Ljava/lang/Object;)V

    .line 133
    return-void
.end method

.method protected setPreferenceValue(Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTValue;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, this:Lcom/android/camera/preferences/PreferenceBinder;,"Lcom/android/camera/preferences/PreferenceBinder<TTValue;>;"
    .local p1, value:Ljava/lang/Object;,"TTValue;"
    iget-object v0, p0, Lcom/android/camera/preferences/PreferenceBinder;->settingsOwner:Lcom/android/camera/ISettingsOwner;

    invoke-interface {v0}, Lcom/android/camera/ISettingsOwner;->getSettings()Lcom/android/camera/Settings;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/preferences/PreferenceBinder;->preferenceName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 125
    return-void
.end method

.method public final unbind()V
    .locals 2

    .prologue
    .line 141
    .local p0, this:Lcom/android/camera/preferences/PreferenceBinder;,"Lcom/android/camera/preferences/PreferenceBinder<TTValue;>;"
    iget-boolean v0, p0, Lcom/android/camera/preferences/PreferenceBinder;->m_IsBinding:Z

    if-nez v0, :cond_0

    .line 150
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/camera/preferences/PreferenceBinder;->property:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/preferences/PreferenceBinder;->m_PropertyChangedCallback:Lcom/android/camera/property/PropertyChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->removeChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)Z

    .line 146
    iget-object v0, p0, Lcom/android/camera/preferences/PreferenceBinder;->settingsOwner:Lcom/android/camera/ISettingsOwner;

    invoke-interface {v0}, Lcom/android/camera/ISettingsOwner;->getSettings()Lcom/android/camera/Settings;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/Settings;->preferenceChangedEvent:Lcom/android/camera/event/Event;

    iget-object v1, p0, Lcom/android/camera/preferences/PreferenceBinder;->m_PrefValueChangedHandler:Lcom/android/camera/event/EventHandler;

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->removeHandler(Lcom/android/camera/event/EventHandler;)Z

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/preferences/PreferenceBinder;->m_IsBinding:Z

    goto :goto_0
.end method

.method public final updateFromPreference()V
    .locals 4

    .prologue
    .line 158
    .local p0, this:Lcom/android/camera/preferences/PreferenceBinder;,"Lcom/android/camera/preferences/PreferenceBinder<TTValue;>;"
    iget-boolean v1, p0, Lcom/android/camera/preferences/PreferenceBinder;->m_IsBinding:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/preferences/PreferenceBinder;->m_IsSynchronizing:Z

    if-eqz v1, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/preferences/PreferenceBinder;->m_IsSynchronizing:Z

    .line 165
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/preferences/PreferenceBinder;->getPreferenceValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/preferences/PreferenceBinder;->updateFromPreference(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/preferences/PreferenceBinder;->m_IsSynchronizing:Z

    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 169
    .local v0, ex:Ljava/lang/Throwable;
    const-string v1, "PreferenceBinder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFromPreference() - Error retrieving preference \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/preferences/PreferenceBinder;->preferenceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', use default value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 170
    iget-object v1, p0, Lcom/android/camera/preferences/PreferenceBinder;->defaultPreferenceValue:Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/android/camera/preferences/PreferenceBinder;->updateFromPreference(Ljava/lang/Object;)V

    goto :goto_1
.end method