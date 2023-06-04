<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codestarnotifications_update_notification_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a notification rule for a resource

### Description

Updates a notification rule for a resource. You can change the events
that trigger the notification rule, the status of the rule, and the
targets that receive the notifications.

To add or remove tags for a notification rule, you must use
`tag_resource` and `untag_resource`.

### Usage

    codestarnotifications_update_notification_rule(Arn, Name, Status,
      EventTypeIds, Targets, DetailType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codestarnotifications_update_notification_rule_:_Arn">Arn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the notification
rule.</p></td>
</tr>
<tr class="even">
<td><code
id="codestarnotifications_update_notification_rule_:_Name">Name</code></td>
<td><p>The name of the notification rule.</p></td>
</tr>
<tr class="odd">
<td><code
id="codestarnotifications_update_notification_rule_:_Status">Status</code></td>
<td><p>The status of the notification rule. Valid statuses include
enabled (sending notifications) or disabled (not sending
notifications).</p></td>
</tr>
<tr class="even">
<td><code
id="codestarnotifications_update_notification_rule_:_EventTypeIds">EventTypeIds</code></td>
<td><p>A list of event types associated with this notification rule. For
a complete list of event types and IDs, see <a
href="https://docs.aws.amazon.com/dtconsole/latest/userguide/concepts.html#concepts-api">Notification
concepts</a> in the <em>Developer Tools Console User
Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="codestarnotifications_update_notification_rule_:_Targets">Targets</code></td>
<td><p>The address and type of the targets to receive notifications from
this notification rule.</p></td>
</tr>
<tr class="even">
<td><code
id="codestarnotifications_update_notification_rule_:_DetailType">DetailType</code></td>
<td><p>The level of detail to include in the notifications for this
resource. BASIC will include only the contents of the event as it would
appear in Amazon CloudWatch. FULL will include any supplemental
information provided by AWS CodeStar Notifications and/or the service
for the resource for which the notification is created.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_notification_rule(
      Arn = "string",
      Name = "string",
      Status = "ENABLED"|"DISABLED",
      EventTypeIds = list(
        "string"
      ),
      Targets = list(
        list(
          TargetType = "string",
          TargetAddress = "string"
        )
      ),
      DetailType = "BASIC"|"FULL"
    )
