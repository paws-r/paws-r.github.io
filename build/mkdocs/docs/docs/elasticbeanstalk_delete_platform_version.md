<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticbeanstalk_delete_platform_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified version of a custom platform

### Description

Deletes the specified version of a custom platform.

### Usage

    elasticbeanstalk_delete_platform_version(PlatformArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticbeanstalk_delete_platform_version_:_PlatformArn">PlatformArn</code></td>
<td><p>The ARN of the version of the custom platform.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PlatformSummary = list(
        PlatformArn = "string",
        PlatformOwner = "string",
        PlatformStatus = "Creating"|"Failed"|"Ready"|"Deleting"|"Deleted",
        PlatformCategory = "string",
        OperatingSystemName = "string",
        OperatingSystemVersion = "string",
        SupportedTierList = list(
          "string"
        ),
        SupportedAddonList = list(
          "string"
        ),
        PlatformLifecycleState = "string",
        PlatformVersion = "string",
        PlatformBranchName = "string",
        PlatformBranchLifecycleState = "string"
      )
    )

### Request syntax

    svc$delete_platform_version(
      PlatformArn = "string"
    )
