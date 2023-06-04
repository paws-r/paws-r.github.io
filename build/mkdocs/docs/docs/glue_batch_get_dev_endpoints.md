<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_batch_get_dev_endpoints</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of resource metadata for a given list of development endpoint names

### Description

Returns a list of resource metadata for a given list of development
endpoint names. After calling the `list_dev_endpoints` operation, you
can call this operation to access the data to which you have been
granted permissions. This operation supports all IAM permissions,
including permission conditions that uses tags.

### Usage

    glue_batch_get_dev_endpoints(DevEndpointNames)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_batch_get_dev_endpoints_:_DevEndpointNames">DevEndpointNames</code></td>
<td><p>[required] The list of <code>DevEndpoint</code> names, which
might be the names returned from the <code>ListDevEndpoint</code>
operation.</p></td>
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
      DevEndpointsNotFound = list(
        "string"
      )
    )

### Request syntax

    svc$batch_get_dev_endpoints(
      DevEndpointNames = list(
        "string"
      )
    )
