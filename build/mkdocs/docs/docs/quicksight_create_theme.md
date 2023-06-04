<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_create_theme</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a theme

### Description

Creates a theme.

A *theme* is set of configuration options for color and layout. Themes
apply to analyses and dashboards. For more information, see [Using
Themes in Amazon
QuickSight](https://docs.aws.amazon.com/quicksight/latest/user/themes-in-quicksight.html)
in the *Amazon QuickSight User Guide*.

### Usage

    quicksight_create_theme(AwsAccountId, ThemeId, Name, BaseThemeId,
      VersionDescription, Configuration, Permissions, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_create_theme_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID of the Amazon Web Services account where you
want to store the new theme.</p></td>
</tr>
<tr class="even">
<td><code id="quicksight_create_theme_:_ThemeId">ThemeId</code></td>
<td><p>[required] An ID for the theme that you want to create. The theme
ID is unique per Amazon Web Services Region in each Amazon Web Services
account.</p></td>
</tr>
<tr class="odd">
<td><code id="quicksight_create_theme_:_Name">Name</code></td>
<td><p>[required] A display name for the theme.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_create_theme_:_BaseThemeId">BaseThemeId</code></td>
<td><p>[required] The ID of the theme that a custom theme will inherit
from. All themes inherit from one of the starting themes defined by
Amazon QuickSight. For a list of the starting themes, use
<code>list_themes</code> or choose <strong>Themes</strong> from within
an analysis.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_create_theme_:_VersionDescription">VersionDescription</code></td>
<td><p>A description of the first version of the theme that you're
creating. Every time <code>update_theme</code> is called, a new version
is created. Each version of the theme has a description of the version
in the <code>VersionDescription</code> field.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_create_theme_:_Configuration">Configuration</code></td>
<td><p>[required] The theme configuration, which contains the theme
display properties.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_create_theme_:_Permissions">Permissions</code></td>
<td><p>A valid grouping of resource permissions to apply to the new
theme.</p></td>
</tr>
<tr class="even">
<td><code id="quicksight_create_theme_:_Tags">Tags</code></td>
<td><p>A map of the key-value pairs for the resource tag or tags that
you want to add to the resource.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Arn = "string",
      VersionArn = "string",
      ThemeId = "string",
      CreationStatus = "CREATION_IN_PROGRESS"|"CREATION_SUCCESSFUL"|"CREATION_FAILED"|"UPDATE_IN_PROGRESS"|"UPDATE_SUCCESSFUL"|"UPDATE_FAILED"|"DELETED",
      Status = 123,
      RequestId = "string"
    )

### Request syntax

    svc$create_theme(
      AwsAccountId = "string",
      ThemeId = "string",
      Name = "string",
      BaseThemeId = "string",
      VersionDescription = "string",
      Configuration = list(
        DataColorPalette = list(
          Colors = list(
            "string"
          ),
          MinMaxGradient = list(
            "string"
          ),
          EmptyFillColor = "string"
        ),
        UIColorPalette = list(
          PrimaryForeground = "string",
          PrimaryBackground = "string",
          SecondaryForeground = "string",
          SecondaryBackground = "string",
          Accent = "string",
          AccentForeground = "string",
          Danger = "string",
          DangerForeground = "string",
          Warning = "string",
          WarningForeground = "string",
          Success = "string",
          SuccessForeground = "string",
          Dimension = "string",
          DimensionForeground = "string",
          Measure = "string",
          MeasureForeground = "string"
        ),
        Sheet = list(
          Tile = list(
            Border = list(
              Show = TRUE|FALSE
            )
          ),
          TileLayout = list(
            Gutter = list(
              Show = TRUE|FALSE
            ),
            Margin = list(
              Show = TRUE|FALSE
            )
          )
        ),
        Typography = list(
          FontFamilies = list(
            list(
              FontFamily = "string"
            )
          )
        )
      ),
      Permissions = list(
        list(
          Principal = "string",
          Actions = list(
            "string"
          )
        )
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
