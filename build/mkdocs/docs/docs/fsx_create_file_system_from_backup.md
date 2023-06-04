<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fsx_create_file_system_from_backup</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new Amazon FSx for Lustre, Amazon FSx for Windows File Server, or Amazon FSx for OpenZFS file system from an existing Amazon FSx backup

### Description

Creates a new Amazon FSx for Lustre, Amazon FSx for Windows File Server,
or Amazon FSx for OpenZFS file system from an existing Amazon FSx
backup.

If a file system with the specified client request token exists and the
parameters match, this operation returns the description of the file
system. If a file system with the specified client request token exists
but the parameters don't match, this call returns
`IncompatibleParameterError`. If a file system with the specified client
request token doesn't exist, this operation does the following:

-   Creates a new Amazon FSx file system from backup with an assigned
    ID, and an initial lifecycle state of `CREATING`.

-   Returns the description of the file system.

Parameters like the Active Directory, default share name, automatic
backup, and backup settings default to the parameters of the file system
that was backed up, unless overridden. You can explicitly supply other
settings.

By using the idempotent operation, you can retry a
`create_file_system_from_backup` call without the risk of creating an
extra file system. This approach can be useful when an initial call
fails in a way that makes it unclear whether a file system was created.
Examples are if a transport level timeout occurred, or your connection
was reset. If you use the same client request token and the initial call
created a file system, the client receives a success message as long as
the parameters are the same.

The `create_file_system_from_backup` call returns while the file
system's lifecycle state is still `CREATING`. You can check the
file-system creation status by calling the
[DescribeFileSystems](https://docs.aws.amazon.com/fsx/latest/APIReference/API_DescribeFileSystems.html)
operation, which returns the file system state along with other
information.

### Usage

    fsx_create_file_system_from_backup(BackupId, ClientRequestToken,
      SubnetIds, SecurityGroupIds, Tags, WindowsConfiguration,
      LustreConfiguration, StorageType, KmsKeyId, FileSystemTypeVersion,
      OpenZFSConfiguration, StorageCapacity)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="fsx_create_file_system_from_backup_:_BackupId">BackupId</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="fsx_create_file_system_from_backup_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>A string of up to 63 ASCII characters that Amazon FSx uses to
ensure idempotent creation. This string is automatically filled on your
behalf when you use the Command Line Interface (CLI) or an Amazon Web
Services SDK.</p></td>
</tr>
<tr class="odd">
<td><code
id="fsx_create_file_system_from_backup_:_SubnetIds">SubnetIds</code></td>
<td><p>[required] Specifies the IDs of the subnets that the file system
will be accessible from. For Windows <code>MULTI_AZ_1</code> file system
deployment types, provide exactly two subnet IDs, one for the preferred
file server and one for the standby file server. You specify one of
these subnets as the preferred subnet using the
<code>WindowsConfiguration &gt; PreferredSubnetID</code> property.</p>
<p>Windows <code>SINGLE_AZ_1</code> and <code>SINGLE_AZ_2</code> file
system deployment types, Lustre file systems, and OpenZFS file systems
provide exactly one subnet ID. The file server is launched in that
subnet's Availability Zone.</p></td>
</tr>
<tr class="even">
<td><code
id="fsx_create_file_system_from_backup_:_SecurityGroupIds">SecurityGroupIds</code></td>
<td><p>A list of IDs for the security groups that apply to the specified
network interfaces created for file system access. These security groups
apply to all network interfaces. This value isn't returned in later
<code>DescribeFileSystem</code> requests.</p></td>
</tr>
<tr class="odd">
<td><code
id="fsx_create_file_system_from_backup_:_Tags">Tags</code></td>
<td><p>The tags to be applied to the file system at file system
creation. The key value of the <code>Name</code> tag appears in the
console as the file system name.</p></td>
</tr>
<tr class="even">
<td><code
id="fsx_create_file_system_from_backup_:_WindowsConfiguration">WindowsConfiguration</code></td>
<td><p>The configuration for this Microsoft Windows file
system.</p></td>
</tr>
<tr class="odd">
<td><code
id="fsx_create_file_system_from_backup_:_LustreConfiguration">LustreConfiguration</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="fsx_create_file_system_from_backup_:_StorageType">StorageType</code></td>
<td><p>Sets the storage type for the Windows or OpenZFS file system that
you're creating from a backup. Valid values are <code>SSD</code> and
<code>HDD</code>.</p>
<ul>
<li><p>Set to <code>SSD</code> to use solid state drive storage. SSD is
supported on all Windows and OpenZFS deployment types.</p></li>
<li><p>Set to <code>HDD</code> to use hard disk drive storage. HDD is
supported on <code>SINGLE_AZ_2</code> and <code>MULTI_AZ_1</code> FSx
for Windows File Server file system deployment types.</p></li>
</ul>
<p>The default value is <code>SSD</code>.</p>
<p>HDD and SSD storage types have different minimum storage capacity
requirements. A restored file system's storage capacity is tied to the
file system that was backed up. You can create a file system that uses
HDD storage from a backup of a file system that used SSD storage if the
original SSD file system had a storage capacity of at least 2000
GiB.</p></td>
</tr>
<tr class="odd">
<td><code
id="fsx_create_file_system_from_backup_:_KmsKeyId">KmsKeyId</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="fsx_create_file_system_from_backup_:_FileSystemTypeVersion">FileSystemTypeVersion</code></td>
<td><p>Sets the version for the Amazon FSx for Lustre file system that
you're creating from a backup. Valid values are <code>2.10</code> and
<code>2.12</code>.</p>
<p>You don't need to specify <code>FileSystemTypeVersion</code> because
it will be applied using the backup's <code>FileSystemTypeVersion</code>
setting. If you choose to specify <code>FileSystemTypeVersion</code>
when creating from backup, the value must match the backup's
<code>FileSystemTypeVersion</code> setting.</p></td>
</tr>
<tr class="odd">
<td><code
id="fsx_create_file_system_from_backup_:_OpenZFSConfiguration">OpenZFSConfiguration</code></td>
<td><p>The OpenZFS configuration for the file system that's being
created.</p></td>
</tr>
<tr class="even">
<td><code
id="fsx_create_file_system_from_backup_:_StorageCapacity">StorageCapacity</code></td>
<td><p>Sets the storage capacity of the OpenZFS file system that you're
creating from a backup, in gibibytes (GiB). Valid values are from 64 GiB
up to 524,288 GiB (512 TiB). However, the value that you specify must be
equal to or greater than the backup's storage capacity value. If you
don't use the <code>StorageCapacity</code> parameter, the default is the
backup's <code>StorageCapacity</code> value.</p>
<p>If used to create a file system other than OpenZFS, you must provide
a value that matches the backup's <code>StorageCapacity</code> value. If
you provide any other value, Amazon FSx responds with a 400 Bad
Request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
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
      )
    )

### Request syntax

    svc$create_file_system_from_backup(
      BackupId = "string",
      ClientRequestToken = "string",
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
      WindowsConfiguration = list(
        ActiveDirectoryId = "string",
        SelfManagedActiveDirectoryConfiguration = list(
          DomainName = "string",
          OrganizationalUnitDistinguishedName = "string",
          FileSystemAdministratorsGroup = "string",
          UserName = "string",
          Password = "string",
          DnsIps = list(
            "string"
          )
        ),
        DeploymentType = "MULTI_AZ_1"|"SINGLE_AZ_1"|"SINGLE_AZ_2",
        PreferredSubnetId = "string",
        ThroughputCapacity = 123,
        WeeklyMaintenanceStartTime = "string",
        DailyAutomaticBackupStartTime = "string",
        AutomaticBackupRetentionDays = 123,
        CopyTagsToBackups = TRUE|FALSE,
        Aliases = list(
          "string"
        ),
        AuditLogConfiguration = list(
          FileAccessAuditLogLevel = "DISABLED"|"SUCCESS_ONLY"|"FAILURE_ONLY"|"SUCCESS_AND_FAILURE",
          FileShareAccessAuditLogLevel = "DISABLED"|"SUCCESS_ONLY"|"FAILURE_ONLY"|"SUCCESS_AND_FAILURE",
          AuditLogDestination = "string"
        )
      ),
      LustreConfiguration = list(
        WeeklyMaintenanceStartTime = "string",
        ImportPath = "string",
        ExportPath = "string",
        ImportedFileChunkSize = 123,
        DeploymentType = "SCRATCH_1"|"SCRATCH_2"|"PERSISTENT_1"|"PERSISTENT_2",
        AutoImportPolicy = "NONE"|"NEW"|"NEW_CHANGED"|"NEW_CHANGED_DELETED",
        PerUnitStorageThroughput = 123,
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
      StorageType = "SSD"|"HDD",
      KmsKeyId = "string",
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
        RootVolumeConfiguration = list(
          RecordSizeKiB = 123,
          DataCompressionType = "NONE"|"ZSTD"|"LZ4",
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
          CopyTagsToSnapshots = TRUE|FALSE,
          ReadOnly = TRUE|FALSE
        )
      ),
      StorageCapacity = 123
    )

### Examples

    ## Not run: 
    # This operation creates a new file system from backup.
    svc$create_file_system_from_backup(
      BackupId = "backup-03e3c82e0183b7b6b",
      ClientRequestToken = "f4c94ed7-238d-4c46-93db-48cd62ec33b7",
      SecurityGroupIds = list(
        "sg-edcd9784"
      ),
      SubnetIds = list(
        "subnet-1234abcd"
      ),
      Tags = list(
        list(
          Key = "Name",
          Value = "MyFileSystem"
        )
      ),
      WindowsConfiguration = list(
        ThroughputCapacity = 8L
      )
    )

    ## End(Not run)
