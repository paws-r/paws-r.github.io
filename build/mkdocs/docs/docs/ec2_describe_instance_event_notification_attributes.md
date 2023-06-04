<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_instance_event_notification_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the tag keys that are registered to appear in scheduled event notifications for resources in the current Region

### Description

Describes the tag keys that are registered to appear in scheduled event
notifications for resources in the current Region.

### Usage

    ec2_describe_instance_event_notification_attributes(DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_instance_event_notification_attributes_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
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

    svc$describe_instance_event_notification_attributes(
      DryRun = TRUE|FALSE
    )
