<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fsx_update_file_system</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Use this operation to update the configuration of an existing Amazon FSx file system

### Description

Use this operation to update the configuration of an existing Amazon FSx
file system. You can update multiple properties in a single request.

For FSx for Windows File Server file systems, you can update the
following properties:

-   `AuditLogConfiguration`

-   `AutomaticBackupRetentionDays`

-   `DailyAutomaticBackupStartTime`

-   `SelfManagedActiveDirectoryConfiguration`

-   `StorageCapacity`

-   `ThroughputCapacity`

-   `WeeklyMaintenanceStartTime`

For FSx for Lustre file systems, you can update the following
properties:

-   `AutoImportPolicy`

-   `AutomaticBackupRetentionDays`

-   `DailyAutomaticBackupStartTime`

-   `DataCompressionType`

-   `LustreRootSquashConfiguration`

-   `StorageCapacity`

-   `WeeklyMaintenanceStartTime`

For FSx for ONTAP file systems, you can update the following properties:

-   `AddRouteTableIds`

-   `AutomaticBackupRetentionDays`

-   `DailyAutomaticBackupStartTime`

-   `DiskIopsConfiguration`

-   `FsxAdminPassword`

-   `RemoveRouteTableIds`

-   `StorageCapacity`

-   `ThroughputCapacity`

-   `WeeklyMaintenanceStartTime`

For FSx for OpenZFS file systems, you can update the following
properties:

-   `AutomaticBackupRetentionDays`

-   `CopyTagsToBackups`

-   `CopyTagsToVolumes`

-   `DailyAutomaticBackupStartTime`

-   `DiskIopsConfiguration`

-   `StorageCapacity`

-   `ThroughputCapacity`

-   `WeeklyMaintenanceStartTime`

### Usage

    fsx_update_file_system(FileSystemId, ClientRequestToken,
      StorageCapacity, WindowsConfiguration, LustreConfiguration,
      OntapConfiguration, OpenZFSConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="fsx_update_file_system_:_FileSystemId">FileSystemId</code></td>
<td><p>[required] The ID of the file system that you are
updating.</p></td>
</tr>
<tr class="even">
<td><code
id="fsx_update_file_system_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>A string of up to 63 ASCII characters that Amazon FSx uses to
ensure idempotent updates. This string is automatically filled on your
behalf when you use the Command Line Interface (CLI) or an Amazon Web
Services SDK.</p></td>
</tr>
<tr class="odd">
<td><code
id="fsx_update_file_system_:_StorageCapacity">StorageCapacity</code></td>
<td><p>Use this parameter to increase the storage capacity of an FSx for
Windows File Server, FSx for Lustre, FSx for OpenZFS, or FSx for ONTAP
file system. Specifies the storage capacity target value, in GiB, to
increase the storage capacity for the file system that you're
updating.</p>
<p>You can't make a storage capacity increase request if there is an
existing storage capacity increase request in progress.</p>
<p>For Lustre file systems, the storage capacity target value can be the
following:</p>
<ul>
<li><p>For <code>SCRATCH_2</code>, <code>PERSISTENT_1</code>, and <code
style="white-space: pre;">⁠PERSISTENT_2 SSD⁠</code> deployment types,
valid values are in multiples of 2400 GiB. The value must be greater
than the current storage capacity.</p></li>
<li><p>For <code style="white-space: pre;">⁠PERSISTENT HDD⁠</code> file
systems, valid values are multiples of 6000 GiB for 12-MBps throughput
per TiB file systems and multiples of 1800 GiB for 40-MBps throughput
per TiB file systems. The values must be greater than the current
storage capacity.</p></li>
<li><p>For <code>SCRATCH_1</code> file systems, you can't increase the
storage capacity.</p></li>
</ul>
<p>For more information, see <a
href="https://docs.aws.amazon.com/fsx/latest/LustreGuide/managing-storage-capacity.html">Managing
storage and throughput capacity</a> in the <em>FSx for Lustre User
Guide</em>.</p>
<p>For FSx for OpenZFS file systems, the storage capacity target value
must be at least 10 percent greater than the current storage capacity
value. For more information, see <a
href="https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/managing-storage-capacity.html">Managing
storage capacity</a> in the <em>FSx for OpenZFS User Guide</em>.</p>
<p>For Windows file systems, the storage capacity target value must be
at least 10 percent greater than the current storage capacity value. To
increase storage capacity, the file system must have at least 16 MBps of
throughput capacity. For more information, see <a
href="https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-storage-capacity.html">Managing
storage capacity</a> in the <em>Amazon FSx for Windows File Server User
Guide</em>.</p>
<p>For ONTAP file systems, the storage capacity target value must be at
least 10 percent greater than the current storage capacity value. For
more information, see <a
href="https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/managing-storage-capacity.html">Managing
storage capacity and provisioned IOPS</a> in the <em>Amazon FSx for
NetApp ONTAP User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="fsx_update_file_system_:_WindowsConfiguration">WindowsConfiguration</code></td>
<td><p>The configuration updates for an Amazon FSx for Windows File
Server file system.</p></td>
</tr>
<tr class="odd">
<td><code
id="fsx_update_file_system_:_LustreConfiguration">LustreConfiguration</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="fsx_update_file_system_:_OntapConfiguration">OntapConfiguration</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="fsx_update_file_system_:_OpenZFSConfiguration">OpenZFSConfiguration</code></td>
<td><p>The configuration updates for an Amazon FSx for OpenZFS file
system.</p></td>
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

    svc$update_file_system(
      FileSystemId = "string",
      ClientRequestToken = "string",
      StorageCapacity = 123,
      WindowsConfiguration = list(
        WeeklyMaintenanceStartTime = "string",
        DailyAutomaticBackupStartTime = "string",
        AutomaticBackupRetentionDays = 123,
        ThroughputCapacity = 123,
        SelfManagedActiveDirectoryConfiguration = list(
          UserName = "string",
          Password = "string",
          DnsIps = list(
            "string"
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
        DailyAutomaticBackupStartTime = "string",
        AutomaticBackupRetentionDays = 123,
        AutoImportPolicy = "NONE"|"NEW"|"NEW_CHANGED"|"NEW_CHANGED_DELETED",
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
      OntapConfiguration = list(
        AutomaticBackupRetentionDays = 123,
        DailyAutomaticBackupStartTime = "string",
        FsxAdminPassword = "string",
        WeeklyMaintenanceStartTime = "string",
        DiskIopsConfiguration = list(
          Mode = "AUTOMATIC"|"USER_PROVISIONED",
          Iops = 123
        ),
        ThroughputCapacity = 123,
        AddRouteTableIds = list(
          "string"
        ),
        RemoveRouteTableIds = list(
          "string"
        )
      ),
      OpenZFSConfiguration = list(
        AutomaticBackupRetentionDays = 123,
        CopyTagsToBackups = TRUE|FALSE,
        CopyTagsToVolumes = TRUE|FALSE,
        DailyAutomaticBackupStartTime = "string",
        ThroughputCapacity = 123,
        WeeklyMaintenanceStartTime = "string",
        DiskIopsConfiguration = list(
          Mode = "AUTOMATIC"|"USER_PROVISIONED",
          Iops = 123
        )
      )
    )

### Examples

    ## Not run: 
    # This operation updates an existing file system.
    svc$update_file_system(
      FileSystemId = "fs-0498eed5fe91001ec",
      WindowsConfiguration = list(
        AutomaticBackupRetentionDays = 10L,
        DailyAutomaticBackupStartTime = "06:00",
        WeeklyMaintenanceStartTime = "3:06:00"
      )
    )

    ## End(Not run)
