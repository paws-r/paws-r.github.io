<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointsmsvoicev2_update_phone_number</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the configuration of an existing origination phone number

### Description

Updates the configuration of an existing origination phone number. You
can update the opt-out list, enable or disable two-way messaging, change
the TwoWayChannelArn, enable or disable self-managed opt-outs, and
enable or disable deletion protection.

If the origination phone number is associated with a pool, an Error is
returned.

### Usage

    pinpointsmsvoicev2_update_phone_number(PhoneNumberId, TwoWayEnabled,
      TwoWayChannelArn, SelfManagedOptOutsEnabled, OptOutListName,
      DeletionProtectionEnabled)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_update_phone_number_:_PhoneNumberId">PhoneNumberId</code></td>
<td><p>[required] The unique identifier of the phone number. Valid
values for this field can be either the PhoneNumberId or
PhoneNumberArn.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_update_phone_number_:_TwoWayEnabled">TwoWayEnabled</code></td>
<td><p>By default this is set to false. When set to true you can receive
incoming text messages from your end recipients.</p></td>
</tr>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_update_phone_number_:_TwoWayChannelArn">TwoWayChannelArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the two way channel.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_update_phone_number_:_SelfManagedOptOutsEnabled">SelfManagedOptOutsEnabled</code></td>
<td><p>By default this is set to false. When an end recipient sends a
message that begins with HELP or STOP to one of your dedicated numbers,
Amazon Pinpoint automatically replies with a customizable message and
adds the end recipient to the OptOutList. When set to true you're
responsible for responding to HELP and STOP requests. You're also
responsible for tracking and honoring opt-out requests.</p></td>
</tr>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_update_phone_number_:_OptOutListName">OptOutListName</code></td>
<td><p>The OptOutList to add the phone number to. Valid values for this
field can be either the OutOutListName or OutOutListArn.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_update_phone_number_:_DeletionProtectionEnabled">DeletionProtectionEnabled</code></td>
<td><p>By default this is set to false. When set to true the phone
number can't be deleted.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PhoneNumberArn = "string",
      PhoneNumberId = "string",
      PhoneNumber = "string",
      Status = "PENDING"|"ACTIVE"|"ASSOCIATING"|"DISASSOCIATING"|"DELETED",
      IsoCountryCode = "string",
      MessageType = "TRANSACTIONAL"|"PROMOTIONAL",
      NumberCapabilities = list(
        "SMS"|"VOICE"
      ),
      NumberType = "SHORT_CODE"|"LONG_CODE"|"TOLL_FREE"|"TEN_DLC",
      MonthlyLeasingPrice = "string",
      TwoWayEnabled = TRUE|FALSE,
      TwoWayChannelArn = "string",
      SelfManagedOptOutsEnabled = TRUE|FALSE,
      OptOutListName = "string",
      DeletionProtectionEnabled = TRUE|FALSE,
      CreatedTimestamp = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$update_phone_number(
      PhoneNumberId = "string",
      TwoWayEnabled = TRUE|FALSE,
      TwoWayChannelArn = "string",
      SelfManagedOptOutsEnabled = TRUE|FALSE,
      OptOutListName = "string",
      DeletionProtectionEnabled = TRUE|FALSE
    )
