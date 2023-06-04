<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticbeanstalk_describe_platform_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes a platform version

### Description

Describes a platform version. Provides full details. Compare to
`list_platform_versions`, which provides summary information about a
list of platform versions.

For definitions of platform version and other platform-related terms,
see [AWS Elastic Beanstalk Platforms
Glossary](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/platforms-glossary.html).

### Usage

    elasticbeanstalk_describe_platform_version(PlatformArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticbeanstalk_describe_platform_version_:_PlatformArn">PlatformArn</code></td>
<td><p>The ARN of the platform version.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PlatformDescription = list(
        PlatformArn = "string",
        PlatformOwner = "string",
        PlatformName = "string",
        PlatformVersion = "string",
        SolutionStackName = "string",
        PlatformStatus = "Creating"|"Failed"|"Ready"|"Deleting"|"Deleted",
        DateCreated = as.POSIXct(
          "2015-01-01"
        ),
        DateUpdated = as.POSIXct(
          "2015-01-01"
        ),
        PlatformCategory = "string",
        Description = "string",
        Maintainer = "string",
        OperatingSystemName = "string",
        OperatingSystemVersion = "string",
        ProgrammingLanguages = list(
          list(
            Name = "string",
            Version = "string"
          )
        ),
        Frameworks = list(
          list(
            Name = "string",
            Version = "string"
          )
        ),
        CustomAmiList = list(
          list(
            VirtualizationType = "string",
            ImageId = "string"
          )
        ),
        SupportedTierList = list(
          "string"
        ),
        SupportedAddonList = list(
          "string"
        ),
        PlatformLifecycleState = "string",
        PlatformBranchName = "string",
        PlatformBranchLifecycleState = "string"
      )
    )

### Request syntax

    svc$describe_platform_version(
      PlatformArn = "string"
    )
