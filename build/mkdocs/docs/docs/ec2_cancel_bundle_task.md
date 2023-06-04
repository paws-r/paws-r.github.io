<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_cancel_bundle_task</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Cancels a bundling operation for an instance store-backed Windows instance

### Description

Cancels a bundling operation for an instance store-backed Windows
instance.

### Usage

    ec2_cancel_bundle_task(BundleId, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_cancel_bundle_task_:_BundleId">BundleId</code></td>
<td><p>[required] The ID of the bundle task.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_cancel_bundle_task_:_DryRun">DryRun</code></td>
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

    svc$cancel_bundle_task(
      BundleId = "string",
      DryRun = TRUE|FALSE
    )
