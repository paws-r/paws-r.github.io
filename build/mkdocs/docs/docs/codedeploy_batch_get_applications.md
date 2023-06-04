<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codedeploy_batch_get_applications</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about one or more applications

### Description

Gets information about one or more applications. The maximum number of
applications that can be returned is 100.

### Usage

    codedeploy_batch_get_applications(applicationNames)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codedeploy_batch_get_applications_:_applicationNames">applicationNames</code></td>
<td><p>[required] A list of application names separated by spaces. The
maximum number of application names you can specify is 100.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      applicationsInfo = list(
        list(
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
    )

### Request syntax

    svc$batch_get_applications(
      applicationNames = list(
        "string"
      )
    )
