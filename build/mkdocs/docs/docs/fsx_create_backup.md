<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fsx_create_backup</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a backup of an existing Amazon FSx for Windows File Server file system, Amazon FSx for Lustre file system, Amazon FSx for NetApp ONTAP volume, or Amazon FSx for OpenZFS file system

### Description

Creates a backup of an existing Amazon FSx for Windows File Server file
system, Amazon FSx for Lustre file system, Amazon FSx for NetApp ONTAP
volume, or Amazon FSx for OpenZFS file system. We recommend creating
regular backups so that you can restore a file system or volume from a
backup if an issue arises with the original file system or volume.

For Amazon FSx for Lustre file systems, you can create a backup only for
file systems that have the following configuration:

-   A Persistent deployment type

-   Are *not* linked to a data repository

For more information about backups, see the following:

-   For Amazon FSx for Lustre, see [Working with FSx for Lustre
    backups](https://docs.aws.amazon.com/fsx/latest/LustreGuide/using-backups-fsx.html).

-   For Amazon FSx for Windows, see [Working with FSx for Windows
    backups](https://docs.aws.amazon.com/fsx/latest/WindowsGuide/using-backups.html).

-   For Amazon FSx for NetApp ONTAP, see [Working with FSx for NetApp
    ONTAP
    backups](https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/using-backups.html).

-   For Amazon FSx for OpenZFS, see [Working with FSx for OpenZFS
    backups](https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/using-backups.html).

If a backup with the specified client request token exists and the
parameters match, this operation returns the description of the existing
backup. If a backup with the specified client request token exists and
the parameters don't match, this operation returns
`IncompatibleParameterError`. If a backup with the specified client
request token doesn't exist, `create_backup` does the following:

-   Creates a new Amazon FSx backup with an assigned ID, and an initial
    lifecycle state of `CREATING`.

-   Returns the description of the backup.

By using the idempotent operation, you can retry a `create_backup`
operation without the risk of creating an extra backup. This approach
can be useful when an initial call fails in a way that makes it unclear
whether a backup was created. If you use the same client request token
and the initial call created a backup, the operation returns a
successful result because all the parameters are the same.

The `create_backup` operation returns while the backup's lifecycle state
is still `CREATING`. You can check the backup creation status by calling
the `describe_backups` operation, which returns the backup state along
with other information.

### Usage

    fsx_create_backup(FileSystemId, ClientRequestToken, Tags, VolumeId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="fsx_create_backup_:_FileSystemId">FileSystemId</code></td>
<td><p>The ID of the file system to back up.</p></td>
</tr>
<tr class="even">
<td><code
id="fsx_create_backup_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>(Optional) A string of up to 63 ASCII characters that Amazon FSx
uses to ensure idempotent creation. This string is automatically filled
on your behalf when you use the Command Line Interface (CLI) or an
Amazon Web Services SDK.</p></td>
</tr>
<tr class="odd">
<td><code id="fsx_create_backup_:_Tags">Tags</code></td>
<td><p>(Optional) The tags to apply to the backup at backup creation.
The key value of the <code>Name</code> tag appears in the console as the
backup name. If you have set <code>CopyTagsToBackups</code> to
<code>true</code>, and you specify one or more tags using the
<code>create_backup</code> operation, no existing file system tags are
copied from the file system to the backup.</p></td>
</tr>
<tr class="even">
<td><code id="fsx_create_backup_:_VolumeId">VolumeId</code></td>
<td><p>(Optional) The ID of the FSx for ONTAP volume to back
up.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Backup = list(
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
    )

### Request syntax

    svc$create_backup(
      FileSystemId = "string",
      ClientRequestToken = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      VolumeId = "string"
    )

### Examples

    ## Not run: 
    # This operation creates a new backup.
    svc$create_backup(
      FileSystemId = "fs-0498eed5fe91001ec",
      Tags = list(
        list(
          Key = "Name",
          Value = "MyBackup"
        )
      )
    )

    ## End(Not run)
