<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice_delete_log_subscription</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified log subscription

### Description

Deletes the specified log subscription.

### Usage

    directoryservice_delete_log_subscription(DirectoryId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directoryservice_delete_log_subscription_:_DirectoryId">DirectoryId</code></td>
<td><p>[required] Identifier of the directory whose log subscription you
want to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_log_subscription(
      DirectoryId = "string"
    )
