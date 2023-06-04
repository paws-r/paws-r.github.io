<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize_describe_schema</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes a schema

### Description

Describes a schema. For more information on schemas, see
`create_schema`.

### Usage

    personalize_describe_schema(schemaArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="personalize_describe_schema_:_schemaArn">schemaArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the schema to
retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      schema = list(
        name = "string",
        schemaArn = "string",
        schema = "string",
        creationDateTime = as.POSIXct(
          "2015-01-01"
        ),
        lastUpdatedDateTime = as.POSIXct(
          "2015-01-01"
        ),
        domain = "ECOMMERCE"|"VIDEO_ON_DEMAND"
      )
    )

### Request syntax

    svc$describe_schema(
      schemaArn = "string"
    )
