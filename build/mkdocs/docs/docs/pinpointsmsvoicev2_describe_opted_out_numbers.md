<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointsmsvoicev2_describe_opted_out_numbers</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified opted out destination numbers or all opted out destination numbers in an opt-out list

### Description

Describes the specified opted out destination numbers or all opted out
destination numbers in an opt-out list.

If you specify opted out numbers, the output includes information for
only the specified opted out numbers. If you specify filters, the output
includes information for only those opted out numbers that meet the
filter criteria. If you don't specify opted out numbers or filters, the
output includes information for all opted out destination numbers in
your opt-out list.

If you specify an opted out number that isn't valid, an Error is
returned.

### Usage

    pinpointsmsvoicev2_describe_opted_out_numbers(OptOutListName,
      OptedOutNumbers, Filters, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_describe_opted_out_numbers_:_OptOutListName">OptOutListName</code></td>
<td><p>[required] The OptOutListName or OptOutListArn of the OptOutList.
You can use <code>describe_opt_out_lists</code> to find the values for
OptOutListName and OptOutListArn.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_describe_opted_out_numbers_:_OptedOutNumbers">OptedOutNumbers</code></td>
<td><p>An array of phone numbers to search for in the
OptOutList.</p></td>
</tr>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_describe_opted_out_numbers_:_Filters">Filters</code></td>
<td><p>An array of OptedOutFilter objects to filter the results
on.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_describe_opted_out_numbers_:_NextToken">NextToken</code></td>
<td><p>The token to be used for the next set of paginated results. You
don't need to supply a value for this field in the initial
request.</p></td>
</tr>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_describe_opted_out_numbers_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return per each
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      OptOutListArn = "string",
      OptOutListName = "string",
      OptedOutNumbers = list(
        list(
          OptedOutNumber = "string",
          OptedOutTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          EndUserOptedOut = TRUE|FALSE
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_opted_out_numbers(
      OptOutListName = "string",
      OptedOutNumbers = list(
        "string"
      ),
      Filters = list(
        list(
          Name = "end-user-opted-out",
          Values = list(
            "string"
          )
        )
      ),
      NextToken = "string",
      MaxResults = 123
    )
