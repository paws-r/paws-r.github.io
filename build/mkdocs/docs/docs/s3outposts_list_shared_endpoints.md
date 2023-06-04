<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3outposts_list_shared_endpoints</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all endpoints associated with an Outpost that has been shared by Amazon Web Services Resource Access Manager (RAM)

### Description

Lists all endpoints associated with an Outpost that has been shared by
Amazon Web Services Resource Access Manager (RAM).

Related actions include:

-   `create_endpoint`

-   `delete_endpoint`

### Usage

    s3outposts_list_shared_endpoints(NextToken, MaxResults, OutpostId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="s3outposts_list_shared_endpoints_:_NextToken">NextToken</code></td>
<td><p>If a previous response from this operation included a
<code>NextToken</code> value, you can provide that value here to
retrieve the next page of results.</p></td>
</tr>
<tr class="even">
<td><code
id="s3outposts_list_shared_endpoints_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of endpoints that will be returned in the
response.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3outposts_list_shared_endpoints_:_OutpostId">OutpostId</code></td>
<td><p>[required] The ID of the Amazon Web Services Outpost.</p></td>
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

    svc$list_shared_endpoints(
      NextToken = "string",
      MaxResults = 123,
      OutpostId = "string"
    )
