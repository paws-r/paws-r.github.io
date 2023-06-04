<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_check_schema_version_validity</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Validates the supplied schema

### Description

Validates the supplied schema. This call has no side effects, it simply
validates using the supplied schema using `DataFormat` as the format.
Since it does not take a schema set name, no compatibility checks are
performed.

### Usage

    glue_check_schema_version_validity(DataFormat, SchemaDefinition)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_check_schema_version_validity_:_DataFormat">DataFormat</code></td>
<td><p>[required] The data format of the schema definition. Currently
<code>AVRO</code>, <code>JSON</code> and <code>PROTOBUF</code> are
supported.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_check_schema_version_validity_:_SchemaDefinition">SchemaDefinition</code></td>
<td><p>[required] The definition of the schema that has to be
validated.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Valid = TRUE|FALSE,
      Error = "string"
    )

### Request syntax

    svc$check_schema_version_validity(
      DataFormat = "AVRO"|"JSON"|"PROTOBUF",
      SchemaDefinition = "string"
    )
