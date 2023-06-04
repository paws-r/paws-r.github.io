<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_describe_effective_instance_associations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## All associations for the managed node(s)

### Description

All associations for the managed node(s).

### Usage

    ssm_describe_effective_instance_associations(InstanceId, MaxResults,
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
id="ssm_describe_effective_instance_associations_:_InstanceId">InstanceId</code></td>
<td><p>[required] The managed node ID for which you want to view all
associations.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_describe_effective_instance_associations_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this call. The call
also returns a token that you can specify in a subsequent call to get
the next set of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_describe_effective_instance_associations_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of items to return. (You received this
token from a previous call.)</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Associations = list(
        list(
          AssociationId = "string",
          InstanceId = "string",
          Content = "string",
          AssociationVersion = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_effective_instance_associations(
      InstanceId = "string",
      MaxResults = 123,
      NextToken = "string"
    )
