<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codedeploy_batch_get_application_revisions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about one or more application revisions

### Description

Gets information about one or more application revisions. The maximum
number of application revisions that can be returned is 25.

### Usage

    codedeploy_batch_get_application_revisions(applicationName, revisions)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codedeploy_batch_get_application_revisions_:_applicationName">applicationName</code></td>
<td><p>[required] The name of an CodeDeploy application about which to
get revision information.</p></td>
</tr>
<tr class="even">
<td><code
id="codedeploy_batch_get_application_revisions_:_revisions">revisions</code></td>
<td><p>[required] An array of <code>RevisionLocation</code> objects that
specify information to get about the application revisions, including
type and location. The maximum number of <code>RevisionLocation</code>
objects you can specify is 25.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      applicationName = "string",
      errorMessage = "string",
      revisions = list(
        list(
          revisionLocation = list(
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
          genericRevisionInfo = list(
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
      )
    )

### Request syntax

    svc$batch_get_application_revisions(
      applicationName = "string",
      revisions = list(
        list(
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
    )
