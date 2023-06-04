<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fsx_describe_backups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the description of a specific Amazon FSx backup, if a BackupIds value is provided for that backup

### Description

Returns the description of a specific Amazon FSx backup, if a
`BackupIds` value is provided for that backup. Otherwise, it returns all
backups owned by your Amazon Web Services account in the Amazon Web
Services Region of the endpoint that you're calling.

When retrieving all backups, you can optionally specify the `MaxResults`
parameter to limit the number of backups in a response. If more backups
remain, Amazon FSx returns a `NextToken` value in the response. In this
case, send a later request with the `NextToken` request parameter set to
the value of the `NextToken` value from the last response.

This operation is used in an iterative process to retrieve a list of
your backups. `describe_backups` is called first without a `NextToken`
value. Then the operation continues to be called with the `NextToken`
parameter set to the value of the last `NextToken` value until a
response has no `NextToken` value.

When using this operation, keep the following in mind:

-   The operation might return fewer than the `MaxResults` value of
    backup descriptions while still including a `NextToken` value.

-   The order of the backups returned in the response of one
    `describe_backups` call and the order of the backups returned across
    the responses of a multi-call iteration is unspecified.

### Usage

    fsx_describe_backups(BackupIds, Filters, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="fsx_describe_backups_:_BackupIds">BackupIds</code></td>
<td><p>The IDs of the backups that you want to retrieve. This parameter
value overrides any filters. If any IDs aren't found, a
<code>BackupNotFound</code> error occurs.</p></td>
</tr>
<tr class="even">
<td><code id="fsx_describe_backups_:_Filters">Filters</code></td>
<td><p>The filters structure. The supported names are
<code>file-system-id</code>, <code>backup-type</code>,
<code>file-system-type</code>, and <code>volume-id</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="fsx_describe_backups_:_MaxResults">MaxResults</code></td>
<td><p>Maximum number of backups to return in the response. This
parameter value must be greater than 0. The number of items that Amazon
FSx returns is the minimum of the <code>MaxResults</code> parameter
specified in the request and the service's internal maximum number of
items per page.</p></td>
</tr>
<tr class="even">
<td><code id="fsx_describe_backups_:_NextToken">NextToken</code></td>
<td><p>An opaque pagination token returned from a previous
<code>describe_backups</code> operation. If a token is present, the
operation continues the list from where the returning call left
off.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Backups = list(
        list(
          BackupId = "string",
          Lifecycle = "AVAILABLE"|"CREATING"|"TRANSFERRING"|"DELETED"|"FAILED"|"PENDING"|"COPYING",
          FailureDetails = list(
            Message = "string"
          ),
          Type = "AUTOMATIC"|"USER_INITIATED"|"AWS_BACKUP",
          ProgressPercent = 123,
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          KmsKeyId = "string",
          ResourceARN = "string",
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          ),
          FileSystem = list(
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
          ),
          DirectoryInformation = list(
            DomainName = "string",
            ActiveDirectoryId = "string",
            ResourceARN = "string"
          ),
          OwnerId = "string",
          SourceBackupId = "string",
          SourceBackupRegion = "string",
          ResourceType = "FILE_SYSTEM"|"VOLUME",
          Volume = list(
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
            AdministrativeActions = list(
              list(
                AdministrativeActionType = "FILE_SYSTEM_UPDATE"|"STORAGE_OPTIMIZATION"|"FILE_SYSTEM_ALIAS_ASSOCIATION"|"FILE_SYSTEM_ALIAS_DISASSOCIATION"|"VOLUME_UPDATE"|"SNAPSHOT_UPDATE"|"RELEASE_NFS_V3_LOCKS"|"VOLUME_RESTORE",
                ProgressPercent = 123,
                RequestTime = as.POSIXct(
                  "2015-01-01"
                ),
                Status = "FAILED"|"IN_PROGRESS"|"PENDING"|"COMPLETED"|"UPDATED_OPTIMIZING",
                TargetFileSystemValues = list(
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
                  AdministrativeActions = list(),
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
                ),
                FailureDetails = list(
                  Message = "string"
                ),
                TargetVolumeValues = list(),
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
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_backups(
      BackupIds = list(
        "string"
      ),
      Filters = list(
        list(
          Name = "file-system-id"|"backup-type"|"file-system-type"|"volume-id"|"data-repository-type"|"file-cache-id"|"file-cache-type",
          Values = list(
            "string"
          )
        )
      ),
      MaxResults = 123,
      NextToken = "string"
    )

### Examples

    ## Not run: 
    # This operation describes all of the Amazon FSx backups in an account.
    svc$describe_backups()

    ## End(Not run)
