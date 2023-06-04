<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>efs_create_file_system</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new, empty file system

### Description

Creates a new, empty file system. The operation requires a creation
token in the request that Amazon EFS uses to ensure idempotent creation
(calling the operation with same creation token has no effect). If a
file system does not currently exist that is owned by the caller's
Amazon Web Services account with the specified creation token, this
operation does the following:

-   Creates a new, empty file system. The file system will have an
    Amazon EFS assigned ID, and an initial lifecycle state `creating`.

-   Returns with the description of the created file system.

Otherwise, this operation returns a `FileSystemAlreadyExists` error with
the ID of the existing file system.

For basic use cases, you can use a randomly generated UUID for the
creation token.

The idempotent operation allows you to retry a `create_file_system` call
without risk of creating an extra file system. This can happen when an
initial call fails in a way that leaves it uncertain whether or not a
file system was actually created. An example might be that a transport
level timeout occurred or your connection was reset. As long as you use
the same creation token, if the initial call had succeeded in creating a
file system, the client can learn of its existence from the
`FileSystemAlreadyExists` error.

For more information, see [Creating a file
system](https://docs.aws.amazon.com/efs/latest/ug/creating-using-create-fs.html#creating-using-create-fs-part1)
in the *Amazon EFS User Guide*.

The `create_file_system` call returns while the file system's lifecycle
state is still `creating`. You can check the file system creation status
by calling the `describe_file_systems` operation, which among other
things returns the file system state.

This operation accepts an optional `PerformanceMode` parameter that you
choose for your file system. We recommend `generalPurpose` performance
mode for most file systems. File systems using the `maxIO` performance
mode can scale to higher levels of aggregate throughput and operations
per second with a tradeoff of slightly higher latencies for most file
operations. The performance mode can't be changed after the file system
has been created. For more information, see [Amazon EFS performance
modes](https://docs.aws.amazon.com/efs/latest/ug/performance.html#performancemodes.html).

You can set the throughput mode for the file system using the
`ThroughputMode` parameter.

After the file system is fully created, Amazon EFS sets its lifecycle
state to `available`, at which point you can create one or more mount
targets for the file system in your VPC. For more information, see
`create_mount_target`. You mount your Amazon EFS file system on an EC2
instances in your VPC by using the mount target. For more information,
see [Amazon EFS: How it
Works](https://docs.aws.amazon.com/efs/latest/ug/how-it-works.html).

This operation requires permissions for the
`elasticfilesystem:CreateFileSystem` action.

### Usage

    efs_create_file_system(CreationToken, PerformanceMode, Encrypted,
      KmsKeyId, ThroughputMode, ProvisionedThroughputInMibps,
      AvailabilityZoneName, Backup, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="efs_create_file_system_:_CreationToken">CreationToken</code></td>
<td><p>[required] A string of up to 64 ASCII characters. Amazon EFS uses
this to ensure idempotent creation.</p></td>
</tr>
<tr class="even">
<td><code
id="efs_create_file_system_:_PerformanceMode">PerformanceMode</code></td>
<td><p>The performance mode of the file system. We recommend
<code>generalPurpose</code> performance mode for most file systems. File
systems using the <code>maxIO</code> performance mode can scale to
higher levels of aggregate throughput and operations per second with a
tradeoff of slightly higher latencies for most file operations. The
performance mode can't be changed after the file system has been
created.</p>
<p>The <code>maxIO</code> mode is not supported on file systems using
One Zone storage classes.</p></td>
</tr>
<tr class="odd">
<td><code id="efs_create_file_system_:_Encrypted">Encrypted</code></td>
<td><p>A Boolean value that, if true, creates an encrypted file system.
When creating an encrypted file system, you have the option of
specifying an existing Key Management Service key (KMS key). If you
don't specify a KMS key, then the default KMS key for Amazon EFS, <code
style="white-space: pre;">⁠/aws/elasticfilesystem⁠</code>, is used to
protect the encrypted file system.</p></td>
</tr>
<tr class="even">
<td><code id="efs_create_file_system_:_KmsKeyId">KmsKeyId</code></td>
<td><p>The ID of the KMS key that you want to use to protect the
encrypted file system. This parameter is required only if you want to
use a non-default KMS key. If this parameter is not specified, the
default KMS key for Amazon EFS is used. You can specify a KMS key ID
using the following formats:</p>
<ul>
<li><p>Key ID - A unique identifier of the key, for example <code
style="white-space: pre;">⁠1234abcd-12ab-34cd-56ef-1234567890ab⁠</code>.</p></li>
<li><p>ARN - An Amazon Resource Name (ARN) for the key, for example
<code
style="white-space: pre;">⁠arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab⁠</code>.</p></li>
<li><p>Key alias - A previously created display name for a key, for
example <code>alias/projectKey1</code>.</p></li>
<li><p>Key alias ARN - An ARN for a key alias, for example
<code>arn:aws:kms:us-west-2:444455556666:alias/projectKey1</code>.</p></li>
</ul>
<p>If you use <code>KmsKeyId</code>, you must set the
CreateFileSystemRequest$Encrypted parameter to true.</p>
<p>EFS accepts only symmetric KMS keys. You cannot use asymmetric KMS
keys with Amazon EFS file systems.</p></td>
</tr>
<tr class="odd">
<td><code
id="efs_create_file_system_:_ThroughputMode">ThroughputMode</code></td>
<td><p>Specifies the throughput mode for the file system. The mode can
be <code>bursting</code>, <code>provisioned</code>, or
<code>elastic</code>. If you set <code>ThroughputMode</code> to
<code>provisioned</code>, you must also set a value for
<code>ProvisionedThroughputInMibps</code>. After you create the file
system, you can decrease your file system's throughput in Provisioned
Throughput mode or change between the throughput modes, with certain
time restrictions. For more information, see <a
href="https://docs.aws.amazon.com/efs/latest/ug/performance.html#provisioned-throughput">Specifying
throughput with provisioned mode</a> in the <em>Amazon EFS User
Guide</em>.</p>
<p>Default is <code>bursting</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="efs_create_file_system_:_ProvisionedThroughputInMibps">ProvisionedThroughputInMibps</code></td>
<td><p>The throughput, measured in MiB/s, that you want to provision for
a file system that you're creating. Valid values are 1-1024. Required if
<code>ThroughputMode</code> is set to <code>provisioned</code>. The
upper limit for throughput is 1024 MiB/s. To increase this limit,
contact Amazon Web Services Support. For more information, see <a
href="https://docs.aws.amazon.com/efs/latest/ug/limits.html#soft-limits">Amazon
EFS quotas that you can increase</a> in the <em>Amazon EFS User
Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="efs_create_file_system_:_AvailabilityZoneName">AvailabilityZoneName</code></td>
<td><p>Used to create a file system that uses One Zone storage classes.
It specifies the Amazon Web Services Availability Zone in which to
create the file system. Use the format <code
style="white-space: pre;">⁠us-east-1a⁠</code> to specify the Availability
Zone. For more information about One Zone storage classes, see <a
href="https://docs.aws.amazon.com/efs/latest/ug/storage-classes.html">Using
EFS storage classes</a> in the <em>Amazon EFS User Guide</em>.</p>
<p>One Zone storage classes are not available in all Availability Zones
in Amazon Web Services Regions where Amazon EFS is available.</p></td>
</tr>
<tr class="even">
<td><code id="efs_create_file_system_:_Backup">Backup</code></td>
<td><p>Specifies whether automatic backups are enabled on the file
system that you are creating. Set the value to <code>true</code> to
enable automatic backups. If you are creating a file system that uses
One Zone storage classes, automatic backups are enabled by default. For
more information, see <a
href="https://docs.aws.amazon.com/efs/latest/ug/awsbackup.html#automatic-backups">Automatic
backups</a> in the <em>Amazon EFS User Guide</em>.</p>
<p>Default is <code>false</code>. However, if you specify an
<code>AvailabilityZoneName</code>, the default is <code>true</code>.</p>
<p>Backup is not available in all Amazon Web Services Regions where
Amazon EFS is available.</p></td>
</tr>
<tr class="odd">
<td><code id="efs_create_file_system_:_Tags">Tags</code></td>
<td><p>Use to create one or more tags associated with the file system.
Each tag is a user-defined key-value pair. Name your file system on
creation by including a <code
style="white-space: pre;">⁠"Key":"Name","Value":"{value}"⁠</code>
key-value pair. Each key must be unique. For more information, see <a
href="https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html">Tagging
Amazon Web Services resources</a> in the <em>Amazon Web Services General
Reference Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      OwnerId = "string",
      CreationToken = "string",
      FileSystemId = "string",
      FileSystemArn = "string",
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      LifeCycleState = "creating"|"available"|"updating"|"deleting"|"deleted"|"error",
      Name = "string",
      NumberOfMountTargets = 123,
      SizeInBytes = list(
        Value = 123,
        Timestamp = as.POSIXct(
          "2015-01-01"
        ),
        ValueInIA = 123,
        ValueInStandard = 123
      ),
      PerformanceMode = "generalPurpose"|"maxIO",
      Encrypted = TRUE|FALSE,
      KmsKeyId = "string",
      ThroughputMode = "bursting"|"provisioned"|"elastic",
      ProvisionedThroughputInMibps = 123.0,
      AvailabilityZoneName = "string",
      AvailabilityZoneId = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Request syntax

    svc$create_file_system(
      CreationToken = "string",
      PerformanceMode = "generalPurpose"|"maxIO",
      Encrypted = TRUE|FALSE,
      KmsKeyId = "string",
      ThroughputMode = "bursting"|"provisioned"|"elastic",
      ProvisionedThroughputInMibps = 123.0,
      AvailabilityZoneName = "string",
      Backup = TRUE|FALSE,
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Examples

    ## Not run: 
    # This operation creates a new, encrypted file system with automatic
    # backups enabled, and the default generalpurpose performance mode.
    svc$create_file_system(
      Backup = TRUE,
      CreationToken = "tokenstring",
      Encrypted = TRUE,
      PerformanceMode = "generalPurpose",
      Tags = list(
        list(
          Key = "Name",
          Value = "MyFileSystem"
        )
      )
    )

    ## End(Not run)
