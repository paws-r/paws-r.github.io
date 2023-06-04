<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codedeploy_get_application</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about an application

### Description

Gets information about an application.

### Usage

    codedeploy_get_application(applicationName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codedeploy_get_application_:_applicationName">applicationName</code></td>
<td><p>[required] The name of an CodeDeploy application associated with
the IAM user or Amazon Web Services account.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      application = list(
        applicationId = "string",
        applicationName = "string",
        createTime = as.POSIXct(
          "2015-01-01"
        ),
        linkedToGitHub = TRUE|FALSE,
        gitHubAccountName = "string",
        computePlatform = "Server"|"Lambda"|"ECS"
      )
    )

### Request syntax

    svc$get_application(
      applicationName = "string"
    )
