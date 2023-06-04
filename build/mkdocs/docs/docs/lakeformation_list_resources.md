<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lakeformation_list_resources</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the resources registered to be managed by the Data Catalog

### Description

Lists the resources registered to be managed by the Data Catalog.

### Usage

    lakeformation_list_resources(FilterConditionList, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lakeformation_list_resources_:_FilterConditionList">FilterConditionList</code></td>
<td><p>Any applicable row-level and/or column-level filtering conditions
for the resources.</p></td>
</tr>
<tr class="even">
<td><code
id="lakeformation_list_resources_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of resource results.</p></td>
</tr>
<tr class="odd">
<td><code
id="lakeformation_list_resources_:_NextToken">NextToken</code></td>
<td><p>A continuation token, if this is not the first call to retrieve
these resources.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResourceInfoList = list(
        list(
          ResourceArn = "string",
          RoleArn = "string",
          LastModified = as.POSIXct(
            "2015-01-01"
          ),
          WithFederation = TRUE|FALSE
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_resources(
      FilterConditionList = list(
        list(
          Field = "RESOURCE_ARN"|"ROLE_ARN"|"LAST_MODIFIED",
          ComparisonOperator = "EQ"|"NE"|"LE"|"LT"|"GE"|"GT"|"CONTAINS"|"NOT_CONTAINS"|"BEGINS_WITH"|"IN"|"BETWEEN",
          StringValueList = list(
            "string"
          )
        )
      ),
      MaxResults = 123,
      NextToken = "string"
    )
