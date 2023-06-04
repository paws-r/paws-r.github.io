<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codestarnotifications_list_targets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of the notification rule targets for an Amazon Web Services account

### Description

Returns a list of the notification rule targets for an Amazon Web
Services account.

### Usage

    codestarnotifications_list_targets(Filters, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codestarnotifications_list_targets_:_Filters">Filters</code></td>
<td><p>The filters to use to return information by service or resource
type. Valid filters include target type, target address, and target
status.</p>
<p>A filter with the same name can appear more than once when used with
OR statements. Filters with different names should be applied with AND
statements.</p></td>
</tr>
<tr class="even">
<td><code
id="codestarnotifications_list_targets_:_NextToken">NextToken</code></td>
<td><p>An enumeration token that, when provided in a request, returns
the next batch of the results.</p></td>
</tr>
<tr class="odd">
<td><code
id="codestarnotifications_list_targets_:_MaxResults">MaxResults</code></td>
<td><p>A non-negative integer used to limit the number of returned
results. The maximum number of results that can be returned is
100.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Targets = list(
        list(
          TargetAddress = "string",
          TargetType = "string",
          TargetStatus = "PENDING"|"ACTIVE"|"UNREACHABLE"|"INACTIVE"|"DEACTIVATED"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_targets(
      Filters = list(
        list(
          Name = "TARGET_TYPE"|"TARGET_ADDRESS"|"TARGET_STATUS",
          Value = "string"
        )
      ),
      NextToken = "string",
      MaxResults = 123
    )
