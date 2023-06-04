<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>resourcegroups_update_account_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Turns on or turns off optional features in Resource Groups

### Description

Turns on or turns off optional features in Resource Groups.

The preceding example shows that the request to turn on group lifecycle
events is `IN_PROGRESS`. You can call the `get_account_settings`
operation to check for completion by looking for
`GroupLifecycleEventsStatus` to change to `ACTIVE`.

### Usage

    resourcegroups_update_account_settings(
      GroupLifecycleEventsDesiredStatus)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="resourcegroups_update_account_settings_:_GroupLifecycleEventsDesiredStatus">GroupLifecycleEventsDesiredStatus</code></td>
<td><p>Specifies whether you want to turn <a
href="https://docs.aws.amazon.com/ARG/latest/userguide/monitor-groups.html">group
lifecycle events</a> on or off.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AccountSettings = list(
        GroupLifecycleEventsDesiredStatus = "ACTIVE"|"INACTIVE",
        GroupLifecycleEventsStatus = "ACTIVE"|"INACTIVE"|"IN_PROGRESS"|"ERROR",
        GroupLifecycleEventsStatusMessage = "string"
      )
    )

### Request syntax

    svc$update_account_settings(
      GroupLifecycleEventsDesiredStatus = "ACTIVE"|"INACTIVE"
    )
