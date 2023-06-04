<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appstream_create_application</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an application

### Description

Creates an application.

Applications are an Amazon AppStream 2.0 resource that stores the
details about how to launch applications on Elastic fleet streaming
instances. An application consists of the launch details, icon, and
display name. Applications are associated with an app block that
contains the application binaries and other files. The applications
assigned to an Elastic fleet are the applications users can launch.

This is only supported for Elastic fleets.

### Usage

    appstream_create_application(Name, DisplayName, Description,
      IconS3Location, LaunchPath, WorkingDirectory, LaunchParameters,
      Platforms, InstanceFamilies, AppBlockArn, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="appstream_create_application_:_Name">Name</code></td>
<td><p>[required] The name of the application. This name is visible to
users when display name is not specified.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_create_application_:_DisplayName">DisplayName</code></td>
<td><p>The display name of the application. This name is visible to
users in the application catalog.</p></td>
</tr>
<tr class="odd">
<td><code
id="appstream_create_application_:_Description">Description</code></td>
<td><p>The description of the application.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_create_application_:_IconS3Location">IconS3Location</code></td>
<td><p>[required] The location in S3 of the application icon.</p></td>
</tr>
<tr class="odd">
<td><code
id="appstream_create_application_:_LaunchPath">LaunchPath</code></td>
<td><p>[required] The launch path of the application.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_create_application_:_WorkingDirectory">WorkingDirectory</code></td>
<td><p>The working directory of the application.</p></td>
</tr>
<tr class="odd">
<td><code
id="appstream_create_application_:_LaunchParameters">LaunchParameters</code></td>
<td><p>The launch parameters of the application.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_create_application_:_Platforms">Platforms</code></td>
<td><p>[required] The platforms the application supports.
WINDOWS_SERVER_2019 and AMAZON_LINUX2 are supported for Elastic
fleets.</p></td>
</tr>
<tr class="odd">
<td><code
id="appstream_create_application_:_InstanceFamilies">InstanceFamilies</code></td>
<td><p>[required] The instance families the application supports. Valid
values are GENERAL_PURPOSE and GRAPHICS_G4.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_create_application_:_AppBlockArn">AppBlockArn</code></td>
<td><p>[required] The app block ARN to which the application should be
associated</p></td>
</tr>
<tr class="odd">
<td><code id="appstream_create_application_:_Tags">Tags</code></td>
<td><p>The tags assigned to the application.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Application = list(
        Name = "string",
        DisplayName = "string",
        IconURL = "string",
        LaunchPath = "string",
        LaunchParameters = "string",
        Enabled = TRUE|FALSE,
        Metadata = list(
          "string"
        ),
        WorkingDirectory = "string",
        Description = "string",
        Arn = "string",
        AppBlockArn = "string",
        IconS3Location = list(
          S3Bucket = "string",
          S3Key = "string"
        ),
        Platforms = list(
          "WINDOWS"|"WINDOWS_SERVER_2016"|"WINDOWS_SERVER_2019"|"AMAZON_LINUX2"
        ),
        InstanceFamilies = list(
          "string"
        ),
        CreatedTime = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$create_application(
      Name = "string",
      DisplayName = "string",
      Description = "string",
      IconS3Location = list(
        S3Bucket = "string",
        S3Key = "string"
      ),
      LaunchPath = "string",
      WorkingDirectory = "string",
      LaunchParameters = "string",
      Platforms = list(
        "WINDOWS"|"WINDOWS_SERVER_2016"|"WINDOWS_SERVER_2019"|"AMAZON_LINUX2"
      ),
      InstanceFamilies = list(
        "string"
      ),
      AppBlockArn = "string",
      Tags = list(
        "string"
      )
    )
