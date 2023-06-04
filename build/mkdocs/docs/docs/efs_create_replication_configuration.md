<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>efs_create_replication_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a replication configuration that replicates an existing EFS file system to a new, read-only file system

### Description

Creates a replication configuration that replicates an existing EFS file
system to a new, read-only file system. For more information, see
[Amazon EFS
replication](https://docs.aws.amazon.com/efs/latest/ug/efs-replication.html)
in the *Amazon EFS User Guide*. The replication configuration specifies
the following:

-   **Source file system** - An existing EFS file system that you want
    replicated. The source file system cannot be a destination file
    system in an existing replication configuration.

-   **Destination file system configuration** - The configuration of the
    destination file system to which the source file system will be
    replicated. There can only be one destination file system in a
    replication configuration. The destination file system configuration
    consists of the following properties:

    -   **Amazon Web Services Region** - The Amazon Web Services Region
        in which the destination file system is created. Amazon EFS
        replication is available in all Amazon Web Services Regions that
        Amazon EFS is available in, except Africa (Cape Town), Asia
        Pacific (Hong Kong), Asia Pacific (Jakarta), Europe (Milan), and
        Middle East (Bahrain).

    -   **Availability Zone** - If you want the destination file system
        to use EFS One Zone availability and durability, you must
        specify the Availability Zone to create the file system in. For
        more information about EFS storage classes, see [Amazon EFS
        storage
        classes](https://docs.aws.amazon.com/efs/latest/ug/storage-classes.html)
        in the *Amazon EFS User Guide*.

    -   **Encryption** - All destination file systems are created with
        encryption at rest enabled. You can specify the Key Management
        Service (KMS) key that is used to encrypt the destination file
        system. If you don't specify a KMS key, your service-managed KMS
        key for Amazon EFS is used.

        After the file system is created, you cannot change the KMS key.

The following properties are set by default:

-   **Performance mode** - The destination file system's performance
    mode matches that of the source file system, unless the destination
    file system uses EFS One Zone storage. In that case, the General
    Purpose performance mode is used. The performance mode cannot be
    changed.

-   **Throughput mode** - The destination file system's throughput mode
    matches that of the source file system. After the file system is
    created, you can modify the throughput mode.

The following properties are turned off by default:

-   **Lifecycle management** - EFS lifecycle management and EFS
    Intelligent-Tiering are not enabled on the destination file system.
    After the destination file system is created, you can enable EFS
    lifecycle management and EFS Intelligent-Tiering.

-   **Automatic backups** - Automatic daily backups not enabled on the
    destination file system. After the file system is created, you can
    change this setting.

For more information, see [Amazon EFS
replication](https://docs.aws.amazon.com/efs/latest/ug/efs-replication.html)
in the *Amazon EFS User Guide*.

### Usage

    efs_create_replication_configuration(SourceFileSystemId, Destinations)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="efs_create_replication_configuration_:_SourceFileSystemId">SourceFileSystemId</code></td>
<td><p>[required] Specifies the Amazon EFS file system that you want to
replicate. This file system cannot already be a source or destination
file system in another replication configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="efs_create_replication_configuration_:_Destinations">Destinations</code></td>
<td><p>[required] An array of destination configuration objects. Only
one destination configuration object is supported.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SourceFileSystemId = "string",
      SourceFileSystemRegion = "string",
      SourceFileSystemArn = "string",
      OriginalSourceFileSystemArn = "string",
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      Destinations = list(
        list(
          Status = "ENABLED"|"ENABLING"|"DELETING"|"ERROR"|"PAUSED"|"PAUSING",
          FileSystemId = "string",
          Region = "string",
          LastReplicatedTimestamp = as.POSIXct(
            "2015-01-01"
          )
        )
      )
    )

### Request syntax

    svc$create_replication_configuration(
      SourceFileSystemId = "string",
      Destinations = list(
        list(
          Region = "string",
          AvailabilityZoneName = "string",
          KmsKeyId = "string"
        )
      )
    )
