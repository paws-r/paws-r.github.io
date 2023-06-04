<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>xray_list_resource_policies</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the list of resource policies in the target Amazon Web Services account

### Description

Returns the list of resource policies in the target Amazon Web Services
account.

### Usage

    xray_list_resource_policies(NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="xray_list_resource_policies_:_NextToken">NextToken</code></td>
<td><p>Not currently supported.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResourcePolicies = list(
        list(
          PolicyName = "string",
          PolicyDocument = "string",
          PolicyRevisionId = "string",
          LastUpdatedTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_resource_policies(
      NextToken = "string"
    )
