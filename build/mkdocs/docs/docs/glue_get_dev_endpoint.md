<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_get_dev_endpoint</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about a specified development endpoint

### Description

Retrieves information about a specified development endpoint.

When you create a development endpoint in a virtual private cloud (VPC),
Glue returns only a private IP address, and the public IP address field
is not populated. When you create a non-VPC development endpoint, Glue
returns only a public IP address.

### Usage

    glue_get_dev_endpoint(EndpointName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_get_dev_endpoint_:_EndpointName">EndpointName</code></td>
<td><p>[required] Name of the <code>DevEndpoint</code> to retrieve
information for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DevEndpoint = list(
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
    )

### Request syntax

    svc$get_dev_endpoint(
      EndpointName = "string"
    )
