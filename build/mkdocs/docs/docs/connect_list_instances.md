<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_list_instances</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This API is in preview release for Amazon Connect and is subject to change

### Description

This API is in preview release for Amazon Connect and is subject to
change.

Return a list of instances which are in active state,
creation-in-progress state, and failed state. Instances that aren't
successfully created (they are in a failed state) are returned only for
24 hours after the CreateInstance API was invoked.

### Usage

    connect_list_instances(NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="connect_list_instances_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of results. Use the value returned in
the previous response in the next request to retrieve the next set of
results.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_list_instances_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return per page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      InstanceSummaryList = list(
        list(
          Id = "string",
          Arn = "string",
          IdentityManagementType = "SAML"|"CONNECT_MANAGED"|"EXISTING_DIRECTORY",
          InstanceAlias = "string",
          CreatedTime = as.POSIXct(
            "2015-01-01"
          ),
          ServiceRole = "string",
          InstanceStatus = "CREATION_IN_PROGRESS"|"ACTIVE"|"CREATION_FAILED",
          InboundCallsEnabled = TRUE|FALSE,
          OutboundCallsEnabled = TRUE|FALSE
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_instances(
      NextToken = "string",
      MaxResults = 123
    )
