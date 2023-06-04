<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>efs_update_file_system</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the throughput mode or the amount of provisioned throughput of an existing file system

### Description

Updates the throughput mode or the amount of provisioned throughput of
an existing file system.

### Usage

    efs_update_file_system(FileSystemId, ThroughputMode,
      ProvisionedThroughputInMibps)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="efs_update_file_system_:_FileSystemId">FileSystemId</code></td>
<td><p>[required] The ID of the file system that you want to
update.</p></td>
</tr>
<tr class="even">
<td><code
id="efs_update_file_system_:_ThroughputMode">ThroughputMode</code></td>
<td><p>(Optional) Updates the file system's throughput mode. If you're
not updating your throughput mode, you don't need to provide this value
in your request. If you are changing the <code>ThroughputMode</code> to
<code>provisioned</code>, you must also set a value for
<code>ProvisionedThroughputInMibps</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="efs_update_file_system_:_ProvisionedThroughputInMibps">ProvisionedThroughputInMibps</code></td>
<td><p>(Optional) Sets the amount of provisioned throughput, in MiB/s,
for the file system. Valid values are 1-1024. If you are changing the
throughput mode to provisioned, you must also provide the amount of
provisioned throughput. Required if <code>ThroughputMode</code> is
changed to <code>provisioned</code> on update.</p></td>
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

    svc$update_file_system(
      FileSystemId = "string",
      ThroughputMode = "bursting"|"provisioned"|"elastic",
      ProvisionedThroughputInMibps = 123.0
    )
