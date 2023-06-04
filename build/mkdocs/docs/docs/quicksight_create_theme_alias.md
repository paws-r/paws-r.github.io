<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_create_theme_alias</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a theme alias for a theme

### Description

Creates a theme alias for a theme.

### Usage

    quicksight_create_theme_alias(AwsAccountId, ThemeId, AliasName,
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
id="quicksight_create_theme_alias_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID of the Amazon Web Services account that
contains the theme for the new theme alias.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_create_theme_alias_:_ThemeId">ThemeId</code></td>
<td><p>[required] An ID for the theme alias.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_create_theme_alias_:_AliasName">AliasName</code></td>
<td><p>[required] The name that you want to give to the theme alias that
you are creating. The alias name can't begin with a <code>$</code>.
Alias names that start with <code>$</code> are reserved by Amazon
QuickSight.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_create_theme_alias_:_ThemeVersionNumber">ThemeVersionNumber</code></td>
<td><p>[required] The version number of the theme.</p></td>
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

    svc$create_theme_alias(
      AwsAccountId = "string",
      ThemeId = "string",
      AliasName = "string",
      ThemeVersionNumber = 123
    )
