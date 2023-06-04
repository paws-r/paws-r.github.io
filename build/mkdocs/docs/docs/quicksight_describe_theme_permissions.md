<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_describe_theme_permissions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the read and write permissions for a theme

### Description

Describes the read and write permissions for a theme.

### Usage

    quicksight_describe_theme_permissions(AwsAccountId, ThemeId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_describe_theme_permissions_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID of the Amazon Web Services account that
contains the theme that you're describing.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_describe_theme_permissions_:_ThemeId">ThemeId</code></td>
<td><p>[required] The ID for the theme that you want to describe
permissions for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ThemeId = "string",
      ThemeArn = "string",
      Permissions = list(
        list(
          Principal = "string",
          Actions = list(
            "string"
          )
        )
      ),
      RequestId = "string",
      Status = 123
    )

### Request syntax

    svc$describe_theme_permissions(
      AwsAccountId = "string",
      ThemeId = "string"
    )
