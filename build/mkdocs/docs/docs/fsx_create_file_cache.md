<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fsx_create_file_cache</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new Amazon File Cache resource

### Description

Creates a new Amazon File Cache resource.

You can use this operation with a client request token in the request
that Amazon File Cache uses to ensure idempotent creation. If a cache
with the specified client request token exists and the parameters match,
`create_file_cache` returns the description of the existing cache. If a
cache with the specified client request token exists and the parameters
don't match, this call returns `IncompatibleParameterError`. If a file
cache with the specified client request token doesn't exist,
`create_file_cache` does the following:

-   Creates a new, empty Amazon File Cache resourcewith an assigned ID,
    and an initial lifecycle state of `CREATING`.

-   Returns the description of the cache in JSON format.

The `create_file_cache` call returns while the cache's lifecycle state
is still `CREATING`. You can check the cache creation status by calling
the `describe_file_caches` operation, which returns the cache state
along with other information.

### Usage

    fsx_create_file_cache(ClientRequestToken, FileCacheType,
      FileCacheTypeVersion, StorageCapacity, SubnetIds, SecurityGroupIds,
      Tags, CopyTagsToDataRepositoryAssociations, KmsKeyId,
      LustreConfiguration, DataRepositoryAssociations)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="fsx_create_file_cache_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>An idempotency token for resource creation, in a string of up to
63 ASCII characters. This token is automatically filled on your behalf
when you use the Command Line Interface (CLI) or an Amazon Web Services
SDK.</p>
<p>By using the idempotent operation, you can retry a
<code>create_file_cache</code> operation without the risk of creating an
extra cache. This approach can be useful when an initial call fails in a
way that makes it unclear whether a cache was created. Examples are if a
transport level timeout occurred, or your connection was reset. If you
use the same client request token and the initial call created a cache,
the client receives success as long as the parameters are the
same.</p></td>
</tr>
<tr class="even">
<td><code
id="fsx_create_file_cache_:_FileCacheType">FileCacheType</code></td>
<td><p>[required] The type of cache that you're creating, which must be
<code>LUSTRE</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="fsx_create_file_cache_:_FileCacheTypeVersion">FileCacheTypeVersion</code></td>
<td><p>[required] Sets the Lustre version for the cache that you're
creating, which must be <code>2.12</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="fsx_create_file_cache_:_StorageCapacity">StorageCapacity</code></td>
<td><p>[required] The storage capacity of the cache in gibibytes (GiB).
Valid values are 1200 GiB, 2400 GiB, and increments of 2400
GiB.</p></td>
</tr>
<tr class="odd">
<td><code id="fsx_create_file_cache_:_SubnetIds">SubnetIds</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="fsx_create_file_cache_:_SecurityGroupIds">SecurityGroupIds</code></td>
<td><p>A list of IDs specifying the security groups to apply to all
network interfaces created for Amazon File Cache access. This list isn't
returned in later requests to describe the cache.</p></td>
</tr>
<tr class="odd">
<td><code id="fsx_create_file_cache_:_Tags">Tags</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="fsx_create_file_cache_:_CopyTagsToDataRepositoryAssociations">CopyTagsToDataRepositoryAssociations</code></td>
<td><p>A boolean flag indicating whether tags for the cache should be
copied to data repository associations. This value defaults to
false.</p></td>
</tr>
<tr class="odd">
<td><code id="fsx_create_file_cache_:_KmsKeyId">KmsKeyId</code></td>
<td><p>Specifies the ID of the Key Management Service (KMS) key to use
for encrypting data on an Amazon File Cache. If a <code>KmsKeyId</code>
isn't specified, the Amazon FSx-managed KMS key for your account is
used. For more information, see <a
href="https://docs.aws.amazon.com/kms/latest/APIReference/API_Encrypt.html">Encrypt</a>
in the <em>Key Management Service API Reference</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="fsx_create_file_cache_:_LustreConfiguration">LustreConfiguration</code></td>
<td><p>The configuration for the Amazon File Cache resource being
created.</p></td>
</tr>
<tr class="odd">
<td><code
id="fsx_create_file_cache_:_DataRepositoryAssociations">DataRepositoryAssociations</code></td>
<td><p>A list of up to 8 configurations for data repository associations
(DRAs) to be created during the cache creation. The DRAs link the cache
to either an Amazon S3 data repository or a Network File System (NFS)
data repository that supports the NFSv3 protocol.</p>
<p>The DRA configurations must meet the following requirements:</p>
<ul>
<li><p>All configurations on the list must be of the same data
repository type, either all S3 or all NFS. A cache can't link to
different data repository types at the same time.</p></li>
<li><p>An NFS DRA must link to an NFS file system that supports the
NFSv3 protocol.</p></li>
</ul>
<p>DRA automatic import and automatic export is not supported.</p></td>
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
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        ),
        CopyTagsToDataRepositoryAssociations = TRUE|FALSE,
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

    svc$create_file_cache(
      ClientRequestToken = "string",
      FileCacheType = "LUSTRE",
      FileCacheTypeVersion = "string",
      StorageCapacity = 123,
      SubnetIds = list(
        "string"
      ),
      SecurityGroupIds = list(
        "string"
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      CopyTagsToDataRepositoryAssociations = TRUE|FALSE,
      KmsKeyId = "string",
      LustreConfiguration = list(
        PerUnitStorageThroughput = 123,
        DeploymentType = "CACHE_1",
        WeeklyMaintenanceStartTime = "string",
        MetadataConfiguration = list(
          StorageCapacity = 123
        )
      ),
      DataRepositoryAssociations = list(
        list(
          FileCachePath = "string",
          DataRepositoryPath = "string",
          DataRepositorySubdirectories = list(
            "string"
          ),
          NFS = list(
            Version = "NFS3",
            DnsIps = list(
              "string"
            )
          )
        )
      )
    )
