#include "ChannelParam.h"
#include "main.h"

// ----------------------------------------------------------------
// set analog potentiometer value and apply some smoothing
void ChannelParam::ad(int ad_val)
{
    pot_value = (3 * pot_value + ad_val) / 4;
}

// ----------------------------------------------------------------
// return out value 
int ChannelParam::get(void)
{
    //return out_enabled ? out_value : 0;
    return out_value;
}

// ----------------------------------------------------------------
// Clear record buffer
void ChannelParam::clear(void)
{
    for (int i = 0; i < MAX_REC_SLOTS; i++)
    {
        rec_buffer[i] = 0;
    }
}

// ----------------------------------------------------------------
// Remember pot position to see if it has changed
void ChannelParam::mark(void)
{
    rec_start_value = my_value;
    value_changed = false;
}

// ----------------------------------------------------------------
// Record value
void ChannelParam::record(int rec_idx)
{
    rec_buffer[rec_idx] = my_value;
    if (abs(rec_start_value - my_value) > REC_THRESH)
    {
        value_changed = true;
    }
}

// ----------------------------------------------------------------
// Update outgoing value dependiung on state
void ChannelParam::update(char state, int playback_idx)
{

    if (pot_connected)
    {
        my_value = pot_value;
    };
    out_value = my_value;

    switch (state)
    {
    case LOOP_STATE_PLAY: // play

        if (value_changed)
        {
            out_value = rec_buffer[playback_idx];
        }
        break;

    case LOOP_STATE_DUB:

        // check if pot moved from initial state
        if (abs(rec_start_value - my_value) > REC_THRESH)
        {
            value_changed = true;
            rec_buffer[playback_idx] = my_value;
        }

        if (value_changed)
        {
            out_value = rec_buffer[playback_idx];
        }
    }
}