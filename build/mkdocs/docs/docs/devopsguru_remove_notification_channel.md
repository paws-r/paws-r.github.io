<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>devopsguru_remove_notification_channel</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes a notification channel from DevOps Guru

### Description

Removes a notification channel from DevOps Guru. A notification channel
is used to notify you when DevOps Guru generates an insight that
contains information about how to improve your operations.

### Usage

    devopsguru_remove_notification_channel(Id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="devopsguru_remove_notification_channel_:_Id">Id</code></td>
<td><p>[required] The ID of the notification channel to be
removed.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$remove_notification_channel(
      Id = "string"
    )
