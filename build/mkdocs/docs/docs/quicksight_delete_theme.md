<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_delete_theme</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a theme

### Description

Deletes a theme.

### Usage

    quicksight_delete_theme(AwsAccountId, ThemeId, VersionNumber)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_delete_theme_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID of the Amazon Web Services account that
contains the theme that you're deleting.</p></td>
</tr>
<tr class="even">
<td><code id="quicksight_delete_theme_:_ThemeId">ThemeId</code></td>
<td><p>[required] An ID for the theme that you want to delete.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_delete_theme_:_VersionNumber">VersionNumber</code></td>
<td><p>The version of the theme that you want to delete.</p>
<p><strong>Note:</strong> If you don't provide a version number, you're
using this call to <code>delete_theme</code> to delete all versions of
the theme.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Arn = "string",
      RequestId = "string",
      Status = 123,
      ThemeId = "string"
    )

### Request syntax

    svc$delete_theme(
      AwsAccountId = "string",
      ThemeId = "string",
      VersionNumber = 123
    )
