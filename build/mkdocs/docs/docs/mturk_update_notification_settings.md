<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mturk_update_notification_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The UpdateNotificationSettings operation creates, updates, disables or re-enables notifications for a HIT type

### Description

The `update_notification_settings` operation creates, updates, disables
or re-enables notifications for a HIT type. If you call the
UpdateNotificationSettings operation for a HIT type that already has a
notification specification, the operation replaces the old specification
with a new one. You can call the UpdateNotificationSettings operation to
enable or disable notifications for the HIT type, without having to
modify the notification specification itself by providing updates to the
Active status without specifying a new notification specification. To
change the Active status of a HIT type's notifications, the HIT type
must already have a notification specification, or one must be provided
in the same call to `update_notification_settings`.

### Usage

    mturk_update_notification_settings(HITTypeId, Notification, Active)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="mturk_update_notification_settings_:_HITTypeId">HITTypeId</code></td>
<td><p>[required] The ID of the HIT type whose notification
specification is being updated.</p></td>
</tr>
<tr class="even">
<td><code
id="mturk_update_notification_settings_:_Notification">Notification</code></td>
<td><p>The notification specification for the HIT type.</p></td>
</tr>
<tr class="odd">
<td><code
id="mturk_update_notification_settings_:_Active">Active</code></td>
<td><p>Specifies whether notifications are sent for HITs of this HIT
type, according to the notification specification. You must specify
either the Notification parameter or the Active parameter for the call
to UpdateNotificationSettings to succeed.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_notification_settings(
      HITTypeId = "string",
      Notification = list(
        Destination = "string",
        Transport = "Email"|"SQS"|"SNS",
        Version = "string",
        EventTypes = list(
          "AssignmentAccepted"|"AssignmentAbandoned"|"AssignmentReturned"|"AssignmentSubmitted"|"AssignmentRejected"|"AssignmentApproved"|"HITCreated"|"HITExpired"|"HITReviewable"|"HITExtended"|"HITDisposed"|"Ping"
        )
      ),
      Active = TRUE|FALSE
    )
