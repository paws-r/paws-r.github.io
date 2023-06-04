<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_get_dev_endpoints</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves all the development endpoints in this Amazon Web Services account

### Description

Retrieves all the development endpoints in this Amazon Web Services
account.

When you create a development endpoint in a virtual private cloud (VPC),
Glue returns only a private IP address and the public IP address field
is not populated. When you create a non-VPC development endpoint, Glue
returns only a public IP address.

### Usage

    glue_get_dev_endpoints(MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_get_dev_endpoints_:_MaxResults">MaxResults</code></td>
<td><p>The maximum size of information to return.</p></td>
</tr>
<tr class="even">
<td><code id="glue_get_dev_endpoints_:_NextToken">NextToken</code></td>
<td><p>A continuation token, if this is a continuation call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DevEndpoints = list(
        list(
          EndpointName = "string",
          RoleArn = "string",
          SecurityGroupIds = list(
            "string"
          ),
          SubnetId = "string",
          YarnEndpointAddress = "string",
          PrivateAddress = "string",
          ZeppelinRemoteSparkInterpreterPort = 123,
          PublicAddress = "string",
          Status = "string",
          WorkerType = "Standard"|"G.1X"|"G.2X"|"G.025X"|"G.4X"|"G.8X",
          GlueVersion = "string",
          NumberOfWorkers = 123,
          NumberOfNodes = 123,
          AvailabilityZone = "string",
          VpcId = "string",
          ExtraPythonLibsS3Path = "string",
          ExtraJarsS3Path = "string",
          FailureReason = "string",
          LastUpdateStatus = "string",
          CreatedTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          LastModifiedTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          PublicKey = "string",
          PublicKeys = list(
            "string"
          ),
          SecurityConfiguration = "string",
          Arguments = list(
            "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_dev_endpoints(
      MaxResults = 123,
      NextToken = "string"
    )
