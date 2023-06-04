<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fsx_describe_file_caches</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the description of a specific Amazon File Cache resource, if a FileCacheIds value is provided for that cache

### Description

Returns the description of a specific Amazon File Cache resource, if a
`FileCacheIds` value is provided for that cache. Otherwise, it returns
descriptions of all caches owned by your Amazon Web Services account in
the Amazon Web Services Region of the endpoint that you're calling.

When retrieving all cache descriptions, you can optionally specify the
`MaxResults` parameter to limit the number of descriptions in a
response. If more cache descriptions remain, the operation returns a
`NextToken` value in the response. In this case, send a later request
with the `NextToken` request parameter set to the value of `NextToken`
from the last response.

This operation is used in an iterative process to retrieve a list of
your cache descriptions. `describe_file_caches` is called first without
a `NextToken`value. Then the operation continues to be called with the
`NextToken` parameter set to the value of the last `NextToken` value
until a response has no `NextToken`.

When using this operation, keep the following in mind:

-   The implementation might return fewer than `MaxResults` cache
    descriptions while still including a `NextToken` value.

-   The order of caches returned in the response of one
    `describe_file_caches` call and the order of caches returned across
    the responses of a multicall iteration is unspecified.

### Usage

    fsx_describe_file_caches(FileCacheIds, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="fsx_describe_file_caches_:_FileCacheIds">FileCacheIds</code></td>
<td><p>IDs of the caches whose descriptions you want to retrieve
(String).</p></td>
</tr>
<tr class="even">
<td><code
id="fsx_describe_file_caches_:_MaxResults">MaxResults</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="fsx_describe_file_caches_:_NextToken">NextToken</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FileCaches = list(
        list(
          OwnerId = "string",
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          FileCacheId = "string",
          FileCacheType = "LUSTRE",
          FileCacheTypeVersion = "string",
          Lifecycle = "AVAILABLE"|"CREATING"|"DELETING"|"UPDATING"|"FAILED",
          FailureDetails = list(
            Message = "string"
          ),
          StorageCapacity = 123,
          VpcId = "string",
          SubnetIds = list(
            "string"
          ),
          NetworkInterfaceIds = list(
            "string"
          ),
          DNSName = "string",
          KmsKeyId = "string",
          ResourceARN = "string",
          LustreConfiguration = list(
            PerUnitStorageThroughput = 123,
            DeploymentType = "CACHE_1",
            MountName = "string",
            WeeklyMaintenanceStartTime = "string",
            MetadataConfiguration = list(
              StorageCapacity = 123
            ),
            LogConfiguration = list(
              Level = "DISABLED"|"WARN_ONLY"|"ERROR_ONLY"|"WARN_ERROR",
              Destination = "string"
            )
          ),
          DataRepositoryAssociationIds = list(
            "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_file_caches(
      FileCacheIds = list(
        "string"
      ),
      MaxResults = 123,
      NextToken = "string"
    )
