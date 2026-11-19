package android.support.v7.view;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.support.annotation.LayoutRes;
import android.support.annotation.RestrictTo;
import android.support.v4.internal.view.SupportMenu;
import android.support.v4.view.ActionProvider;
import android.support.v4.view.MenuItemCompat;
import android.support.v7.appcompat.SupportAppcompatResources;
import android.support.v7.view.menu.MenuItemImpl;
import android.support.v7.view.menu.MenuItemWrapperICS;
import android.support.v7.widget.DrawableUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import com.huawei.hem.CompilerOutline;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class SupportMenuInflater extends MenuInflater {
    public static final Class<?>[] ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE;
    public static final Class<?>[] ACTION_VIEW_CONSTRUCTOR_SIGNATURE;
    public static final String LOG_TAG = "SupportMenuInflater";
    public static final int NO_ID = 0;
    public static final String XML_GROUP = "group";
    public static final String XML_ITEM = "item";
    public static final String XML_MENU = "menu";
    public final Object[] mActionProviderConstructorArguments;
    public final Object[] mActionViewConstructorArguments;
    public Context mContext;
    public Object mRealOwner;

    public static class InflatedOnMenuItemClickListener implements MenuItem.OnMenuItemClickListener {
        public static final Class<?>[] PARAM_TYPES = {MenuItem.class};
        public Method mMethod;
        public Object mRealOwner;

        public InflatedOnMenuItemClickListener(Object obj, String str) {
            this.mRealOwner = obj;
            Class<?> cls = obj.getClass();
            try {
                this.mMethod = cls.getMethod(str, PARAM_TYPES);
            } catch (Exception e) {
                StringBuilder sbM1769n = CompilerOutline.m1769n("Couldn't resolve menu item onClick handler ", str, " in class ");
                sbM1769n.append(cls.getName());
                InflateException inflateException = new InflateException(sbM1769n.toString());
                inflateException.initCause(e);
                throw inflateException;
            }
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
            try {
                if (this.mMethod.getReturnType() == Boolean.TYPE) {
                    return ((Boolean) this.mMethod.invoke(this.mRealOwner, menuItem)).booleanValue();
                }
                this.mMethod.invoke(this.mRealOwner, menuItem);
                return true;
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }
    }

    public class MenuState {
        public static final int defaultGroupId = 0;
        public static final int defaultItemCategory = 0;
        public static final int defaultItemCheckable = 0;
        public static final boolean defaultItemChecked = false;
        public static final boolean defaultItemEnabled = true;
        public static final int defaultItemId = 0;
        public static final int defaultItemOrder = 0;
        public static final boolean defaultItemVisible = true;
        public int groupCategory;
        public int groupCheckable;
        public boolean groupEnabled;
        public int groupId;
        public int groupOrder;
        public boolean groupVisible;
        public ActionProvider itemActionProvider;
        public String itemActionProviderClassName;
        public String itemActionViewClassName;
        public int itemActionViewLayout;
        public boolean itemAdded;
        public int itemAlphabeticModifiers;
        public char itemAlphabeticShortcut;
        public int itemCategoryOrder;
        public int itemCheckable;
        public boolean itemChecked;
        public CharSequence itemContentDescription;
        public boolean itemEnabled;
        public int itemIconResId;
        public ColorStateList itemIconTintList = null;
        public PorterDuff.Mode itemIconTintMode = null;
        public int itemId;
        public String itemListenerMethodName;
        public int itemNumericModifiers;
        public char itemNumericShortcut;
        public int itemShowAsAction;
        public CharSequence itemTitle;
        public CharSequence itemTitleCondensed;
        public CharSequence itemTooltipText;
        public boolean itemVisible;
        public Menu menu;

        public MenuState(Menu menu) {
            this.menu = menu;
            resetGroup();
        }

        private char getShortcut(String str) {
            if (str == null) {
                return (char) 0;
            }
            return str.charAt(0);
        }

        private <T> T newInstance(String str, Class<?>[] clsArr, Object[] objArr) throws NoSuchMethodException, SecurityException {
            try {
                Constructor<?> constructor = SupportMenuInflater.this.mContext.getClassLoader().loadClass(str).getConstructor(clsArr);
                constructor.setAccessible(true);
                return (T) constructor.newInstance(objArr);
            } catch (Exception e) {
                Log.w(SupportMenuInflater.LOG_TAG, "Cannot instantiate class: " + str, e);
                return null;
            }
        }

        private void setItem(MenuItem menuItem) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
            boolean z = false;
            menuItem.setChecked(this.itemChecked).setVisible(this.itemVisible).setEnabled(this.itemEnabled).setCheckable(this.itemCheckable >= 1).setTitleCondensed(this.itemTitleCondensed).setIcon(this.itemIconResId);
            int i = this.itemShowAsAction;
            if (i >= 0) {
                menuItem.setShowAsAction(i);
            }
            if (this.itemListenerMethodName != null) {
                if (SupportMenuInflater.this.mContext.isRestricted()) {
                    throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
                }
                menuItem.setOnMenuItemClickListener(new InflatedOnMenuItemClickListener(SupportMenuInflater.this.getRealOwner(), this.itemListenerMethodName));
            }
            boolean z2 = menuItem instanceof MenuItemImpl;
            if (z2) {
            }
            if (this.itemCheckable >= 2) {
                if (z2) {
                    ((MenuItemImpl) menuItem).setExclusiveCheckable(true);
                } else if (menuItem instanceof MenuItemWrapperICS) {
                    ((MenuItemWrapperICS) menuItem).setExclusiveCheckable(true);
                }
            }
            String str = this.itemActionViewClassName;
            if (str != null) {
                menuItem.setActionView((View) newInstance(str, SupportMenuInflater.ACTION_VIEW_CONSTRUCTOR_SIGNATURE, SupportMenuInflater.this.mActionViewConstructorArguments));
                z = true;
            }
            int i2 = this.itemActionViewLayout;
            if (i2 > 0) {
                if (z) {
                    Log.w(SupportMenuInflater.LOG_TAG, "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
                } else {
                    menuItem.setActionView(i2);
                }
            }
            ActionProvider actionProvider = this.itemActionProvider;
            if (actionProvider != null) {
                MenuItemCompat.setActionProvider(menuItem, actionProvider);
            }
            MenuItemCompat.setContentDescription(menuItem, this.itemContentDescription);
            MenuItemCompat.setTooltipText(menuItem, this.itemTooltipText);
            MenuItemCompat.setAlphabeticShortcut(menuItem, this.itemAlphabeticShortcut, this.itemAlphabeticModifiers);
            MenuItemCompat.setNumericShortcut(menuItem, this.itemNumericShortcut, this.itemNumericModifiers);
            PorterDuff.Mode mode = this.itemIconTintMode;
            if (mode != null) {
                MenuItemCompat.setIconTintMode(menuItem, mode);
            }
            ColorStateList colorStateList = this.itemIconTintList;
            if (colorStateList != null) {
                MenuItemCompat.setIconTintList(menuItem, colorStateList);
            }
        }

        public void addItem() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
            this.itemAdded = true;
            setItem(this.menu.add(this.groupId, this.itemId, this.itemCategoryOrder, this.itemTitle));
        }

        public SubMenu addSubMenuItem() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
            this.itemAdded = true;
            SubMenu subMenuAddSubMenu = this.menu.addSubMenu(this.groupId, this.itemId, this.itemCategoryOrder, this.itemTitle);
            setItem(subMenuAddSubMenu.getItem());
            return subMenuAddSubMenu;
        }

        public boolean hasAddedItem() {
            return this.itemAdded;
        }

        public void readGroup(AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = SupportMenuInflater.this.mContext.obtainStyledAttributes(attributeSet, SupportAppcompatResources.styleable.MenuGroup);
            this.groupId = typedArrayObtainStyledAttributes.getResourceId(SupportAppcompatResources.styleable.MenuGroup_android_id, 0);
            this.groupCategory = typedArrayObtainStyledAttributes.getInt(SupportAppcompatResources.styleable.MenuGroup_android_menuCategory, 0);
            this.groupOrder = typedArrayObtainStyledAttributes.getInt(SupportAppcompatResources.styleable.MenuGroup_android_orderInCategory, 0);
            this.groupCheckable = typedArrayObtainStyledAttributes.getInt(SupportAppcompatResources.styleable.MenuGroup_android_checkableBehavior, 0);
            this.groupVisible = typedArrayObtainStyledAttributes.getBoolean(SupportAppcompatResources.styleable.MenuGroup_android_visible, true);
            this.groupEnabled = typedArrayObtainStyledAttributes.getBoolean(SupportAppcompatResources.styleable.MenuGroup_android_enabled, true);
            typedArrayObtainStyledAttributes.recycle();
        }

        public void readItem(AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = SupportMenuInflater.this.mContext.obtainStyledAttributes(attributeSet, SupportAppcompatResources.styleable.MenuItem);
            this.itemId = typedArrayObtainStyledAttributes.getResourceId(SupportAppcompatResources.styleable.MenuItem_android_id, 0);
            this.itemCategoryOrder = (typedArrayObtainStyledAttributes.getInt(SupportAppcompatResources.styleable.MenuItem_android_menuCategory, this.groupCategory) & (-65536)) | (typedArrayObtainStyledAttributes.getInt(SupportAppcompatResources.styleable.MenuItem_android_orderInCategory, this.groupOrder) & 65535);
            this.itemTitle = typedArrayObtainStyledAttributes.getText(SupportAppcompatResources.styleable.MenuItem_android_title);
            this.itemTitleCondensed = typedArrayObtainStyledAttributes.getText(SupportAppcompatResources.styleable.MenuItem_android_titleCondensed);
            this.itemIconResId = typedArrayObtainStyledAttributes.getResourceId(SupportAppcompatResources.styleable.MenuItem_android_icon, 0);
            this.itemAlphabeticShortcut = getShortcut(typedArrayObtainStyledAttributes.getString(SupportAppcompatResources.styleable.MenuItem_android_alphabeticShortcut));
            this.itemAlphabeticModifiers = typedArrayObtainStyledAttributes.getInt(SupportAppcompatResources.styleable.MenuItem_alphabeticModifiers, 4096);
            this.itemNumericShortcut = getShortcut(typedArrayObtainStyledAttributes.getString(SupportAppcompatResources.styleable.MenuItem_android_numericShortcut));
            this.itemNumericModifiers = typedArrayObtainStyledAttributes.getInt(SupportAppcompatResources.styleable.MenuItem_numericModifiers, 4096);
            if (typedArrayObtainStyledAttributes.hasValue(SupportAppcompatResources.styleable.MenuItem_android_checkable)) {
                this.itemCheckable = typedArrayObtainStyledAttributes.getBoolean(SupportAppcompatResources.styleable.MenuItem_android_checkable, false) ? 1 : 0;
            } else {
                this.itemCheckable = this.groupCheckable;
            }
            this.itemChecked = typedArrayObtainStyledAttributes.getBoolean(SupportAppcompatResources.styleable.MenuItem_android_checked, false);
            this.itemVisible = typedArrayObtainStyledAttributes.getBoolean(SupportAppcompatResources.styleable.MenuItem_android_visible, this.groupVisible);
            this.itemEnabled = typedArrayObtainStyledAttributes.getBoolean(SupportAppcompatResources.styleable.MenuItem_android_enabled, this.groupEnabled);
            this.itemShowAsAction = typedArrayObtainStyledAttributes.getInt(SupportAppcompatResources.styleable.MenuItem_showAsAction, -1);
            this.itemListenerMethodName = typedArrayObtainStyledAttributes.getString(SupportAppcompatResources.styleable.MenuItem_android_onClick);
            this.itemActionViewLayout = typedArrayObtainStyledAttributes.getResourceId(SupportAppcompatResources.styleable.MenuItem_actionLayout, 0);
            this.itemActionViewClassName = typedArrayObtainStyledAttributes.getString(SupportAppcompatResources.styleable.MenuItem_actionViewClass);
            String string = typedArrayObtainStyledAttributes.getString(SupportAppcompatResources.styleable.MenuItem_actionProviderClass);
            this.itemActionProviderClassName = string;
            boolean z = string != null;
            if (z && this.itemActionViewLayout == 0 && this.itemActionViewClassName == null) {
                this.itemActionProvider = (ActionProvider) newInstance(this.itemActionProviderClassName, SupportMenuInflater.ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE, SupportMenuInflater.this.mActionProviderConstructorArguments);
            } else {
                if (z) {
                    Log.w(SupportMenuInflater.LOG_TAG, "Ignoring attribute 'actionProviderClass'. Action view already specified.");
                }
                this.itemActionProvider = null;
            }
            this.itemContentDescription = typedArrayObtainStyledAttributes.getText(SupportAppcompatResources.styleable.MenuItem_contentDescription);
            this.itemTooltipText = typedArrayObtainStyledAttributes.getText(SupportAppcompatResources.styleable.MenuItem_tooltipText);
            if (typedArrayObtainStyledAttributes.hasValue(SupportAppcompatResources.styleable.MenuItem_iconTintMode)) {
                this.itemIconTintMode = DrawableUtils.parseTintMode(typedArrayObtainStyledAttributes.getInt(SupportAppcompatResources.styleable.MenuItem_iconTintMode, -1), this.itemIconTintMode);
            } else {
                this.itemIconTintMode = null;
            }
            if (typedArrayObtainStyledAttributes.hasValue(SupportAppcompatResources.styleable.MenuItem_iconTint)) {
                this.itemIconTintList = typedArrayObtainStyledAttributes.getColorStateList(SupportAppcompatResources.styleable.MenuItem_iconTint);
            } else {
                this.itemIconTintList = null;
            }
            typedArrayObtainStyledAttributes.recycle();
            this.itemAdded = false;
        }

        public void resetGroup() {
            this.groupId = 0;
            this.groupCategory = 0;
            this.groupOrder = 0;
            this.groupCheckable = 0;
            this.groupVisible = true;
            this.groupEnabled = true;
        }
    }

    static {
        Class<?>[] clsArr = {Context.class};
        ACTION_VIEW_CONSTRUCTOR_SIGNATURE = clsArr;
        ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE = clsArr;
    }

    public SupportMenuInflater(Context context) {
        super(context);
        this.mContext = context;
        Object[] objArr = {context};
        this.mActionViewConstructorArguments = objArr;
        this.mActionProviderConstructorArguments = objArr;
    }

    private Object findRealOwner(Object obj) {
        return (!(obj instanceof Activity) && (obj instanceof ContextWrapper)) ? findRealOwner(((ContextWrapper) obj).getBaseContext()) : obj;
    }

    private void parseMenu(XmlPullParser xmlPullParser, AttributeSet attributeSet, Menu menu) throws XmlPullParserException, IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        MenuState menuState = new MenuState(menu);
        int eventType = xmlPullParser.getEventType();
        while (true) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                if (!name.equals(XML_MENU)) {
                    throw new RuntimeException(CompilerOutline.m1760e("Expecting menu, got ", name));
                }
                eventType = xmlPullParser.next();
            } else {
                eventType = xmlPullParser.next();
                if (eventType == 1) {
                    break;
                }
            }
        }
        String str = null;
        boolean z = false;
        boolean z2 = false;
        while (!z) {
            if (eventType == 1) {
                throw new RuntimeException("Unexpected end of document");
            }
            if (eventType != 2) {
                if (eventType == 3) {
                    String name2 = xmlPullParser.getName();
                    if (z2 && name2.equals(str)) {
                        str = null;
                        z2 = false;
                    } else if (name2.equals("group")) {
                        menuState.resetGroup();
                    } else if (name2.equals("item")) {
                        if (!menuState.hasAddedItem()) {
                            ActionProvider actionProvider = menuState.itemActionProvider;
                            if (actionProvider == null || !actionProvider.hasSubMenu()) {
                                menuState.addItem();
                            } else {
                                menuState.addSubMenuItem();
                            }
                        }
                    } else if (name2.equals(XML_MENU)) {
                        z = true;
                    }
                }
            } else if (!z2) {
                String name3 = xmlPullParser.getName();
                if (name3.equals("group")) {
                    menuState.readGroup(attributeSet);
                } else if (name3.equals("item")) {
                    menuState.readItem(attributeSet);
                } else if (name3.equals(XML_MENU)) {
                    parseMenu(xmlPullParser, attributeSet, menuState.addSubMenuItem());
                } else {
                    str = name3;
                    z2 = true;
                }
            }
            eventType = xmlPullParser.next();
        }
    }

    public Object getRealOwner() {
        if (this.mRealOwner == null) {
            this.mRealOwner = findRealOwner(this.mContext);
        }
        return this.mRealOwner;
    }

    @Override // android.view.MenuInflater
    public void inflate(@LayoutRes int i, Menu menu) {
        if (!(menu instanceof SupportMenu)) {
            super.inflate(i, menu);
            return;
        }
        XmlResourceParser layout = null;
        try {
            try {
                try {
                    layout = this.mContext.getResources().getLayout(i);
                    parseMenu(layout, Xml.asAttributeSet(layout), menu);
                } catch (XmlPullParserException e) {
                    throw new InflateException("Error inflating menu XML", e);
                }
            } catch (IOException e2) {
                throw new InflateException("Error inflating menu XML", e2);
            }
        } finally {
            if (layout != null) {
                layout.close();
            }
        }
    }
}
