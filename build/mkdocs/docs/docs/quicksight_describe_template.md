<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_describe_template</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes a template's metadata

### Description

Describes a template's metadata.

### Usage

    quicksight_describe_template(AwsAccountId, TemplateId, VersionNumber,
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
id="quicksight_describe_template_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID of the Amazon Web Services account that
contains the template that you're describing.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_describe_template_:_TemplateId">TemplateId</code></td>
<td><p>[required] The ID for the template.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_describe_template_:_VersionNumber">VersionNumber</code></td>
<td><p>(Optional) The number for the version to describe. If a
<code>VersionNumber</code> parameter value isn't provided, the latest
version of the template is described.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_describe_template_:_AliasName">AliasName</code></td>
<td><p>The alias of the template that you want to describe. If you name
a specific alias, you describe the version that the alias points to. You
can specify the latest version of the template by providing the keyword
<code style="white-space: pre;">⁠$LATEST⁠</code> in the
<code>AliasName</code> parameter. The keyword <code
style="white-space: pre;">⁠$PUBLISHED⁠</code> doesn't apply to
templates.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Template = list(
        Arn = "string",
        Name = "string",
        Version = list(
          CreatedTime = as.POSIXct(
            "2015-01-01"
          ),
          Errors = list(
            list(
              Type = "SOURCE_NOT_FOUND"|"DATA_SET_NOT_FOUND"|"INTERNAL_FAILURE"|"ACCESS_DENIED",
              Message = "string",
              ViolatedEntities = list(
                list(
                  Path = "string"
                )
              )
            )
          ),
          VersionNumber = 123,
          Status = "CREATION_IN_PROGRESS"|"CREATION_SUCCESSFUL"|"CREATION_FAILED"|"UPDATE_IN_PROGRESS"|"UPDATE_SUCCESSFUL"|"UPDATE_FAILED"|"DELETED",
          DataSetConfigurations = list(
            list(
              Placeholder = "string",
              DataSetSchema = list(
                ColumnSchemaList = list(
                  list(
                    Name = "string",
                    DataType = "string",
                    GeographicRole = "string"
                  )
                )
              ),
              ColumnGroupSchemaList = list(
                list(
                  Name = "string",
                  ColumnGroupColumnSchemaList = list(
                    list(
                      Name = "string"
                    )
                  )
                )
              )
            )
          ),
          Description = "string",
          SourceEntityArn = "string",
          ThemeArn = "string",
          Sheets = list(
            list(
              SheetId = "string",
              Name = "string"
            )
          )
        ),
        TemplateId = "string",
        LastUpdatedTime = as.POSIXct(
          "2015-01-01"
        ),
        CreatedTime = as.POSIXct(
          "2015-01-01"
        )
      ),
      Status = 123,
      RequestId = "string"
    )

### Request syntax

    svc$describe_template(
      AwsAccountId = "string",
      TemplateId = "string",
      VersionNumber = 123,
      AliasName = "string"
    )
