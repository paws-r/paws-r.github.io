<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_put_entity_type</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates or updates an entity type

### Description

Creates or updates an entity type. An entity represents who is
performing the event. As part of a fraud prediction, you pass the entity
ID to indicate the specific entity who performed the event. An entity
type classifies the entity. Example classifications include customer,
merchant, or account.

### Usage

    frauddetector_put_entity_type(name, description, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="frauddetector_put_entity_type_:_name">name</code></td>
<td><p>[required] The name of the entity type.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_put_entity_type_:_description">description</code></td>
<td><p>The description.</p></td>
</tr>
<tr class="odd">
<td><code id="frauddetector_put_entity_type_:_tags">tags</code></td>
<td><p>A collection of key and value pairs.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_entity_type(
      name = "string",
      description = "string",
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )
