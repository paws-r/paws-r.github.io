<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fsx_describe_file_systems</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the description of specific Amazon FSx file systems, if a FileSystemIds value is provided for that file system

### Description

Returns the description of specific Amazon FSx file systems, if a
`FileSystemIds` value is provided for that file system. Otherwise, it
returns descriptions of all file systems owned by your Amazon Web
Services account in the Amazon Web Services Region of the endpoint that
you're calling.

When retrieving all file system descriptions, you can optionally specify
the `MaxResults` parameter to limit the number of descriptions in a
response. If more file system descriptions remain, Amazon FSx returns a
`NextToken` value in the response. In this case, send a later request
with the `NextToken` request parameter set to the value of `NextToken`
from the last response.

This operation is used in an iterative process to retrieve a list of
your file system descriptions. `describe_file_systems` is called first
without a `NextToken`value. Then the operation continues to be called
with the `NextToken` parameter set to the value of the last `NextToken`
value until a response has no `NextToken`.

When using this operation, keep the following in mind:

-   The implementation might return fewer than `MaxResults` file system
    descriptions while still including a `NextToken` value.

-   The order of file systems returned in the response of one
    `describe_file_systems` call and the order of file systems returned
    across the responses of a multicall iteration is unspecified.

### Usage

    fsx_describe_file_systems(FileSystemIds, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="fsx_describe_file_systems_:_FileSystemIds">FileSystemIds</code></td>
<td><p>IDs of the file systems whose descriptions you want to retrieve
(String).</p></td>
</tr>
<tr class="even">
<td><code
id="fsx_describe_file_systems_:_MaxResults">MaxResults</code></td>
<td><p>Maximum number of file systems to return in the response
(integer). This parameter value must be greater than 0. The number of
items that Amazon FSx returns is the minimum of the
<code>MaxResults</code> parameter specified in the request and the
service's internal maximum number of items per page.</p></td>
</tr>
<tr class="odd">
<td><code
id="fsx_describe_file_systems_:_NextToken">NextToken</code></td>
<td><p>Opaque pagination token returned from a previous
<code>describe_file_systems</code> operation (String). If a token
present, the operation continues the list from where the returning call
left off.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FileSystems = list(
        list(
          OwnerId = "string",
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          FileSystemId = "string",
          FileSystemType = "WINDOWS"|"LUSTRE"|"ONTAP"|"OPENZFS",
          Lifecycle = "AVAILABLE"|"CREATING"|"FAILED"|"DELETING"|"MISCONFIGURED"|"UPDATING"|"MISCONFIGURED_UNAVAILABLE",
          FailureDetails = list(
            Message = "string"
          ),
          StorageCapacity = 123,
          StorageType = "SSD"|"HDD",
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
          WindowsConfiguration = list(
            ActiveDirectoryId = "string",
            SelfManagedActiveDirectoryConfiguration = list(
              DomainName = "string",
              OrganizationalUnitDistinguishedName = "string",
              FileSystemAdministratorsGroup = "string",
              UserName = "string",
              DnsIps = list(
                "string"
              )
            ),
            DeploymentType = "MULTI_AZ_1"|"SINGLE_AZ_1"|"SINGLE_AZ_2",
            RemoteAdministrationEndpoint = "string",
            PreferredSubnetId = "string",
            PreferredFileServerIp = "string",
            ThroughputCapacity = 123,
            MaintenanceOperationsInProgress = list(
              "PATCHING"|"BACKING_UP"
            ),
            WeeklyMaintenanceStartTime = "string",
            DailyAutomaticBackupStartTime = "string",
            AutomaticBackupRetentionDays = 123,
            CopyTagsToBackups = TRUE|FALSE,
            Aliases = list(
              list(
                Name = "string",
                Lifecycle = "AVAILABLE"|"CREATING"|"DELETING"|"CREATE_FAILED"|"DELETE_FAILED"
              )
            ),
            AuditLogConfiguration = list(
              FileAccessAuditLogLevel = "DISABLED"|"SUCCESS_ONLY"|"FAILURE_ONLY"|"SUCCESS_AND_FAILURE",
              FileShareAccessAuditLogLevel = "DISABLED"|"SUCCESS_ONLY"|"FAILURE_ONLY"|"SUCCESS_AND_FAILURE",
              AuditLogDestination = "string"
            )
          ),
          LustreConfiguration = list(
            WeeklyMaintenanceStartTime = "string",
            DataRepositoryConfiguration = list(
              Lifecycle = "CREATING"|"AVAILABLE"|"MISCONFIGURED"|"UPDATING"|"DELETING"|"FAILED",
              ImportPath = "string",
              ExportPath = "string",
              ImportedFileChunkSize = 123,
              AutoImportPolicy = "NONE"|"NEW"|"NEW_CHANGED"|"NEW_CHANGED_DELETED",
              FailureDetails = list(
                Message = "string"
              )
            ),
            DeploymentType = "SCRATCH_1"|"SCRATCH_2"|"PERSISTENT_1"|"PERSISTENT_2",
            PerUnitStorageThroughput = 123,
            MountName = "string",
            DailyAutomaticBackupStartTime = "string",
            AutomaticBackupRetentionDays = 123,
            CopyTagsToBackups = TRUE|FALSE,
            DriveCacheType = "NONE"|"READ",
            DataCompressionType = "NONE"|"LZ4",
            LogConfiguration = list(
              Level = "DISABLED"|"WARN_ONLY"|"ERROR_ONLY"|"WARN_ERROR",
              Destination = "string"
            ),
            RootSquashConfiguration = list(
              RootSquash = "string",
              NoSquashNids = list(
                "string"
              )
            )
          ),
          AdministrativeActions = list(
            list(
              AdministrativeActionType = "FILE_SYSTEM_UPDATE"|"STORAGE_OPTIMIZATION"|"FILE_SYSTEM_ALIAS_ASSOCIATION"|"FILE_SYSTEM_ALIAS_DISASSOCIATION"|"VOLUME_UPDATE"|"SNAPSHOT_UPDATE"|"RELEASE_NFS_V3_LOCKS"|"VOLUME_RESTORE",
              ProgressPercent = 123,
              RequestTime = as.POSIXct(
                "2015-01-01"
              ),
              Status = "FAILED"|"IN_PROGRESS"|"PENDING"|"COMPLETED"|"UPDATED_OPTIMIZING",
              TargetFileSystemValues = list(),
              FailureDetails = list(
                Message = "string"
              ),
              TargetVolumeValues = list(
                CreationTime = as.POSIXct(
                  "2015-01-01"
                ),
                FileSystemId = "string",
                Lifecycle = "CREATING"|"CREATED"|"DELETING"|"FAILED"|"MISCONFIGURED"|"PENDING"|"AVAILABLE",
                Name = "string",
                OntapConfiguration = list(
                  FlexCacheEndpointType = "NONE"|"ORIGIN"|"CACHE",
                  JunctionPath = "string",
                  SecurityStyle = "UNIX"|"NTFS"|"MIXED",
                  SizeInMegabytes = 123,
                  StorageEfficiencyEnabled = TRUE|FALSE,
                  StorageVirtualMachineId = "string",
                  StorageVirtualMachineRoot = TRUE|FALSE,
                  TieringPolicy = list(
                    CoolingPeriod = 123,
                    Name = "SNAPSHOT_ONLY"|"AUTO"|"ALL"|"NONE"
                  ),
                  UUID = "string",
                  OntapVolumeType = "RW"|"DP"|"LS",
                  SnapshotPolicy = "string",
                  CopyTagsToBackups = TRUE|FALSE
                ),
                ResourceARN = "string",
                Tags = list(
                  list(
                    Key = "string",
                    Value = "string"
                  )
                ),
                VolumeId = "string",
                VolumeType = "ONTAP"|"OPENZFS",
                LifecycleTransitionReason = list(
                  Message = "string"
                ),
                AdministrativeActions = list(),
                OpenZFSConfiguration = list(
                  ParentVolumeId = "string",
                  VolumePath = "string",
                  StorageCapacityReservationGiB = 123,
                  StorageCapacityQuotaGiB = 123,
                  RecordSizeKiB = 123,
                  DataCompressionType = "NONE"|"ZSTD"|"LZ4",
                  CopyTagsToSnapshots = TRUE|FALSE,
                  OriginSnapshot = list(
                    SnapshotARN = "string",
                    CopyStrategy = "CLONE"|"FULL_COPY"
                  ),
                  ReadOnly = TRUE|FALSE,
                  NfsExports = list(
                    list(
                      ClientConfigurations = list(
                        list(
                          Clients = "string",
                          Options = list(
                            "string"
                          )
                        )
                      )
                    )
                  ),
                  UserAndGroupQuotas = list(
                    list(
                      Type = "USER"|"GROUP",
                      Id = 123,
                      StorageCapacityQuotaGiB = 123
                    )
                  ),
                  RestoreToSnapshot = "string",
                  DeleteIntermediateSnaphots = TRUE|FALSE,
                  DeleteClonedVolumes = TRUE|FALSE
                )
              ),
              TargetSnapshotValues = list(
                ResourceARN = "string",
                SnapshotId = "string",
                Name = "string",
                VolumeId = "string",
                CreationTime = as.POSIXct(
                  "2015-01-01"
                ),
                Lifecycle = "PENDING"|"CREATING"|"DELETING"|"AVAILABLE",
                LifecycleTransitionReason = list(
                  Message = "string"
                ),
                Tags = list(
                  list(
                    Key = "string",
                    Value = "string"
                  )
                ),
                AdministrativeActions = list()
              )
            )
          ),
          OntapConfiguration = list(
            AutomaticBackupRetentionDays = 123,
            DailyAutomaticBackupStartTime = "string",
            DeploymentType = "MULTI_AZ_1"|"SINGLE_AZ_1",
            EndpointIpAddressRange = "string",
            Endpoints = list(
              Intercluster = list(
                DNSName = "string",
                IpAddresses = list(
                  "string"
                )
              ),
              Management = list(
                DNSName = "string",
                IpAddresses = list(
                  "string"
                )
              )
            ),
            DiskIopsConfiguration = list(
              Mode = "AUTOMATIC"|"USER_PROVISIONED",
              Iops = 123
            ),
            PreferredSubnetId = "string",
            RouteTableIds = list(
              "string"
            ),
            ThroughputCapacity = 123,
            WeeklyMaintenanceStartTime = "string"
          ),
          FileSystemTypeVersion = "string",
          OpenZFSConfiguration = list(
            AutomaticBackupRetentionDays = 123,
            CopyTagsToBackups = TRUE|FALSE,
            CopyTagsToVolumes = TRUE|FALSE,
            DailyAutomaticBackupStartTime = "string",
            DeploymentType = "SINGLE_AZ_1"|"SINGLE_AZ_2",
            ThroughputCapacity = 123,
            WeeklyMaintenanceStartTime = "string",
            DiskIopsConfiguration = list(
              Mode = "AUTOMATIC"|"USER_PROVISIONED",
              Iops = 123
            ),
            RootVolumeId = "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_file_systems(
      FileSystemIds = list(
        "string"
      ),
      MaxResults = 123,
      NextToken = "string"
    )

### Examples

    ## Not run: 
    # This operation describes all of the Amazon FSx file systems in an
    # account.
    svc$describe_file_systems()

    ## End(Not run)
