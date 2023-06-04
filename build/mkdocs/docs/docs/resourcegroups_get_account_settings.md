<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>resourcegroups_get_account_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the current status of optional features in Resource Groups

### Description

Retrieves the current status of optional features in Resource Groups.

### Usage

    resourcegroups_get_account_settings()

### Value

A list with the following syntax:

    list(
      AccountSettings = list(
        GroupLifecycleEventsDesiredStatus = "ACTIVE"|"INACTIVE",
        GroupLifecycleEventsStatus = "ACTIVE"|"INACTIVE"|"IN_PROGRESS"|"ERROR",
        GroupLifecycleEventsStatusMessage = "string"
      )
    )
