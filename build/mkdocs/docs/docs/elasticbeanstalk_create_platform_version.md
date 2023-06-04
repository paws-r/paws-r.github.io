<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticbeanstalk_create_platform_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Create a new version of your custom platform

### Description

Create a new version of your custom platform.

### Usage

    elasticbeanstalk_create_platform_version(PlatformName, PlatformVersion,
      PlatformDefinitionBundle, EnvironmentName, OptionSettings, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticbeanstalk_create_platform_version_:_PlatformName">PlatformName</code></td>
<td><p>[required] The name of your custom platform.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_create_platform_version_:_PlatformVersion">PlatformVersion</code></td>
<td><p>[required] The number, such as 1.0.2, for the new platform
version.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticbeanstalk_create_platform_version_:_PlatformDefinitionBundle">PlatformDefinitionBundle</code></td>
<td><p>[required] The location of the platform definition archive in
Amazon S3.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_create_platform_version_:_EnvironmentName">EnvironmentName</code></td>
<td><p>The name of the builder environment.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticbeanstalk_create_platform_version_:_OptionSettings">OptionSettings</code></td>
<td><p>The configuration option settings to apply to the builder
environment.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_create_platform_version_:_Tags">Tags</code></td>
<td><p>Specifies the tags applied to the new platform version.</p>
<p>Elastic Beanstalk applies these tags only to the platform version.
Environments that you create using the platform version don't inherit
the tags.</p></td>
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
      ),
      Builder = list(
        ARN = "string"
      )
    )

### Request syntax

    svc$create_platform_version(
      PlatformName = "string",
      PlatformVersion = "string",
      PlatformDefinitionBundle = list(
        S3Bucket = "string",
        S3Key = "string"
      ),
      EnvironmentName = "string",
      OptionSettings = list(
        list(
          ResourceName = "string",
          Namespace = "string",
          OptionName = "string",
          Value = "string"
        )
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
