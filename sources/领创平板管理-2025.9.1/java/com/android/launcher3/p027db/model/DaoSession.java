package com.android.launcher3.p027db.model;

import java.util.Map;
import org.greenrobot.greendao.AbstractDao;
import org.greenrobot.greendao.AbstractDaoSession;
import org.greenrobot.greendao.database.Database;
import org.greenrobot.greendao.identityscope.IdentityScopeType;
import org.greenrobot.greendao.internal.DaoConfig;

/* loaded from: classes.dex */
public class DaoSession extends AbstractDaoSession {
    public final AppTimeLimitInfoDao appTimeLimitInfoDao;
    public final DaoConfig appTimeLimitInfoDaoConfig;
    public final GesturePasswordDao gesturePasswordDao;
    public final DaoConfig gesturePasswordDaoConfig;
    public final IllegalDao illegalDao;
    public final DaoConfig illegalDaoConfig;
    public final IllegalEventDao illegalEventDao;
    public final DaoConfig illegalEventDaoConfig;
    public final ItemAppDao itemAppDao;
    public final DaoConfig itemAppDaoConfig;
    public final LocationInfoDao locationInfoDao;
    public final DaoConfig locationInfoDaoConfig;
    public final ManageDeviceDao manageDeviceDao;
    public final DaoConfig manageDeviceDaoConfig;
    public final PushMsgDao pushMsgDao;
    public final DaoConfig pushMsgDaoConfig;
    public final ScreenPartSettingsDao screenPartSettingsDao;
    public final DaoConfig screenPartSettingsDaoConfig;
    public final UserEventDao userEventDao;
    public final DaoConfig userEventDaoConfig;
    public final WeekTacticsDao weekTacticsDao;
    public final DaoConfig weekTacticsDaoConfig;

    public DaoSession(Database database, IdentityScopeType identityScopeType, Map<Class<? extends AbstractDao<?, ?>>, DaoConfig> map) {
        super(database);
        DaoConfig daoConfigClone = map.get(AppTimeLimitInfoDao.class).clone();
        this.appTimeLimitInfoDaoConfig = daoConfigClone;
        daoConfigClone.initIdentityScope(identityScopeType);
        DaoConfig daoConfigClone2 = map.get(GesturePasswordDao.class).clone();
        this.gesturePasswordDaoConfig = daoConfigClone2;
        daoConfigClone2.initIdentityScope(identityScopeType);
        DaoConfig daoConfigClone3 = map.get(IllegalDao.class).clone();
        this.illegalDaoConfig = daoConfigClone3;
        daoConfigClone3.initIdentityScope(identityScopeType);
        DaoConfig daoConfigClone4 = map.get(IllegalEventDao.class).clone();
        this.illegalEventDaoConfig = daoConfigClone4;
        daoConfigClone4.initIdentityScope(identityScopeType);
        DaoConfig daoConfigClone5 = map.get(ItemAppDao.class).clone();
        this.itemAppDaoConfig = daoConfigClone5;
        daoConfigClone5.initIdentityScope(identityScopeType);
        DaoConfig daoConfigClone6 = map.get(LocationInfoDao.class).clone();
        this.locationInfoDaoConfig = daoConfigClone6;
        daoConfigClone6.initIdentityScope(identityScopeType);
        DaoConfig daoConfigClone7 = map.get(ManageDeviceDao.class).clone();
        this.manageDeviceDaoConfig = daoConfigClone7;
        daoConfigClone7.initIdentityScope(identityScopeType);
        DaoConfig daoConfigClone8 = map.get(PushMsgDao.class).clone();
        this.pushMsgDaoConfig = daoConfigClone8;
        daoConfigClone8.initIdentityScope(identityScopeType);
        DaoConfig daoConfigClone9 = map.get(ScreenPartSettingsDao.class).clone();
        this.screenPartSettingsDaoConfig = daoConfigClone9;
        daoConfigClone9.initIdentityScope(identityScopeType);
        DaoConfig daoConfigClone10 = map.get(UserEventDao.class).clone();
        this.userEventDaoConfig = daoConfigClone10;
        daoConfigClone10.initIdentityScope(identityScopeType);
        DaoConfig daoConfigClone11 = map.get(WeekTacticsDao.class).clone();
        this.weekTacticsDaoConfig = daoConfigClone11;
        daoConfigClone11.initIdentityScope(identityScopeType);
        this.appTimeLimitInfoDao = new AppTimeLimitInfoDao(this.appTimeLimitInfoDaoConfig, this);
        this.gesturePasswordDao = new GesturePasswordDao(this.gesturePasswordDaoConfig, this);
        this.illegalDao = new IllegalDao(this.illegalDaoConfig, this);
        this.illegalEventDao = new IllegalEventDao(this.illegalEventDaoConfig, this);
        this.itemAppDao = new ItemAppDao(this.itemAppDaoConfig, this);
        this.locationInfoDao = new LocationInfoDao(this.locationInfoDaoConfig, this);
        this.manageDeviceDao = new ManageDeviceDao(this.manageDeviceDaoConfig, this);
        this.pushMsgDao = new PushMsgDao(this.pushMsgDaoConfig, this);
        this.screenPartSettingsDao = new ScreenPartSettingsDao(this.screenPartSettingsDaoConfig, this);
        this.userEventDao = new UserEventDao(this.userEventDaoConfig, this);
        this.weekTacticsDao = new WeekTacticsDao(this.weekTacticsDaoConfig, this);
        registerDao(AppTimeLimitInfo.class, this.appTimeLimitInfoDao);
        registerDao(GesturePassword.class, this.gesturePasswordDao);
        registerDao(Illegal.class, this.illegalDao);
        registerDao(IllegalEvent.class, this.illegalEventDao);
        registerDao(ItemApp.class, this.itemAppDao);
        registerDao(LocationInfo.class, this.locationInfoDao);
        registerDao(ManageDevice.class, this.manageDeviceDao);
        registerDao(PushMsg.class, this.pushMsgDao);
        registerDao(ScreenPartSettings.class, this.screenPartSettingsDao);
        registerDao(UserEvent.class, this.userEventDao);
        registerDao(WeekTactics.class, this.weekTacticsDao);
    }

    public void clear() {
        this.appTimeLimitInfoDaoConfig.clearIdentityScope();
        this.gesturePasswordDaoConfig.clearIdentityScope();
        this.illegalDaoConfig.clearIdentityScope();
        this.illegalEventDaoConfig.clearIdentityScope();
        this.itemAppDaoConfig.clearIdentityScope();
        this.locationInfoDaoConfig.clearIdentityScope();
        this.manageDeviceDaoConfig.clearIdentityScope();
        this.pushMsgDaoConfig.clearIdentityScope();
        this.screenPartSettingsDaoConfig.clearIdentityScope();
        this.userEventDaoConfig.clearIdentityScope();
        this.weekTacticsDaoConfig.clearIdentityScope();
    }

    public AppTimeLimitInfoDao getAppTimeLimitInfoDao() {
        return this.appTimeLimitInfoDao;
    }

    public GesturePasswordDao getGesturePasswordDao() {
        return this.gesturePasswordDao;
    }

    public IllegalDao getIllegalDao() {
        return this.illegalDao;
    }

    public IllegalEventDao getIllegalEventDao() {
        return this.illegalEventDao;
    }

    public ItemAppDao getItemAppDao() {
        return this.itemAppDao;
    }

    public LocationInfoDao getLocationInfoDao() {
        return this.locationInfoDao;
    }

    public ManageDeviceDao getManageDeviceDao() {
        return this.manageDeviceDao;
    }

    public PushMsgDao getPushMsgDao() {
        return this.pushMsgDao;
    }

    public ScreenPartSettingsDao getScreenPartSettingsDao() {
        return this.screenPartSettingsDao;
    }

    public UserEventDao getUserEventDao() {
        return this.userEventDao;
    }

    public WeekTacticsDao getWeekTacticsDao() {
        return this.weekTacticsDao;
    }
}
