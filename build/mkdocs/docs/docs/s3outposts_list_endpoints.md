<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3outposts_list_endpoints</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists endpoints associated with the specified Outpost

### Description

Lists endpoints associated with the specified Outpost.

Related actions include:

-   `create_endpoint`

-   `delete_endpoint`

### Usage

    s3outposts_list_endpoints(NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="s3outposts_list_endpoints_:_NextToken">NextToken</code></td>
<td><p>If a previous response from this operation included a
<code>NextToken</code> value, provide that value here to retrieve the
next page of results.</p></td>
</tr>
<tr class="even">
<td><code
id="s3outposts_list_endpoints_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of endpoints that will be returned in the
response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Endpoints = list(
        list(
          EndpointArn = "string",
          OutpostsId = "string",
          CidrBlock = "string",
          Status = "Pending"|"Available"|"Deleting"|"Create_Failed"|"Delete_Failed",
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          NetworkInterfaces = list(
            list(
              NetworkInterfaceId = "string"
            )
          ),
          VpcId = "string",
          SubnetId = "string",
          SecurityGroupId = "string",
          AccessType = "Private"|"CustomerOwnedIp",
          CustomerOwnedIpv4Pool = "string",
          FailedReason = list(
            ErrorCode = "string",
            Message = "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_endpoints(
      NextToken = "string",
      MaxResults = 123
    )
