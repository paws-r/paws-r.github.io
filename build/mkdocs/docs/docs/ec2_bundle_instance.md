<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_bundle_instance</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Bundles an Amazon instance store-backed Windows instance

### Description

Bundles an Amazon instance store-backed Windows instance.

During bundling, only the root device volume (C:\\ is bundled. Data on
other instance store volumes is not preserved.

This action is not applicable for Linux/Unix instances or Windows
instances that are backed by Amazon EBS.

### Usage

    ec2_bundle_instance(InstanceId, Storage, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_bundle_instance_:_InstanceId">InstanceId</code></td>
<td><p>[required] The ID of the instance to bundle.</p>
<p>Type: String</p>
<p>Default: None</p>
<p>Required: Yes</p></td>
</tr>
<tr class="even">
<td><code id="ec2_bundle_instance_:_Storage">Storage</code></td>
<td><p>[required] The bucket in which to store the AMI. You can specify
a bucket that you already own or a new bucket that Amazon EC2 creates on
your behalf. If you specify a bucket that belongs to someone else,
Amazon EC2 returns an error.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_bundle_instance_:_DryRun">DryRun</code></td>
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
      BundleTask = list(
        BundleId = "string",
        BundleTaskError = list(
          Code = "string",
          Message = "string"
        ),
        InstanceId = "string",
        Progress = "string",
        StartTime = as.POSIXct(
          "2015-01-01"
        ),
        State = "pending"|"waiting-for-shutdown"|"bundling"|"storing"|"cancelling"|"complete"|"failed",
        Storage = list(
          S3 = list(
            AWSAccessKeyId = "string",
            Bucket = "string",
            Prefix = "string",
            UploadPolicy = raw,
            UploadPolicySignature = "string"
          )
        ),
        UpdateTime = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$bundle_instance(
      InstanceId = "string",
      Storage = list(
        S3 = list(
          AWSAccessKeyId = "string",
          Bucket = "string",
          Prefix = "string",
          UploadPolicy = raw,
          UploadPolicySignature = "string"
        )
      ),
      DryRun = TRUE|FALSE
    )
