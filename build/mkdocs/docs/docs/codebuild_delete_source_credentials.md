<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codebuild_delete_source_credentials</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a set of GitHub, GitHub Enterprise, or Bitbucket source credentials

### Description

Deletes a set of GitHub, GitHub Enterprise, or Bitbucket source
credentials.

### Usage

    codebuild_delete_source_credentials(arn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="codebuild_delete_source_credentials_:_arn">arn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the token.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      arn = "string"
    )

### Request syntax

    svc$delete_source_credentials(
      arn = "string"
    )
