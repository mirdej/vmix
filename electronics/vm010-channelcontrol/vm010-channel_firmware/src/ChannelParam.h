
#ifndef __CHANNEL_PARAM_INCLUDED__
#define __CHANNEL_PARAM_INCLUDED__
#include "Arduino.h"

const int MAX_REC_SLOTS = 500;
const int REC_THRESH = 4;

struct ChannelParam
{
public:
    void update(char state, int playback_idx);
    void ad(int ad_val);
    void set(int val);
    void clear();
    int get();
    void mark();

    void record(int rec_idx);

    bool value_changed;
    bool recording_enabled = false;
    bool out_enabled = true;

private:
    int pot_value;             // smoothed actual value of physical ptotentiometer
    bool pot_connected = true; // does pot control my_value?
    int my_value;              // current value, either set by pot or externally via MIDI or presets
    int out_value;             // outgoing value, either my_value or playback of recorded values in buffer
    int ext_value;

    int rec_buffer[MAX_REC_SLOTS];
    int rec_start_value;

};

#endif