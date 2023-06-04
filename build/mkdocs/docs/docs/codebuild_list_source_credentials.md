<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codebuild_list_source_credentials</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of SourceCredentialsInfo objects

### Description

Returns a list of `SourceCredentialsInfo` objects.

### Usage

    codebuild_list_source_credentials()

### Value

A list with the following syntax:

    list(
      sourceCredentialsInfos = list(
        list(
          arn = "string",
          serverType = "GITHUB"|"BITBUCKET"|"GITHUB_ENTERPRISE",
          authType = "OAUTH"|"BASIC_AUTH"|"PERSONAL_ACCESS_TOKEN"
        )
      )
    )

### Request syntax

    svc$list_source_credentials()
