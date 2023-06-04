<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_get_resource_policies</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the resource policies set on individual resources by Resource Access Manager during cross-account permission grants

### Description

Retrieves the resource policies set on individual resources by Resource
Access Manager during cross-account permission grants. Also retrieves
the Data Catalog resource policy.

If you enabled metadata encryption in Data Catalog settings, and you do
not have permission on the KMS key, the operation can't return the Data
Catalog resource policy.

### Usage

    glue_get_resource_policies(NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_get_resource_policies_:_NextToken">NextToken</code></td>
<td><p>A continuation token, if this is a continuation request.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_get_resource_policies_:_MaxResults">MaxResults</code></td>
<td><p>The maximum size of a list to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GetResourcePoliciesResponseList = list(
        list(
          PolicyInJson = "string",
          PolicyHash = "string",
          CreateTime = as.POSIXct(
            "2015-01-01"
          ),
          UpdateTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_resource_policies(
      NextToken = "string",
      MaxResults = 123
    )
