<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointsmsvoicev2_describe_opt_out_lists</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified opt-out list or all opt-out lists in your account

### Description

Describes the specified opt-out list or all opt-out lists in your
account.

If you specify opt-out list names, the output includes information for
only the specified opt-out lists. Opt-out lists include only those that
meet the filter criteria. If you don't specify opt-out list names or
filters, the output includes information for all opt-out lists.

If you specify an opt-out list name that isn't valid, an Error is
returned.

### Usage

    pinpointsmsvoicev2_describe_opt_out_lists(OptOutListNames, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_describe_opt_out_lists_:_OptOutListNames">OptOutListNames</code></td>
<td><p>The OptOutLists to show the details of. This is an array of
strings that can be either the OptOutListName or OptOutListArn.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_describe_opt_out_lists_:_NextToken">NextToken</code></td>
<td><p>The token to be used for the next set of paginated results. You
don't need to supply a value for this field in the initial
request.</p></td>
</tr>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_describe_opt_out_lists_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return per each
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      OptOutLists = list(
        list(
          OptOutListArn = "string",
          OptOutListName = "string",
          CreatedTimestamp = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_opt_out_lists(
      OptOutListNames = list(
        "string"
      ),
      NextToken = "string",
      MaxResults = 123
    )
