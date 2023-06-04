<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_describe_theme</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes a theme

### Description

Describes a theme.

### Usage

    quicksight_describe_theme(AwsAccountId, ThemeId, VersionNumber,
      AliasName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_describe_theme_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID of the Amazon Web Services account that
contains the theme that you're describing.</p></td>
</tr>
<tr class="even">
<td><code id="quicksight_describe_theme_:_ThemeId">ThemeId</code></td>
<td><p>[required] The ID for the theme.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_describe_theme_:_VersionNumber">VersionNumber</code></td>
<td><p>The version number for the version to describe. If a
<code>VersionNumber</code> parameter value isn't provided, the latest
version of the theme is described.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_describe_theme_:_AliasName">AliasName</code></td>
<td><p>The alias of the theme that you want to describe. If you name a
specific alias, you describe the version that the alias points to. You
can specify the latest version of the theme by providing the keyword
<code style="white-space: pre;">⁠$LATEST⁠</code> in the
<code>AliasName</code> parameter. The keyword <code
style="white-space: pre;">⁠$PUBLISHED⁠</code> doesn't apply to
themes.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Theme = list(
        Arn = "string",
        Name = "string",
        ThemeId = "string",
        Version = list(
          VersionNumber = 123,
          Arn = "string",
          Description = "string",
          BaseThemeId = "string",
          CreatedTime = as.POSIXct(
            "2015-01-01"
          ),
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
          Errors = list(
            list(
              Type = "INTERNAL_FAILURE",
              Message = "string"
            )
          ),
          Status = "CREATION_IN_PROGRESS"|"CREATION_SUCCESSFUL"|"CREATION_FAILED"|"UPDATE_IN_PROGRESS"|"UPDATE_SUCCESSFUL"|"UPDATE_FAILED"|"DELETED"
        ),
        CreatedTime = as.POSIXct(
          "2015-01-01"
        ),
        LastUpdatedTime = as.POSIXct(
          "2015-01-01"
        ),
        Type = "QUICKSIGHT"|"CUSTOM"|"ALL"
      ),
      Status = 123,
      RequestId = "string"
    )

### Request syntax

    svc$describe_theme(
      AwsAccountId = "string",
      ThemeId = "string",
      VersionNumber = 123,
      AliasName = "string"
    )
