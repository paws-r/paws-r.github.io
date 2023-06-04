<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mturk_send_test_event_notification</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The SendTestEventNotification operation causes Amazon Mechanical Turk to send a notification message as if a HIT event occurred, according to the provided notification specification

### Description

The `send_test_event_notification` operation causes Amazon Mechanical
Turk to send a notification message as if a HIT event occurred,
according to the provided notification specification. This allows you to
test notifications without setting up notifications for a real HIT type
and trying to trigger them using the website. When you call this
operation, the service attempts to send the test notification
immediately.

### Usage

    mturk_send_test_event_notification(Notification, TestEventType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="mturk_send_test_event_notification_:_Notification">Notification</code></td>
<td><p>[required] The notification specification to test. This value is
identical to the value you would provide to the
UpdateNotificationSettings operation when you establish the notification
specification for a HIT type.</p></td>
</tr>
<tr class="even">
<td><code
id="mturk_send_test_event_notification_:_TestEventType">TestEventType</code></td>
<td><p>[required] The event to simulate to test the notification
specification. This event is included in the test message even if the
notification specification does not include the event type. The
notification specification does not filter out the test event.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$send_test_event_notification(
      Notification = list(
        Destination = "string",
        Transport = "Email"|"SQS"|"SNS",
        Version = "string",
        EventTypes = list(
          "AssignmentAccepted"|"AssignmentAbandoned"|"AssignmentReturned"|"AssignmentSubmitted"|"AssignmentRejected"|"AssignmentApproved"|"HITCreated"|"HITExpired"|"HITReviewable"|"HITExtended"|"HITDisposed"|"Ping"
        )
      ),
      TestEventType = "AssignmentAccepted"|"AssignmentAbandoned"|"AssignmentReturned"|"AssignmentSubmitted"|"AssignmentRejected"|"AssignmentApproved"|"HITCreated"|"HITExpired"|"HITReviewable"|"HITExtended"|"HITDisposed"|"Ping"
    )
