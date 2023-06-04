<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codebuild_import_source_credentials</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Imports the source repository credentials for an CodeBuild project that has its source code stored in a GitHub, GitHub Enterprise, or Bitbucket repository

### Description

Imports the source repository credentials for an CodeBuild project that
has its source code stored in a GitHub, GitHub Enterprise, or Bitbucket
repository.

### Usage

    codebuild_import_source_credentials(username, token, serverType,
      authType, shouldOverwrite)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codebuild_import_source_credentials_:_username">username</code></td>
<td><p>The Bitbucket username when the <code>authType</code> is
BASIC_AUTH. This parameter is not valid for other types of source
providers or connections.</p></td>
</tr>
<tr class="even">
<td><code
id="codebuild_import_source_credentials_:_token">token</code></td>
<td><p>[required] For GitHub or GitHub Enterprise, this is the personal
access token. For Bitbucket, this is the app password.</p></td>
</tr>
<tr class="odd">
<td><code
id="codebuild_import_source_credentials_:_serverType">serverType</code></td>
<td><p>[required] The source provider used for this project.</p></td>
</tr>
<tr class="even">
<td><code
id="codebuild_import_source_credentials_:_authType">authType</code></td>
<td><p>[required] The type of authentication used to connect to a
GitHub, GitHub Enterprise, or Bitbucket repository. An OAUTH connection
is not supported by the API and must be created using the CodeBuild
console.</p></td>
</tr>
<tr class="odd">
<td><code
id="codebuild_import_source_credentials_:_shouldOverwrite">shouldOverwrite</code></td>
<td><p>Set to <code>false</code> to prevent overwriting the repository
source credentials. Set to <code>true</code> to overwrite the repository
source credentials. The default value is <code>true</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      arn = "string"
    )

### Request syntax

    svc$import_source_credentials(
      username = "string",
      token = "string",
      serverType = "GITHUB"|"BITBUCKET"|"GITHUB_ENTERPRISE",
      authType = "OAUTH"|"BASIC_AUTH"|"PERSONAL_ACCESS_TOKEN",
      shouldOverwrite = TRUE|FALSE
    )
