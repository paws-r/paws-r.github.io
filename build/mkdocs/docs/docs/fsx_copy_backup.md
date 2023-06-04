<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fsx_copy_backup</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Copies an existing backup within the same Amazon Web Services account to another Amazon Web Services Region (cross-Region copy) or within the same Amazon Web Services Region (in-Region copy)

### Description

Copies an existing backup within the same Amazon Web Services account to
another Amazon Web Services Region (cross-Region copy) or within the
same Amazon Web Services Region (in-Region copy). You can have up to
five backup copy requests in progress to a single destination Region per
account.

You can use cross-Region backup copies for cross-Region disaster
recovery. You can periodically take backups and copy them to another
Region so that in the event of a disaster in the primary Region, you can
restore from backup and recover availability quickly in the other
Region. You can make cross-Region copies only within your Amazon Web
Services partition. A partition is a grouping of Regions. Amazon Web
Services currently has three partitions: `aws` (Standard Regions),
`aws-cn` (China Regions), and `aws-us-gov` (Amazon Web Services GovCloud
\[US\] Regions).

You can also use backup copies to clone your file dataset to another
Region or within the same Region.

You can use the `SourceRegion` parameter to specify the Amazon Web
Services Region from which the backup will be copied. For example, if
you make the call from the `us-west-1` Region and want to copy a backup
from the `us-east-2` Region, you specify `us-east-2` in the
`SourceRegion` parameter to make a cross-Region copy. If you don't
specify a Region, the backup copy is created in the same Region where
the request is sent from (in-Region copy).

For more information about creating backup copies, see [Copying
backups](https://docs.aws.amazon.com/fsx/latest/WindowsGuide/using-backups.html#copy-backups)
in the *Amazon FSx for Windows User Guide*, [Copying
backups](https://docs.aws.amazon.com/fsx/latest/LustreGuide/using-backups-fsx.html#copy-backups)
in the *Amazon FSx for Lustre User Guide*, and [Copying
backups](https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/using-backups.html#copy-backups)
in the *Amazon FSx for OpenZFS User Guide*.

### Usage

    fsx_copy_backup(ClientRequestToken, SourceBackupId, SourceRegion,
      KmsKeyId, CopyTags, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="fsx_copy_backup_:_ClientRequestToken">ClientRequestToken</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="fsx_copy_backup_:_SourceBackupId">SourceBackupId</code></td>
<td><p>[required] The ID of the source backup. Specifies the ID of the
backup that's being copied.</p></td>
</tr>
<tr class="odd">
<td><code id="fsx_copy_backup_:_SourceRegion">SourceRegion</code></td>
<td><p>The source Amazon Web Services Region of the backup. Specifies
the Amazon Web Services Region from which the backup is being copied.
The source and destination Regions must be in the same Amazon Web
Services partition. If you don't specify a Region,
<code>SourceRegion</code> defaults to the Region where the request is
sent from (in-Region copy).</p></td>
</tr>
<tr class="even">
<td><code id="fsx_copy_backup_:_KmsKeyId">KmsKeyId</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code id="fsx_copy_backup_:_CopyTags">CopyTags</code></td>
<td><p>A Boolean flag indicating whether tags from the source backup
should be copied to the backup copy. This value defaults to
<code>false</code>.</p>
<p>If you set <code>CopyTags</code> to <code>true</code> and the source
backup has existing tags, you can use the <code>Tags</code> parameter to
create new tags, provided that the sum of the source backup tags and the
new tags doesn't exceed 50. Both sets of tags are merged. If there are
tag conflicts (for example, two tags with the same key but different
values), the tags created with the <code>Tags</code> parameter take
precedence.</p></td>
</tr>
<tr class="even">
<td><code id="fsx_copy_backup_:_Tags">Tags</code></td>
<td></td>
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

    svc$copy_backup(
      ClientRequestToken = "string",
      SourceBackupId = "string",
      SourceRegion = "string",
      KmsKeyId = "string",
      CopyTags = TRUE|FALSE,
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Examples

    ## Not run: 
    # This operation copies an Amazon FSx backup.
    svc$copy_backup(
      SourceBackupId = "backup-03e3c82e0183b7b6b",
      SourceRegion = "us-east-2"
    )

    ## End(Not run)
