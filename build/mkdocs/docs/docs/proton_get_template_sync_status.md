<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>proton_get_template_sync_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get the status of a template sync

### Description

Get the status of a template sync.

### Usage

    proton_get_template_sync_status(templateName, templateType,
      templateVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="proton_get_template_sync_status_:_templateName">templateName</code></td>
<td><p>[required] The template name.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_get_template_sync_status_:_templateType">templateType</code></td>
<td><p>[required] The template type.</p></td>
</tr>
<tr class="odd">
<td><code
id="proton_get_template_sync_status_:_templateVersion">templateVersion</code></td>
<td><p>[required] The template major version.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      desiredState = list(
        branch = "string",
        directory = "string",
        repositoryName = "string",
        repositoryProvider = "GITHUB"|"GITHUB_ENTERPRISE"|"BITBUCKET",
        sha = "string"
      ),
      latestSuccessfulSync = list(
        events = list(
          list(
            event = "string",
            externalId = "string",
            time = as.POSIXct(
              "2015-01-01"
            ),
            type = "string"
          )
        ),
        initialRevision = list(
          branch = "string",
          directory = "string",
          repositoryName = "string",
          repositoryProvider = "GITHUB"|"GITHUB_ENTERPRISE"|"BITBUCKET",
          sha = "string"
        ),
        startedAt = as.POSIXct(
          "2015-01-01"
        ),
        status = "INITIATED"|"IN_PROGRESS"|"SUCCEEDED"|"FAILED",
        target = "string",
        targetRevision = list(
          branch = "string",
          directory = "string",
          repositoryName = "string",
          repositoryProvider = "GITHUB"|"GITHUB_ENTERPRISE"|"BITBUCKET",
          sha = "string"
        )
      ),
      latestSync = list(
        events = list(
          list(
            event = "string",
            externalId = "string",
            time = as.POSIXct(
              "2015-01-01"
            ),
            type = "string"
          )
        ),
        initialRevision = list(
          branch = "string",
          directory = "string",
          repositoryName = "string",
          repositoryProvider = "GITHUB"|"GITHUB_ENTERPRISE"|"BITBUCKET",
          sha = "string"
        ),
        startedAt = as.POSIXct(
          "2015-01-01"
        ),
        status = "INITIATED"|"IN_PROGRESS"|"SUCCEEDED"|"FAILED",
        target = "string",
        targetRevision = list(
          branch = "string",
          directory = "string",
          repositoryName = "string",
          repositoryProvider = "GITHUB"|"GITHUB_ENTERPRISE"|"BITBUCKET",
          sha = "string"
        )
      )
    )

### Request syntax

    svc$get_template_sync_status(
      templateName = "string",
      templateType = "ENVIRONMENT"|"SERVICE",
      templateVersion = "string"
    )
