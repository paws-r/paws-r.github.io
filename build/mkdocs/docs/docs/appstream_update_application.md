<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appstream_update_application</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the specified application

### Description

Updates the specified application.

### Usage

    appstream_update_application(Name, DisplayName, Description,
      IconS3Location, LaunchPath, WorkingDirectory, LaunchParameters,
      AppBlockArn, AttributesToDelete)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="appstream_update_application_:_Name">Name</code></td>
<td><p>[required] The name of the application. This name is visible to
users when display name is not specified.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_update_application_:_DisplayName">DisplayName</code></td>
<td><p>The display name of the application. This name is visible to
users in the application catalog.</p></td>
</tr>
<tr class="odd">
<td><code
id="appstream_update_application_:_Description">Description</code></td>
<td><p>The description of the application.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_update_application_:_IconS3Location">IconS3Location</code></td>
<td><p>The icon S3 location of the application.</p></td>
</tr>
<tr class="odd">
<td><code
id="appstream_update_application_:_LaunchPath">LaunchPath</code></td>
<td><p>The launch path of the application.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_update_application_:_WorkingDirectory">WorkingDirectory</code></td>
<td><p>The working directory of the application.</p></td>
</tr>
<tr class="odd">
<td><code
id="appstream_update_application_:_LaunchParameters">LaunchParameters</code></td>
<td><p>The launch parameters of the application.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_update_application_:_AppBlockArn">AppBlockArn</code></td>
<td><p>The ARN of the app block.</p></td>
</tr>
<tr class="odd">
<td><code
id="appstream_update_application_:_AttributesToDelete">AttributesToDelete</code></td>
<td><p>The attributes to delete for an application.</p></td>
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

    svc$update_application(
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
      AppBlockArn = "string",
      AttributesToDelete = list(
        "LAUNCH_PARAMETERS"|"WORKING_DIRECTORY"
      )
    )
