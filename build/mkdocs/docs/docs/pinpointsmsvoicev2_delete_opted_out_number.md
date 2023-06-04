<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointsmsvoicev2_delete_opted_out_number</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an existing opted out destination phone number from the specified opt-out list

### Description

Deletes an existing opted out destination phone number from the
specified opt-out list.

Each destination phone number can only be deleted once every 30 days.

If the specified destination phone number doesn't exist or if the
opt-out list doesn't exist, an Error is returned.

### Usage

    pinpointsmsvoicev2_delete_opted_out_number(OptOutListName,
      OptedOutNumber)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_delete_opted_out_number_:_OptOutListName">OptOutListName</code></td>
<td><p>[required] The OptOutListName or OptOutListArn to remove the
phone number from.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_delete_opted_out_number_:_OptedOutNumber">OptedOutNumber</code></td>
<td><p>[required] The phone number, in E.164 format, to remove from the
OptOutList.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      OptOutListArn = "string",
      OptOutListName = "string",
      OptedOutNumber = "string",
      OptedOutTimestamp = as.POSIXct(
        "2015-01-01"
      ),
      EndUserOptedOut = TRUE|FALSE
    )

### Request syntax

    svc$delete_opted_out_number(
      OptOutListName = "string",
      OptedOutNumber = "string"
    )
