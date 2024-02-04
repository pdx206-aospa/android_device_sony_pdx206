/*
 * Copyright (C) 2022 The LineageOS Project
 * SPDX-License-Identifier: Apache-2.0
 */

package org.lineageos.settings.device

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.util.Log
import androidx.preference.PreferenceManager
import org.lineageos.settings.device.display.CreatorModeUtils
import org.lineageos.settings.device.dolby.tile.DolbyCore;
import org.lineageos.settings.device.dolby.tile.DolbyFragment.Companion.PREF_DOLBY_ENABLE
import org.lineageos.settings.device.dolby.tile.DolbyFragment.Companion.PREF_DOLBY_MODES

class BootCompletedReceiver : BroadcastReceiver() {
    override fun onReceive(context: Context, intent: Intent) {
        Log.d(TAG, "Starting")
        CreatorModeUtils(context).initialize()

        val sharedPrefs = PreferenceManager.getDefaultSharedPreferences(context)
        for ((key, value) in PREF_DOLBY_MODES) {
            if (sharedPrefs.getBoolean(key, false)) {
                DolbyCore.setProfile(value)
                break
            }
        }
        DolbyCore.setEnabled(sharedPrefs.getBoolean(PREF_DOLBY_ENABLE, false))
    }

    companion object {
        private const val TAG = "XperiaParts"
    }
}
