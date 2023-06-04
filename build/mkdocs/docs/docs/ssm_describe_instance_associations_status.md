<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_describe_instance_associations_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The status of the associations for the managed node(s)

### Description

The status of the associations for the managed node(s).

### Usage

    ssm_describe_instance_associations_status(InstanceId, MaxResults,
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
id="ssm_describe_instance_associations_status_:_InstanceId">InstanceId</code></td>
<td><p>[required] The managed node IDs for which you want association
status information.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_describe_instance_associations_status_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this call. The call
also returns a token that you can specify in a subsequent call to get
the next set of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_describe_instance_associations_status_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of items to return. (You received this
token from a previous call.)</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      InstanceAssociationStatusInfos = list(
        list(
          AssociationId = "string",
          Name = "string",
          DocumentVersion = "string",
          AssociationVersion = "string",
          InstanceId = "string",
          ExecutionDate = as.POSIXct(
            "2015-01-01"
          ),
          Status = "string",
          DetailedStatus = "string",
          ExecutionSummary = "string",
          ErrorCode = "string",
          OutputUrl = list(
            S3OutputUrl = list(
              OutputUrl = "string"
            )
          ),
          AssociationName = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_instance_associations_status(
      InstanceId = "string",
      MaxResults = 123,
      NextToken = "string"
    )
