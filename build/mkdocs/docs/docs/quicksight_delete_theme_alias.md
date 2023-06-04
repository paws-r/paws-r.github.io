<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_delete_theme_alias</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the version of the theme that the specified theme alias points to

### Description

Deletes the version of the theme that the specified theme alias points
to. If you provide a specific alias, you delete the version of the theme
that the alias points to.

### Usage

    quicksight_delete_theme_alias(AwsAccountId, ThemeId, AliasName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_delete_theme_alias_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID of the Amazon Web Services account that
contains the theme alias to delete.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_delete_theme_alias_:_ThemeId">ThemeId</code></td>
<td><p>[required] The ID for the theme that the specified alias is
for.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_delete_theme_alias_:_AliasName">AliasName</code></td>
<td><p>[required] The unique name for the theme alias to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AliasName = "string",
      Arn = "string",
      RequestId = "string",
      Status = 123,
      ThemeId = "string"
    )

### Request syntax

    svc$delete_theme_alias(
      AwsAccountId = "string",
      ThemeId = "string",
      AliasName = "string"
    )
