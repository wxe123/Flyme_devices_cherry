.class public Landroid/content/res/ThemeConfig$Builder;
.super Ljava/lang/Object;
.source "ThemeConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/ThemeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mFonts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIcons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOverlays:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 371
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/ThemeConfig$Builder;->mOverlays:Ljava/util/Map;

    .line 372
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/ThemeConfig$Builder;->mIcons:Ljava/util/Map;

    .line 373
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/ThemeConfig$Builder;->mFonts:Ljava/util/Map;

    .line 375
    return-void
.end method

.method public constructor <init>(Landroid/content/res/ThemeConfig;)V
    .locals 6
    .param p1, "theme"    # Landroid/content/res/ThemeConfig;

    .prologue
    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 371
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, Landroid/content/res/ThemeConfig$Builder;->mOverlays:Ljava/util/Map;

    .line 372
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, Landroid/content/res/ThemeConfig$Builder;->mIcons:Ljava/util/Map;

    .line 373
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, Landroid/content/res/ThemeConfig$Builder;->mFonts:Ljava/util/Map;

    .line 378
    iget-object v4, p1, Landroid/content/res/ThemeConfig;->mThemes:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 379
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/res/ThemeConfig$AppTheme;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 380
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ThemeConfig$AppTheme;

    .line 381
    .local v0, "appTheme":Landroid/content/res/ThemeConfig$AppTheme;
    iget-object v4, p0, Landroid/content/res/ThemeConfig$Builder;->mFonts:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/content/res/ThemeConfig$AppTheme;->getFontPackPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    iget-object v4, p0, Landroid/content/res/ThemeConfig$Builder;->mIcons:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/content/res/ThemeConfig$AppTheme;->getIconPackPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    iget-object v4, p0, Landroid/content/res/ThemeConfig$Builder;->mOverlays:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/content/res/ThemeConfig$AppTheme;->getOverlayPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 377
    .end local v0    # "appTheme":Landroid/content/res/ThemeConfig$AppTheme;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/res/ThemeConfig$AppTheme;>;"
    .end local v3    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Landroid/content/res/ThemeConfig;
    .locals 10

    .prologue
    .line 446
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 447
    .local v2, "appPkgSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v9, p0, Landroid/content/res/ThemeConfig$Builder;->mOverlays:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 448
    iget-object v9, p0, Landroid/content/res/ThemeConfig$Builder;->mIcons:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 449
    iget-object v9, p0, Landroid/content/res/ThemeConfig$Builder;->mFonts:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 451
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 452
    .local v4, "appThemes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/res/ThemeConfig$AppTheme;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "appPkgName$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 453
    .local v0, "appPkgName":Ljava/lang/String;
    iget-object v9, p0, Landroid/content/res/ThemeConfig$Builder;->mIcons:Ljava/util/Map;

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 454
    .local v6, "icon":Ljava/lang/String;
    iget-object v9, p0, Landroid/content/res/ThemeConfig$Builder;->mOverlays:Ljava/util/Map;

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 455
    .local v7, "overlay":Ljava/lang/String;
    iget-object v9, p0, Landroid/content/res/ThemeConfig$Builder;->mFonts:Ljava/util/Map;

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 458
    .local v5, "font":Ljava/lang/String;
    if-nez v7, :cond_1

    if-nez v6, :cond_1

    if-nez v5, :cond_1

    .line 459
    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 460
    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 463
    :cond_1
    new-instance v3, Landroid/content/res/ThemeConfig$AppTheme;

    invoke-direct {v3, v7, v6, v5}, Landroid/content/res/ThemeConfig$AppTheme;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    .local v3, "appTheme":Landroid/content/res/ThemeConfig$AppTheme;
    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 467
    .end local v0    # "appPkgName":Ljava/lang/String;
    .end local v3    # "appTheme":Landroid/content/res/ThemeConfig$AppTheme;
    .end local v5    # "font":Ljava/lang/String;
    .end local v6    # "icon":Ljava/lang/String;
    .end local v7    # "overlay":Ljava/lang/String;
    :cond_2
    new-instance v8, Landroid/content/res/ThemeConfig;

    invoke-direct {v8, v4}, Landroid/content/res/ThemeConfig;-><init>(Ljava/util/Map;)V

    .line 468
    .local v8, "themeConfig":Landroid/content/res/ThemeConfig;
    return-object v8
.end method

.method public defaultFont(Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;
    .locals 2
    .param p1, "themePkgName"    # Ljava/lang/String;

    .prologue
    .line 401
    if-eqz p1, :cond_0

    .line 402
    iget-object v0, p0, Landroid/content/res/ThemeConfig$Builder;->mFonts:Ljava/util/Map;

    const-string/jumbo v1, "default"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    :goto_0
    return-object p0

    .line 404
    :cond_0
    iget-object v0, p0, Landroid/content/res/ThemeConfig$Builder;->mFonts:Ljava/util/Map;

    const-string/jumbo v1, "default"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public defaultIcon(Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;
    .locals 2
    .param p1, "themePkgName"    # Ljava/lang/String;

    .prologue
    .line 410
    if-eqz p1, :cond_0

    .line 411
    iget-object v0, p0, Landroid/content/res/ThemeConfig$Builder;->mIcons:Ljava/util/Map;

    const-string/jumbo v1, "default"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    :goto_0
    return-object p0

    .line 413
    :cond_0
    iget-object v0, p0, Landroid/content/res/ThemeConfig$Builder;->mIcons:Ljava/util/Map;

    const-string/jumbo v1, "default"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public defaultOverlay(Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;
    .locals 2
    .param p1, "themePkgName"    # Ljava/lang/String;

    .prologue
    .line 392
    if-eqz p1, :cond_0

    .line 393
    iget-object v0, p0, Landroid/content/res/ThemeConfig$Builder;->mOverlays:Ljava/util/Map;

    const-string/jumbo v1, "default"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    :goto_0
    return-object p0

    .line 395
    :cond_0
    iget-object v0, p0, Landroid/content/res/ThemeConfig$Builder;->mOverlays:Ljava/util/Map;

    const-string/jumbo v1, "default"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public font(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;
    .locals 1
    .param p1, "appPkgName"    # Ljava/lang/String;
    .param p2, "themePkgName"    # Ljava/lang/String;

    .prologue
    .line 437
    if-eqz p2, :cond_0

    .line 438
    iget-object v0, p0, Landroid/content/res/ThemeConfig$Builder;->mFonts:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    :goto_0
    return-object p0

    .line 440
    :cond_0
    iget-object v0, p0, Landroid/content/res/ThemeConfig$Builder;->mFonts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public icon(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;
    .locals 1
    .param p1, "appPkgName"    # Ljava/lang/String;
    .param p2, "themePkgName"    # Ljava/lang/String;

    .prologue
    .line 419
    if-eqz p2, :cond_0

    .line 420
    iget-object v0, p0, Landroid/content/res/ThemeConfig$Builder;->mIcons:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    :goto_0
    return-object p0

    .line 422
    :cond_0
    iget-object v0, p0, Landroid/content/res/ThemeConfig$Builder;->mIcons:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public overlay(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;
    .locals 1
    .param p1, "appPkgName"    # Ljava/lang/String;
    .param p2, "themePkgName"    # Ljava/lang/String;

    .prologue
    .line 428
    if-eqz p2, :cond_0

    .line 429
    iget-object v0, p0, Landroid/content/res/ThemeConfig$Builder;->mOverlays:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    :goto_0
    return-object p0

    .line 431
    :cond_0
    iget-object v0, p0, Landroid/content/res/ThemeConfig$Builder;->mOverlays:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
