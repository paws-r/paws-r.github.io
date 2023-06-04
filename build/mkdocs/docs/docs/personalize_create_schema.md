<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize_create_schema</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an Amazon Personalize schema from the specified schema string

### Description

Creates an Amazon Personalize schema from the specified schema string.
The schema you create must be in Avro JSON format.

Amazon Personalize recognizes three schema variants. Each schema is
associated with a dataset type and has a set of required field and
keywords. If you are creating a schema for a dataset in a Domain dataset
group, you provide the domain of the Domain dataset group. You specify a
schema when you call `create_dataset`.

**Related APIs**

-   `list_schemas`

-   `describe_schema`

-   `delete_schema`

### Usage

    personalize_create_schema(name, schema, domain)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="personalize_create_schema_:_name">name</code></td>
<td><p>[required] The name for the schema.</p></td>
</tr>
<tr class="even">
<td><code id="personalize_create_schema_:_schema">schema</code></td>
<td><p>[required] A schema in Avro JSON format.</p></td>
</tr>
<tr class="odd">
<td><code id="personalize_create_schema_:_domain">domain</code></td>
<td><p>The domain for the schema. If you are creating a schema for a
dataset in a Domain dataset group, specify the domain you chose when you
created the Domain dataset group.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      schemaArn = "string"
    )

### Request syntax

    svc$create_schema(
      name = "string",
      schema = "string",
      domain = "ECOMMERCE"|"VIDEO_ON_DEMAND"
    )
