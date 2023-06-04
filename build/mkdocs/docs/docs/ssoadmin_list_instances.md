<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssoadmin_list_instances</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the IAM Identity Center instances that the caller has access to

### Description

Lists the IAM Identity Center instances that the caller has access to.

### Usage

    ssoadmin_list_instances(MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssoadmin_list_instances_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to display for the
instance.</p></td>
</tr>
<tr class="even">
<td><code id="ssoadmin_list_instances_:_NextToken">NextToken</code></td>
<td><p>The pagination token for the list API. Initially the value is
null. Use the output of previous API calls to make subsequent
calls.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Instances = list(
        list(
          InstanceArn = "string",
          IdentityStoreId = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_instances(
      MaxResults = 123,
      NextToken = "string"
    )
