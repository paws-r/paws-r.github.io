<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_list_compliance_items</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## For a specified resource ID, this API operation returns a list of compliance statuses for different resource types

### Description

For a specified resource ID, this API operation returns a list of
compliance statuses for different resource types. Currently, you can
only specify one resource ID per call. List results depend on the
criteria specified in the filter.

### Usage

    ssm_list_compliance_items(Filters, ResourceIds, ResourceTypes,
      NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ssm_list_compliance_items_:_Filters">Filters</code></td>
<td><p>One or more compliance filters. Use a filter to return a more
specific list of results.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_list_compliance_items_:_ResourceIds">ResourceIds</code></td>
<td><p>The ID for the resources from which to get compliance
information. Currently, you can only specify one resource ID.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_list_compliance_items_:_ResourceTypes">ResourceTypes</code></td>
<td><p>The type of resource from which to get compliance information.
Currently, the only supported resource type is
<code>ManagedInstance</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_list_compliance_items_:_NextToken">NextToken</code></td>
<td><p>A token to start the list. Use this token to get the next set of
results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_list_compliance_items_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this call. The call
also returns a token that you can specify in a subsequent call to get
the next set of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ComplianceItems = list(
        list(
          ComplianceType = "string",
          ResourceType = "string",
          ResourceId = "string",
          Id = "string",
          Title = "string",
          Status = "COMPLIANT"|"NON_COMPLIANT",
          Severity = "CRITICAL"|"HIGH"|"MEDIUM"|"LOW"|"INFORMATIONAL"|"UNSPECIFIED",
          ExecutionSummary = list(
            ExecutionTime = as.POSIXct(
              "2015-01-01"
            ),
            ExecutionId = "string",
            ExecutionType = "string"
          ),
          Details = list(
            "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_compliance_items(
      Filters = list(
        list(
          Key = "string",
          Values = list(
            "string"
          ),
          Type = "EQUAL"|"NOT_EQUAL"|"BEGIN_WITH"|"LESS_THAN"|"GREATER_THAN"
        )
      ),
      ResourceIds = list(
        "string"
      ),
      ResourceTypes = list(
        "string"
      ),
      NextToken = "string",
      MaxResults = 123
    )
