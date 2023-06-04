<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_update_theme_alias</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an alias of a theme

### Description

Updates an alias of a theme.

### Usage

    quicksight_update_theme_alias(AwsAccountId, ThemeId, AliasName,
      ThemeVersionNumber)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_update_theme_alias_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID of the Amazon Web Services account that
contains the theme alias that you're updating.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_update_theme_alias_:_ThemeId">ThemeId</code></td>
<td><p>[required] The ID for the theme.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_update_theme_alias_:_AliasName">AliasName</code></td>
<td><p>[required] The name of the theme alias that you want to
update.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_update_theme_alias_:_ThemeVersionNumber">ThemeVersionNumber</code></td>
<td><p>[required] The version number of the theme that the alias should
reference.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ThemeAlias = list(
        Arn = "string",
        AliasName = "string",
        ThemeVersionNumber = 123
      ),
      Status = 123,
      RequestId = "string"
    )

### Request syntax

    svc$update_theme_alias(
      AwsAccountId = "string",
      ThemeId = "string",
      AliasName = "string",
      ThemeVersionNumber = 123
    )
