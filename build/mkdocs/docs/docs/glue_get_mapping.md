<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_get_mapping</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates mappings

### Description

Creates mappings.

### Usage

    glue_get_mapping(Source, Sinks, Location)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_get_mapping_:_Source">Source</code></td>
<td><p>[required] Specifies the source table.</p></td>
</tr>
<tr class="even">
<td><code id="glue_get_mapping_:_Sinks">Sinks</code></td>
<td><p>A list of target tables.</p></td>
</tr>
<tr class="odd">
<td><code id="glue_get_mapping_:_Location">Location</code></td>
<td><p>Parameters for the mapping.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Mapping = list(
        list(
          SourceTable = "string",
          SourcePath = "string",
          SourceType = "string",
          TargetTable = "string",
          TargetPath = "string",
          TargetType = "string"
        )
      )
    )

### Request syntax

    svc$get_mapping(
      Source = list(
        DatabaseName = "string",
        TableName = "string"
      ),
      Sinks = list(
        list(
          DatabaseName = "string",
          TableName = "string"
        )
      ),
      Location = list(
        Jdbc = list(
          list(
            Name = "string",
            Value = "string",
            Param = TRUE|FALSE
          )
        ),
        S3 = list(
          list(
            Name = "string",
            Value = "string",
            Param = TRUE|FALSE
          )
        ),
        DynamoDB = list(
          list(
            Name = "string",
            Value = "string",
            Param = TRUE|FALSE
          )
        )
      )
    )
