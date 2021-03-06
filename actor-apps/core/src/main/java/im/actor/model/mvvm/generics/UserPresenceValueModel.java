/*
 * Copyright (C) 2015 Actor LLC. <https://actor.im>
 */

package im.actor.model.mvvm.generics;

import im.actor.model.mvvm.ValueModel;
import im.actor.model.viewmodel.UserPresence;

public class UserPresenceValueModel extends ValueModel<UserPresence> {
    /**
     * Create ValueModel
     *
     * @param name         name of variable
     * @param defaultValue default value
     */
    public UserPresenceValueModel(String name, UserPresence defaultValue) {
        super(name, defaultValue);
    }

    @Override
    public UserPresence get() {
        return super.get();
    }
}
