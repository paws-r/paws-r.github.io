<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_register_instance_event_notification_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Registers a set of tag keys to include in scheduled event notifications for your resources

### Description

Registers a set of tag keys to include in scheduled event notifications
for your resources.

To remove tags, use `deregister_instance_event_notification_attributes`.

### Usage

    ec2_register_instance_event_notification_attributes(DryRun,
      InstanceTagAttribute)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_register_instance_event_notification_attributes_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_register_instance_event_notification_attributes_:_InstanceTagAttribute">InstanceTagAttribute</code></td>
<td><p>Information about the tag keys to register.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      InstanceTagAttribute = list(
        InstanceTagKeys = list(
          "string"
        ),
        IncludeAllTagsOfInstance = TRUE|FALSE
      )
    )

### Request syntax

    svc$register_instance_event_notification_attributes(
      DryRun = TRUE|FALSE,
      InstanceTagAttribute = list(
        IncludeAllTagsOfInstance = TRUE|FALSE,
        InstanceTagKeys = list(
          "string"
        )
      )
    )
