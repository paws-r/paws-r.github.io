<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_conversion_tasks</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified conversion tasks or all your conversion tasks

### Description

Describes the specified conversion tasks or all your conversion tasks.
For more information, see the [VM Import/Export User
Guide](https://docs.aws.amazon.com/vm-import/latest/userguide/).

For information about the import manifest referenced by this API action,
see [VM Import
Manifest](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/manifest.html).

### Usage

    ec2_describe_conversion_tasks(ConversionTaskIds, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_conversion_tasks_:_ConversionTaskIds">ConversionTaskIds</code></td>
<td><p>The conversion task IDs.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_describe_conversion_tasks_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ConversionTasks = list(
        list(
          ConversionTaskId = "string",
          ExpirationTime = "string",
          ImportInstance = list(
            Description = "string",
            InstanceId = "string",
            Platform = "Windows",
            Volumes = list(
              list(
                AvailabilityZone = "string",
                BytesConverted = 123,
                Description = "string",
                Image = list(
                  Checksum = "string",
                  Format = "VMDK"|"RAW"|"VHD",
                  ImportManifestUrl = "string",
                  Size = 123
                ),
                Status = "string",
                StatusMessage = "string",
                Volume = list(
                  Id = "string",
                  Size = 123
                )
              )
            )
          ),
          ImportVolume = list(
            AvailabilityZone = "string",
            BytesConverted = 123,
            Description = "string",
            Image = list(
              Checksum = "string",
              Format = "VMDK"|"RAW"|"VHD",
              ImportManifestUrl = "string",
              Size = 123
            ),
            Volume = list(
              Id = "string",
              Size = 123
            )
          ),
          State = "active"|"cancelling"|"cancelled"|"completed",
          StatusMessage = "string",
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          )
        )
      )
    )

### Request syntax

    svc$describe_conversion_tasks(
      ConversionTaskIds = list(
        "string"
      ),
      DryRun = TRUE|FALSE
    )
