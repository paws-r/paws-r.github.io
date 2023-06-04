<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>nimblestudio_get_launch_profile_initialization</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get a launch profile initialization

### Description

Get a launch profile initialization.

### Usage

    nimblestudio_get_launch_profile_initialization(launchProfileId,
      launchProfileProtocolVersions, launchPurpose, platform, studioId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="nimblestudio_get_launch_profile_initialization_:_launchProfileId">launchProfileId</code></td>
<td><p>[required] The ID of the launch profile used to control access
from the streaming session.</p></td>
</tr>
<tr class="even">
<td><code
id="nimblestudio_get_launch_profile_initialization_:_launchProfileProtocolVersions">launchProfileProtocolVersions</code></td>
<td><p>[required] The launch profile protocol versions supported by the
client.</p></td>
</tr>
<tr class="odd">
<td><code
id="nimblestudio_get_launch_profile_initialization_:_launchPurpose">launchPurpose</code></td>
<td><p>[required] The launch purpose.</p></td>
</tr>
<tr class="even">
<td><code
id="nimblestudio_get_launch_profile_initialization_:_platform">platform</code></td>
<td><p>[required] The platform where this Launch Profile will be used,
either Windows or Linux.</p></td>
</tr>
<tr class="odd">
<td><code
id="nimblestudio_get_launch_profile_initialization_:_studioId">studioId</code></td>
<td><p>[required] The studio ID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      launchProfileInitialization = list(
        activeDirectory = list(
          computerAttributes = list(
            list(
              name = "string",
              value = "string"
            )
          ),
          directoryId = "string",
          directoryName = "string",
          dnsIpAddresses = list(
            "string"
          ),
          organizationalUnitDistinguishedName = "string",
          studioComponentId = "string",
          studioComponentName = "string"
        ),
        ec2SecurityGroupIds = list(
          "string"
        ),
        launchProfileId = "string",
        launchProfileProtocolVersion = "string",
        launchPurpose = "string",
        name = "string",
        platform = "LINUX"|"WINDOWS",
        systemInitializationScripts = list(
          list(
            runtimeRoleArn = "string",
            script = "string",
            secureInitializationRoleArn = "string",
            studioComponentId = "string",
            studioComponentName = "string"
          )
        ),
        userInitializationScripts = list(
          list(
            runtimeRoleArn = "string",
            script = "string",
            secureInitializationRoleArn = "string",
            studioComponentId = "string",
            studioComponentName = "string"
          )
        )
      )
    )

### Request syntax

    svc$get_launch_profile_initialization(
      launchProfileId = "string",
      launchProfileProtocolVersions = list(
        "string"
      ),
      launchPurpose = "string",
      platform = "string",
      studioId = "string"
    )
