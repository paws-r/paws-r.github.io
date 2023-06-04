<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointsmsvoicev2_put_opted_out_number</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an opted out destination phone number in the opt-out list

### Description

Creates an opted out destination phone number in the opt-out list.

If the destination phone number isn't valid or if the specified opt-out
list doesn't exist, an Error is returned.

### Usage

    pinpointsmsvoicev2_put_opted_out_number(OptOutListName, OptedOutNumber)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_put_opted_out_number_:_OptOutListName">OptOutListName</code></td>
<td><p>[required] The OptOutListName or OptOutListArn to add the phone
number to.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_put_opted_out_number_:_OptedOutNumber">OptedOutNumber</code></td>
<td><p>[required] The phone number to add to the OptOutList in E.164
format.</p></td>
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

    svc$put_opted_out_number(
      OptOutListName = "string",
      OptedOutNumber = "string"
    )
