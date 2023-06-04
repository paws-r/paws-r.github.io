<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codedeploy_get_application_revision</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about an application revision

### Description

Gets information about an application revision.

### Usage

    codedeploy_get_application_revision(applicationName, revision)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codedeploy_get_application_revision_:_applicationName">applicationName</code></td>
<td><p>[required] The name of the application that corresponds to the
revision.</p></td>
</tr>
<tr class="even">
<td><code
id="codedeploy_get_application_revision_:_revision">revision</code></td>
<td><p>[required] Information about the application revision to get,
including type and location.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      applicationName = "string",
      revision = list(
        revisionType = "S3"|"GitHub"|"String"|"AppSpecContent",
        s3Location = list(
          bucket = "string",
          key = "string",
          bundleType = "tar"|"tgz"|"zip"|"YAML"|"JSON",
          version = "string",
          eTag = "string"
        ),
        gitHubLocation = list(
          repository = "string",
          commitId = "string"
        ),
        string = list(
          content = "string",
          sha256 = "string"
        ),
        appSpecContent = list(
          content = "string",
          sha256 = "string"
        )
      ),
      revisionInfo = list(
        description = "string",
        deploymentGroups = list(
          "string"
        ),
        firstUsedTime = as.POSIXct(
          "2015-01-01"
        ),
        lastUsedTime = as.POSIXct(
          "2015-01-01"
        ),
        registerTime = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$get_application_revision(
      applicationName = "string",
      revision = list(
        revisionType = "S3"|"GitHub"|"String"|"AppSpecContent",
        s3Location = list(
          bucket = "string",
          key = "string",
          bundleType = "tar"|"tgz"|"zip"|"YAML"|"JSON",
          version = "string",
          eTag = "string"
        ),
        gitHubLocation = list(
          repository = "string",
          commitId = "string"
        ),
        string = list(
          content = "string",
          sha256 = "string"
        ),
        appSpecContent = list(
          content = "string",
          sha256 = "string"
        )
      )
    )
