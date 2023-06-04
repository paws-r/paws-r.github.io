<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_import_volume</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an import volume task using metadata from the specified disk image

### Description

Creates an import volume task using metadata from the specified disk
image.

This API action supports only single-volume VMs. To import multi-volume
VMs, use `import_image` instead. To import a disk to a snapshot, use
`import_snapshot` instead.

This API action is not supported by the Command Line Interface (CLI).
For information about using the Amazon EC2 CLI, which is deprecated, see
[Importing Disks to Amazon
EBS](https://awsdocs.s3.amazonaws.com/EC2/ec2-clt.pdf#importing-your-volumes-into-amazon-ebs)
in the *Amazon EC2 CLI Reference* PDF file.

For information about the import manifest referenced by this API action,
see [VM Import
Manifest](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/manifest.html).

### Usage

    ec2_import_volume(AvailabilityZone, Description, DryRun, Image, Volume)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_import_volume_:_AvailabilityZone">AvailabilityZone</code></td>
<td><p>[required] The Availability Zone for the resulting EBS
volume.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_import_volume_:_Description">Description</code></td>
<td><p>A description of the volume.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_import_volume_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_import_volume_:_Image">Image</code></td>
<td><p>[required] The disk image.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_import_volume_:_Volume">Volume</code></td>
<td><p>[required] The volume size.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ConversionTask = list(
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

### Request syntax

    svc$import_volume(
      AvailabilityZone = "string",
      Description = "string",
      DryRun = TRUE|FALSE,
      Image = list(
        Bytes = 123,
        Format = "VMDK"|"RAW"|"VHD",
        ImportManifestUrl = "string"
      ),
      Volume = list(
        Size = 123
      )
    )
