<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fsx_update_file_cache</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the configuration of an existing Amazon File Cache resource

### Description

Updates the configuration of an existing Amazon File Cache resource. You
can update multiple properties in a single request.

### Usage

    fsx_update_file_cache(FileCacheId, ClientRequestToken,
      LustreConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="fsx_update_file_cache_:_FileCacheId">FileCacheId</code></td>
<td><p>[required] The ID of the cache that you are updating.</p></td>
</tr>
<tr class="even">
<td><code
id="fsx_update_file_cache_:_ClientRequestToken">ClientRequestToken</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="fsx_update_file_cache_:_LustreConfiguration">LustreConfiguration</code></td>
<td><p>The configuration updates for an Amazon File Cache
resource.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FileCache = list(
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
    )

### Request syntax

    svc$update_file_cache(
      FileCacheId = "string",
      ClientRequestToken = "string",
      LustreConfiguration = list(
        WeeklyMaintenanceStartTime = "string"
      )
    )
