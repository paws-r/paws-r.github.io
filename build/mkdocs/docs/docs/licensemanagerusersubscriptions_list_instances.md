<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>licensemanagerusersubscriptions_list_instances</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the EC2 instances providing user-based subscriptions

### Description

Lists the EC2 instances providing user-based subscriptions.

### Usage

    licensemanagerusersubscriptions_list_instances(Filters, MaxResults,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="licensemanagerusersubscriptions_list_instances_:_Filters">Filters</code></td>
<td><p>An array of structures that you can use to filter the results to
those that match one or more sets of key-value pairs that you
specify.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanagerusersubscriptions_list_instances_:_MaxResults">MaxResults</code></td>
<td><p>Maximum number of results to return in a single call.</p></td>
</tr>
<tr class="odd">
<td><code
id="licensemanagerusersubscriptions_list_instances_:_NextToken">NextToken</code></td>
<td><p>Token for the next set of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      InstanceSummaries = list(
        list(
          InstanceId = "string",
          LastStatusCheckDate = "string",
          Products = list(
            "string"
          ),
          Status = "string",
          StatusMessage = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_instances(
      Filters = list(
        list(
          Attribute = "string",
          Operation = "string",
          Value = "string"
        )
      ),
      MaxResults = 123,
      NextToken = "string"
    )
