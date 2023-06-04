<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointsmsvoicev2_delete_opt_out_list</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an existing opt-out list

### Description

Deletes an existing opt-out list. All opted out phone numbers in the
opt-out list are deleted.

If the specified opt-out list name doesn't exist or is in-use by an
origination phone number or pool, an Error is returned.

### Usage

    pinpointsmsvoicev2_delete_opt_out_list(OptOutListName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_delete_opt_out_list_:_OptOutListName">OptOutListName</code></td>
<td><p>[required] The OptOutListName or OptOutListArn of the OptOutList
to delete. You can use <code>describe_opt_out_lists</code> to find the
values for OptOutListName and OptOutListArn.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      OptOutListArn = "string",
      OptOutListName = "string",
      CreatedTimestamp = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$delete_opt_out_list(
      OptOutListName = "string"
    )
